 




















 
 



 












 












 



 


 












 












 


 












































 

 











































































 



 












 












 



 
 




















 
 



 



 
 



 

























































 


 











 
 




















 
 



 



 
 



 


 









































































 


 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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




 
 



 
typedef uint8 Com_RxIPduCounterIdType;

typedef uint8 Com_RxIpduGroupIdType;

typedef uint8 Com_TxIpduGroupIdType;

typedef uint8 Com_RxSigTimeoutIdType;

typedef uint8 Com_RxSigGrpTimeoutIdType;

typedef uint8 Com_GwSourceDescriptionIdType;

typedef uint16 Com_RxSignalIdType;

typedef uint8 Com_RxSignalGroupIdType;

typedef uint8 Com_GwDestinationDescriptionIdType;

typedef uint8 Com_TxSignalIdType;

typedef uint8 Com_TxSignalGroupIdType;

typedef uint8 Com_TxIPduCounterIdType;

typedef uint8 Com_RxSignalInvalidIdType;

typedef uint8 Com_RxSignalFilterIdType;

typedef PduLengthType Com_SignalPositionType;

typedef uint8 Com_TxSignalInvalidIdType;

typedef uint8 Com_TxSignalFilterIdType;

typedef uint8 Com_TxSigErrAndNotifyIdType;

typedef uint8 Com_TxSignalTimeoutIdType;

typedef uint16 Com_RxGroupSignalIdType;

typedef uint8 Com_TxGroupSignalIdType;

typedef uint8 Com_TxSigGrpErrAndNotifyIdType;

typedef uint8 Com_TxSigGrpTimeoutIdType;

typedef uint8 Com_RxGrpSigFilterIdType;

typedef uint8 Com_TxGrpSigFilterIdType;

typedef uint8 Com_DestSignalFilterIdType;

typedef uint16 Com_RxIpduBufIdType;

typedef uint16 Com_TxIpduBufIdType;

typedef uint8 Com_SignalGroupArryIdType;

 
typedef enum
{
    COM_UNINIT = 0u,
    COM_INIT
} Com_StatusType;

 
typedef enum
{
    COM_BIG_ENDIAN = 0u,
    COM_LITTLE_ENDIAN,
    COM_OPAQUE
} Com_SignalEndiannessType;

 
typedef enum
{
    COM_BOOLEAN = 0u,
    COM_FLOAT32,
    COM_FLOAT64,
    COM_SINT16,
    COM_SINT32,
    COM_SINT64,
    COM_SINT8,
    COM_UINT16,
    COM_UINT32,
    COM_UINT64,
    COM_UINT8,
    COM_UINT8_DYN,
    COM_UINT8_N
} Com_SignalType;

 
typedef enum
{
    COM_PENDING = 0u,
    COM_TRIGGERED,
    COM_TRIGGERED_ON_CHANGE,
    COM_TRIGGERED_ON_CHANGE_WITHOUT_REPETITION,
    COM_TRIGGERED_WITHOUT_REPETITION,
    COM_GROUPSIGNAL_TMC_NONE
} Com_TransferPropertyType;

 
typedef enum
{
    COM_FILTER_NONE = 0u,
    COM_ALWAYS,
    COM_MASKED_NEW_DIFFERS_MASKED_OLD,
    COM_MASKED_NEW_DIFFERS_X,
    COM_MASKED_NEW_EQUALS_X,
    COM_NEVER,
    COM_NEW_IS_OUTSIDE,
    COM_NEW_IS_WITHIN,
    COM_ONE_EVERY_N
} Com_FilterAlgorithmType;

typedef enum
{
    COM_TX_MODE_DIRECT = 0u,
    COM_TX_MODE_DIRECT_WITHOUT_REPETITION,
    COM_TX_MODE_MIXED,
    COM_TX_MODE_MIXED_WITHOUT_REPETITION,
    COM_TX_MODE_NONE,
    COM_TX_MODE_PERIODIC
} Com_TxModeModeType;

typedef enum
{
    COM_CONFIRMATION = 0u,
    COM_TRANSMIT,
    COM_TRIGGER_TRANSMIT,
    COM_CLEAR_UP_UNUSED
} Com_TxIPduClearUpdateBitType;

typedef enum
{
    COM_DEFERRED = 0u,
    COM_IMMEDIATE
} Com_IPduSignalProcessingType;

typedef enum
{
    COM_PDU_NORMAL = 0u,
    COM_PDU_TP
} Com_IPduType;

typedef enum
{
    COM_INVALID_ACTION_NOTIFY = 0u,
    COM_INVALID_ACTION_REPLACE,
    COM_INVALID_ACTION_NONE
} Com_DataInvalidActionType;

typedef enum
{
    COM_TIMEOUT_ACTION_NONE = 0u,
    COM_TIMEOUT_ACTION_REPLACE,
    COM_TIMEOUT_ACTION_SUBSTITUTE
} Com_RxDataTimeoutActionType;

typedef enum
{
    COM_TX_SIGNAL = 0u,
    COM_TX_GROUP_SIGNAL,
    COM_TX_DESCRIPTION,
    COM_RX_SIGNAL,
    COM_RX_GROUP_SIGNAL,
    COM_RX_DESCRIPTION,
} Com_SignalConfigType;

 
typedef uint16 Com_SignalIdType;

 
typedef uint16 Com_SignalGroupIdType;

 
typedef uint16 Com_IpduGroupIdType;

typedef uint8 Com_MainFunctionType;

typedef uint8 Com_IpduGroupVector[((2u - 1u) / 8u) + 1u];

 
typedef struct
{
    void (*ComIPduCounterErrorNotification)
    (PduIdType ComPduId, uint8 ExpectedCounter, uint8 ReceivedCounter);
    uint32 ComIPduCounterStartPosition;
    uint8 ComIPduCounterSize;  
    uint8 ComIPduCounterThreshold;
    uint8 ComIPduMaxCounter;
} Com_IPduCounterType;

 
typedef struct
{
    uint8 ComIPduReplicationQuorum;
} Com_IPduReplicationType;

typedef struct
{
    Com_SignalIdType ComGwDestSignalId;
    Com_MainFunctionType ComMainFunctionId;
    Com_SignalConfigType ComGwDestSignalType;
} Com_GwDestType;

 
typedef struct
{
    Com_SignalIdType ComGwSourceSignalId;
    Com_SignalIdType ComGwDestSignalStartId;
    Com_SignalIdType ComGwDestNumber;
    Com_SignalConfigType ComGwSourceSignalType;
} Com_GwMappingType;

 
typedef struct
{
    uint16 ComSigLsbBytePos;
    uint16 ComSignalLength;
    uint16 ComGwIPduRef;
    uint16 GWSignalBufferId;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
} Com_GwSourceSignalType;

 

typedef uint64 Com_FilterMaskType;

typedef uint64 Com_FilterXType;

typedef struct
{
    Com_FilterMaskType ComFilterMask;
    Com_FilterXType ComFilterX;
} Com_FilterMaskNewDifEquXType;

typedef uint64 Com_FilterMaxType;
typedef uint64 Com_FilterMinType;

typedef struct
{
    Com_FilterMaxType ComFilterMax;
    Com_FilterMinType ComFilterMin;
} Com_FilterNewIsWithinOutsideType;

typedef struct
{
    Com_SignalIdType ComFilterOffset;
    Com_SignalIdType ComFilterPeriod;
} Com_FilterONEEVERYNType;

 
typedef struct
{
    uint16 ComGwIPduRef;
    uint16 ComSignalLength;
    uint16 ComSignalInitValueId;
    uint16 ComSignalDataInitValueLength;
    Com_SignalPositionType ComSigLsbBytePos;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_TransferPropertyType ComTransferProperty;
    Com_SignalType ComSignalType;
} Com_GwDestSignalType;

typedef void (*Com_RxTimeoutNotificationType)(void);
typedef void (*Com_RxInvalidNotificationType)(void);

typedef struct
{
    boolean (*ComIPduCallout)
    (PduIdType PduId, const PduInfoType * PduInfoPtr);
    PduLengthType IPduNoDynSignalLength;
    PduLengthType IPduMaxDynSignalLength;
    uint16 ComRxIPduDMFirstTimeout;
    uint16 ComRxIPduDMTimeout;
    Com_RxIpduBufIdType ComRxIPduBufIndex;
    Com_RxSignalIdType ComIpduSignalRefStartId;
    Com_RxSignalIdType ComIPduSignalsRefNumber;
    Com_RxIpduGroupIdType ComIPduGroupsRefStartId;
    Com_RxIpduGroupIdType ComIPduGroupsRefNumber;
    Com_RxSigTimeoutIdType ComIPduSignalsTimeoutRefStartId;
    Com_RxSigTimeoutIdType ComIPduSignalsTimeoutRefNumber;
    Com_RxSignalGroupIdType ComIPduSignalGroupsRefStartId;
    Com_RxSignalGroupIdType ComIPduSignalGroupsRefNumber;
    Com_RxSigGrpTimeoutIdType ComIPduSignalGroupsTimeoutRefStartId;
    Com_RxSigGrpTimeoutIdType ComIPduSignalGroupsTimeoutRefNumber;
    uint8 MetaDataLength;
    boolean ComIPduCancellationSupport;
    Com_IPduSignalProcessingType ComIPduSignalProcessing;
    Com_IPduType ComIPduType;
} Com_RxIPduType;

 
typedef uint8 Com_TxModeNumberOfRepetitionsType;
typedef uint16 Com_TxModeRepetitionPeriodType;
typedef uint16 Com_TxModeTimeOffsetType;
typedef uint16 Com_TxModeTimePeriodType;

typedef struct
{
    Com_TxModeTimeOffsetType ComTxModeTimeOffset;
    Com_TxModeTimePeriodType ComTxModeTimePeriod;
} Com_TxModePeriodType;

typedef struct
{
    Com_TxModeNumberOfRepetitionsType ComTxModeNumberOfRepetitions;
    Com_TxModeRepetitionPeriodType ComTxModeRepetitionPeriod;
} Com_TxModeDirectRepetitionsType;

typedef struct
{
    Com_TxModeTimeOffsetType ComTxModeTimeOffset;
    Com_TxModeTimePeriodType ComTxModeTimePeriod;
    Com_TxModeRepetitionPeriodType ComTxModeRepetitionPeriod;
    Com_TxModeNumberOfRepetitionsType ComTxModeNumberOfRepetitions;
} Com_TxModeMixedRepetitionsType;

typedef struct
{
    boolean (*ComIPduCallout)
    (PduIdType PduId, PduInfoType * PduInfoPtr);
    PduLengthType IPduNoDynSignalLength;
    PduLengthType IPduMaxDynSignalLength;
    uint16 ComTxIpduDM;
    uint16 ComMinimumDelayTime;
    Com_TxIpduBufIdType ComTxIPduBufIndex;
    PduIdType ComPduIdRef;
    PduIdType ComTxModeTrueRefId;
    PduIdType ComTxModeFalseRefId;
    Com_TxSignalIdType ComIpduSignalRefStartId;
    Com_TxSignalIdType ComIPduSignalsRefNumber;
    Com_TxSignalGroupIdType ComIPduSignalGroupsRefStartId;
    Com_TxSignalGroupIdType ComIPduSignalGroupsRefNumber;
    Com_TxIpduGroupIdType ComIPduGroupsRefStartId;
    Com_TxIpduGroupIdType ComIPduGroupsRefNumber;
    Com_TxModeModeType ComTxTrueModeMode;
    Com_TxModeModeType ComTxFalseModeMode;
    uint8 MetaDataLength;
    boolean ComIPduCancellationSupport;
    Com_IPduSignalProcessingType ComIPduSignalProcessing;
    Com_IPduType ComIPduType;
} Com_TxIPduType;

typedef struct
{
    void (*ComNotification)(void);
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 GWSignalBufferId;
    Com_SignalPositionType ComSigLsbBytePos;
    PduIdType ComIpduRefIndex;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalType ComSignalType;
    Com_SignalEndiannessType ComSignalEndianness;
} Com_RxSignalType;

typedef void (*Com_TxTimeoutNotificationType)(void);
typedef void (*Com_ErrorAndNotificationType)(void);
typedef uint8 Com_TxSignalNotifyType;

typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    Com_SignalPositionType ComSigLsbBytePos;
    PduIdType ComIpduRefIndex;
    Com_TxSigErrAndNotifyIdType ComTxSignalErrAndNotifyFncId;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    boolean ComInitialValueOnly;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
    Com_TransferPropertyType ComTransferProperty;
    Com_TxSignalNotifyType ComTxSignalNotificationType;
} Com_TxSignalType;

typedef struct
{
    uint16 ComIPduStartBufIndex;
    uint16 SignalGroupArrayLength;
} Com_SignalGroupArrayType;

typedef struct
{
    void (*ComNotification)(void);
    Com_RxGroupSignalIdType ComGroupSignalRefStartId;
    Com_RxGroupSignalIdType ComGroupSignalRefNumber;
    PduIdType ComIpduRefIndex;
} Com_RxSignalGroupType;

typedef struct
{
    Com_TxGroupSignalIdType ComGroupSignalRefStartId;
    Com_TxGroupSignalIdType ComGroupSignalRefNumber;
    PduIdType ComIpduRefIndex;
    Com_TxSigGrpErrAndNotifyIdType ComTxSigGrpErrAndNotifyFncId;
    Com_TxSignalNotifyType ComTxSignalNotificationType;
    boolean ComInitialValueOnly;
    Com_TransferPropertyType ComTransferProperty;
} Com_TxSignalGroupType;

typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 GWSignalBufferId;
    Com_SignalPositionType ComSigLsbBytePos;
    Com_RxSignalGroupIdType ComSignalGroupRef;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
} Com_RxGroupSignalType;
typedef struct
{
    uint16 ComSignalInitValueId;
    uint16 ComSignalLength;
    uint16 ComSignalDataInitValueLength;
    uint16 ComSignalDataInvalidValueLength;
    uint16 ComSignalInvalidBuffRefId;
    Com_SignalPositionType ComSigLsbBytePos;
    Com_TxSignalGroupIdType ComSignalGroupRef;
    uint8 ComSignalPosInByte;
    uint8 ComBitSize;
    uint8 ComSignalByteLength;
    Com_SignalEndiannessType ComSignalEndianness;
    Com_SignalType ComSignalType;
    Com_TransferPropertyType ComTransferProperty;
} Com_TxGroupSignalType;
typedef struct
{
    uint16 RxIpduLength;
    uint16 RxIpduBaseDMTimeout;
    PduLengthType RxOffset;
    





 
    uint8 RxIpduRTStFlag;
    uint8 RxIpduDMFlag;
} Com_RxIPduRunTimeStateType;

typedef struct
{
    uint16 TxIpduLength;
    uint16 RptNum;
    uint16 NTimeCnt;
    uint16 DMCnt;
    uint16 PeriodCnt;
    PduLengthType TxOffset;
    





 
    uint8 TxIpduRTStFlag;
    Com_TxModeModeType ipduTxMode;
} Com_TxIPduRunTimeStateType;

typedef struct
{
    uint16 DynamicSignalLength;
    


 
    uint8 TxSigGrpRTStFlag;
} Com_TxSignalGroupRunTimeStateType;

typedef struct
{
    const Com_RxIPduType* ComRxIPdu;
    const Com_TxIPduType* ComTxIPdu;
    const Com_RxSignalType* ComRxSignal;
    const Com_TxSignalType* ComTxSignal;
    const Com_RxSignalGroupType* ComRxSignalGroup;
    const Com_TxSignalGroupType* ComTxSignalGroup;
    const Com_RxGroupSignalType* ComRxGroupSignal;
    const Com_TxGroupSignalType* ComTxGroupSignal;
    const Com_GwMappingType* ComGwMapping;
    const Com_GwSourceSignalType* ComSourceSignal;
    const Com_GwDestSignalType* ComDestSignal;
    const uint16* MainFunctionRxRange;
    const uint16* MainFunctionTxRange;
    Com_SignalIdType ComTxSignalNum;
    Com_SignalIdType ComRxSignalNum;
    PduIdType ComTxPduNum;
    PduIdType ComRxPduNum;
    Com_SignalIdType ComTxGroupSignalNum;
    Com_SignalIdType ComRxGroupSignalNum;
    Com_SignalGroupIdType ComTxSignalGroupNum;
    Com_SignalGroupIdType ComRxSignalGroupNum;
    Com_IpduGroupIdType ComIpduGroupNum;
    Com_MainFunctionType MainFunctionRouteSignalsNum;
    Com_MainFunctionType MainFunctionRxNum;
    Com_MainFunctionType MainFunctionTxNum;
} Com_ConfigType;




 
 


 

 


 






 


 
 
extern const Com_ConfigType * Com_ConfigStd;
 
extern const Com_ConfigType Com_PBConfigData;


 

 










 
 
 











 
 
extern  void Com_Init(const Com_ConfigType * config);
 












 
 
extern  void Com_DeInit(void);

 











 
 
extern  void Com_IpduGroupControl(Com_IpduGroupVector ipduGroupVector, boolean initialize);
 










 
 
extern  void Com_ReceptionDMControl(Com_IpduGroupVector ipduGroupVector);
 









 
 
extern void Com_EnableReceptionDM(Com_IpduGroupIdType IpduGroupId);
 









 
 
extern void Com_DisableReceptionDM(Com_IpduGroupIdType IpduGroupId);
 











 
 
extern  Com_StatusType Com_GetStatus(void);

 









 
 
extern  void Com_ClearIpduGroupVector(Com_IpduGroupVector ipduGroupVector);
 










 
 
extern  void
    Com_SetIpduGroup(Com_IpduGroupVector ipduGroupVector, Com_IpduGroupIdType ipduGroupId, boolean bitval);
 















 
 
extern  uint8
    Com_SendSignal(Com_SignalIdType SignalId, const void * SignalDataPtr);
 
















 
 
extern  uint8
    Com_SendDynSignal(Com_SignalIdType SignalId, const void * SignalDataPtr, uint16 Length);
 










 
 
extern  uint8
    Com_ReceiveSignal(Com_SignalIdType SignalId, void * SignalDataPtr);
 

















 
 
extern  uint8 Com_ReceiveDynSignal(
    Com_SignalIdType SignalId,
    void * SignalDataPtr,
    uint16 * Length);
 














 
 
extern  uint8 Com_SendSignalGroup(Com_SignalGroupIdType SignalGroupId);
 














 
 
extern  uint8 Com_ReceiveSignalGroup(Com_SignalGroupIdType SignalGroupId);
 















 
 
 











 
 
 














 
 
extern  uint8 Com_InvalidateSignal(Com_SignalIdType SignalId);
 















 
 
extern  uint8 Com_InvalidateSignalGroup(Com_SignalGroupIdType SignalGroupId);
 











 
 
extern  Std_ReturnType Com_TriggerIPDUSend(PduIdType PduId);
 















 
 
extern Std_ReturnType Com_TriggerIPDUSendWithMetaData(PduIdType PduId, uint8* MetaData);

 











 
 
extern  void Com_SwitchIpduTxMode(PduIdType PduId, boolean Mode);
 











 
 
extern void Com_MainFunctionRx(Com_MainFunctionType mainFunctionId);
 










 
 
extern void Com_MainFunctionTx(Com_MainFunctionType mainFunctionId);
 









 
 
extern void Com_MainFunctionRouteSignals(Com_MainFunctionType mainFunctionId);




 
 




















 
 



 












 












 


 



























 

 































 


 












 












 



 
 




















 
 




 
 




















 
 




 



 



 











 




 




 














 




 
 

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








extern void Com_MainFunctionRx_ComMainFunctionRx(void);
extern void Com_MainFunctionTx_ComMainFunctionTx(void);


 
extern void SchM_Enter_Com_MultiCore_Lock(void);
extern void SchM_Exit_Com_MultiCore_Lock(void);
 
extern void SchM_Enter_Com_Context(void);
extern void SchM_Exit_Com_Context(void);















 
 



 


 



 
 

extern boolean Com_IpduGroupDMEnable[2u];
extern boolean Com_IpduGroupEnable[2u];

 
extern Com_RxIPduRunTimeStateType Com_RxIPduRunTimeState[118u];
extern const Com_RxIPduRunTimeStateType Com_RxIPduInitState[118u];

extern Com_TxIPduRunTimeStateType Com_TxIPduRunTimeState[44u];
extern const Com_TxIPduRunTimeStateType Com_TxIPduInitState[44u];

extern const Com_RxIpduGroupIdType Com_RxIPduGroupsRef[118u];



extern const uint16 Com_RxSignalFirstTimeoutVal[6u];
extern const uint16 Com_RxSignalTimeoutVal[6u];
extern const Com_SignalIdType Com_TimeoutRxSignalRef[6u];
extern const Com_RxDataTimeoutActionType Com_RxSignalDataTimeoutActionCfg[6u];
extern const Com_RxTimeoutNotificationType Com_RxSignalTimeoutNotificationCfg[6u];

extern const uint16 Com_RxSigGrpFirstTimeoutVal[1u];
extern const uint16 Com_RxSigGrpTimeoutVal[1u];
extern const Com_RxSignalGroupIdType Com_TimeoutRxSigGrpRef[1u];
extern const Com_RxDataTimeoutActionType Com_RxSigGrpDataTimeoutActionCfg[1u];
extern const Com_RxTimeoutNotificationType Com_RxSigGrpTimeoutNotificationCfg[1u];

extern const Com_TxIpduGroupIdType Com_TxIPduGroupsRef[43u];

extern const Com_TxModePeriodType
    Com_TxModeTruePeriod[30u + 0u];
extern const Com_TxModeDirectRepetitionsType
    Com_TxModeTrueDirectRepetitions[12u];




extern const Com_ErrorAndNotificationType
    Com_TxSignalErrorAndNotification[240u];




extern const Com_ErrorAndNotificationType
    Com_TxSignalGroupErrorAndNotification[8u];




extern uint8 Com_TxIPduRuntimeBuff[542u];
extern const uint8 Com_TxIPduInitValue[542u];

extern uint8 Com_RxIPduRuntimeBuff[1365u];
extern const uint8 Com_RxIPduInitValue[1365u];

extern boolean Com_SignalBoolRuntimeBuff[336u];
extern const boolean Com_SignalBoolInitValue[336u];

extern uint8 Com_Signal8BitRuntimeBuff[817u];
extern const uint8 Com_Signal8BitInitValue[817u];

extern uint16 Com_Signal16BitRuntimeBuff[102u];
extern const uint16 Com_Signal16BitInitValue[102u];

extern uint32 Com_Signal32BitRuntimeBuff[49u];
extern const uint32 Com_Signal32BitInitValue[49u];

extern uint64 Com_Signal64BitRuntimeBuff[26u];
extern const uint64 Com_Signal64BitInitValue[26u];

extern boolean Com_RxGroupSignalBoolShadowBuff[187u];

extern uint8 Com_RxGroupSignal8BitShadowBuff[378u];

extern uint16 Com_RxGroupSignal16BitShadowBuff[23u];

extern uint32 Com_RxGroupSignal32BitShadowBuff[2u];










extern const uint8 Com_Signal8BitInvalidValue[1u];

extern const uint16 Com_Signal16BitInvalidValue[3u];



extern Com_TxSignalGroupRunTimeStateType Com_TxSignalGroupState[8u];

extern uint16 Com_RxSignalTimeOutCnt[6u];

extern uint16 Com_RxSignalGroupTimeOutCnt[1u];









 



 

 
extern  void
    Com_InitSignalBuffer(Com_SignalType SignalType, uint16 SignalInitValueId, uint16 SignalLength);


 
extern  uint64 Com_SignalUnPackHandle(
    Com_SignalType SignalType,
    Com_SignalConfigType SignalConfigType,
    const void* SignalPtr,
    const uint8* IPduBufferPtr);

 
extern  void Com_TxSignalPackHandle(
    Com_SignalConfigType SignalConfigType,
    const void* TxSignalPtr,
    uint64 TxValue,
    uint8* IPduBufferPtr);

 

 


 
extern  void
    Com_TxIpduTMSHandle(Com_TxIPduRunTimeStateType* TxIpduStatePtr, const Com_TxIPduType* TxIpduPtr, uint16* RptNum);

 


 


 

 


 
extern  void Com_TxSignalTMCStateInit(void);


 
extern  void Com_TxSignalGroupTriggerFlagInit(void);

 
extern  void Com_TxIpduController(boolean initialize);


 

 
extern  void Com_ConfirmationProcess(const Com_TxIPduType* TxIpduPtr);
 


 

 
extern  void Com_RxIpduController(boolean initialize);

 


 



 
 
extern  uint8
    Com_SendSignalHandle(Com_SignalIdType SignalId, const void * SignalDataPtr);
 
extern  uint8 Com_SendDynSignalHandle(
    Com_SignalIdType SignalId,
    const void * SignalDataPtr,
    uint16 Length);
 
extern  uint8 Com_SendSignalGroupHandle(Com_SignalGroupIdType SignalGroupId);
 
extern  uint8 Com_InvalidateSignalHandle(Com_SignalIdType SignalId);
 
extern  uint8 Com_InvalidateSignalGroupHandle(Com_SignalGroupIdType SignalGroupId);

 
extern  Std_ReturnType Com_TriggerIPDUSendHandle(PduIdType PduId);
 
 
 
extern void Com_MainFunctionTxHandle(Com_MainFunctionType mainFunctionId);
 
extern  Std_ReturnType
    Com_TriggerTransmitHandle(PduIdType TxPduId, PduInfoType * PduInfoPtr);
 
extern  void Com_TxConfirmationHandle(PduIdType TxPduId);
 


 

 
extern  uint8
    Com_ReceiveGroupSignalHandle(Com_SignalIdType SignalId, void * SignalDataPtr);

 
extern  uint8
    Com_ReceiveSignalHandle(Com_SignalIdType SignalId, void * SignalDataPtr);

 
extern  void Com_ReceiveSignalGroupHandle(PduIdType RxPduId, Com_SignalGroupIdType SignalGroupId);

 

 
extern  void
    Com_RxIndicationHandle(PduIdType RxPduId, const PduInfoType * PduInfoPtr);
 
 
extern void Com_MainFunctionRxHandle(Com_MainFunctionType mainFunctionId);


 
 
 
extern  void Com_RxPduDMCtrHandle(void);



 

 




















 
 

   


boolean IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57(PduIdType PduId, PduInfoType* PduInfoPtr);

boolean SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

boolean DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx(PduIdType PduId, const PduInfoType* PduInfoPtr);

void Rte_COMCbkTAck_IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbk_IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkTAck_IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbkTAck_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx(void);

void Rte_COMCbk_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbkRxTOut_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx(void);

void Rte_COMCbk_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx(void);



 



 


 



 



 
   
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
uint8 Com_TxIPduRuntimeBuff[542u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint8 Com_TxIPduInitValue[542u] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
uint8 Com_RxIPduRuntimeBuff[1365u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint8 Com_RxIPduInitValue[1365u]= {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
boolean Com_SignalBoolRuntimeBuff[336u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section



 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const boolean Com_SignalBoolInitValue[336u] = {
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u,
     
    0u
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
uint8 Com_Signal8BitRuntimeBuff[817u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint8 Com_Signal8BitInitValue[817u] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
uint16 Com_Signal16BitRuntimeBuff[102u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint16 Com_Signal16BitInitValue[102u] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
uint32 Com_Signal32BitRuntimeBuff[49u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint32 Com_Signal32BitInitValue[49u] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
uint64 Com_Signal64BitRuntimeBuff[26u];












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint64 Com_Signal64BitInitValue[26u] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
boolean Com_RxGroupSignalBoolShadowBuff[187u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section



 



 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
uint8 Com_RxGroupSignal8BitShadowBuff[378u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
uint16 Com_RxGroupSignal16BitShadowBuff[23u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
uint32 Com_RxGroupSignal32BitShadowBuff[2u];












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint8 Com_Signal8BitInvalidValue[1u] = {
    0x00
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint16 Com_Signal16BitInvalidValue[3u] = {
    0x0,
    0x0,
    0x0
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Com_RxIPduRunTimeStateType Com_RxIPduRunTimeState[118u];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxIPduRunTimeStateType Com_RxIPduInitState[118u]=
{
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        48u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        48u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        24u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        32u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        12u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        5u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        16u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        20u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        64u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
    {
         
        8u,
        0u,
        0u,

        0u,
        0u,

    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
Com_TxIPduRunTimeStateType Com_TxIPduRunTimeState[44u];












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_TxIPduRunTimeStateType Com_TxIPduInitState[44u]=
{
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        20u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        32u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        16u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        12u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        32u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT_WITHOUT_REPETITION,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        16u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        48u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        48u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_DIRECT,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        6u,

        0u,
        0u,
        0u,
        1u,
        0u,

        5u,
        COM_TX_MODE_NONE,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        24u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        8u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
    {
         
        24u,

        0u,
        0u,
        0u,
        1u,
        0u,

        4u,
        COM_TX_MODE_PERIODIC,
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint16 Com_RxSignalFirstTimeoutVal[6u] =
{
      
    100u,
      
    100u,
      
    200u,
      
    200u,
      
    200u,
      
    1000u,};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint16 Com_RxSignalTimeoutVal[6u] =
{
      
    100u,
      
    100u,
      
    200u,
      
    200u,
      
    200u,
      
    1000u,};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_SignalIdType Com_TimeoutRxSignalRef[6u] =
{
     
    109u,
     
    110u,
     
    222u,
     
    223u,
     
    224u,
     
    379u,};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxDataTimeoutActionType Com_RxSignalDataTimeoutActionCfg[6u] =
{
     
    COM_TIMEOUT_ACTION_NONE,
     
    COM_TIMEOUT_ACTION_NONE,
     
    COM_TIMEOUT_ACTION_NONE,
     
    COM_TIMEOUT_ACTION_NONE,
     
    COM_TIMEOUT_ACTION_NONE,
     
    COM_TIMEOUT_ACTION_NONE,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxTimeoutNotificationType Com_RxSignalTimeoutNotificationCfg[6u] =
{
     

    &Rte_COMCbkRxTOut_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,
     

    &Rte_COMCbkRxTOut_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,
     

    &Rte_COMCbkRxTOut_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,
     

    &Rte_COMCbkRxTOut_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,
     

    &Rte_COMCbkRxTOut_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,
     

    &Rte_COMCbkRxTOut_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint16 Com_RxSigGrpFirstTimeoutVal[1u] =
{
 
400u,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const uint16 Com_RxSigGrpTimeoutVal[1u] =
{
 
20u,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxSignalGroupIdType Com_TimeoutRxSigGrpRef[1u] =
{
     
    16u,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxDataTimeoutActionType Com_RxSigGrpDataTimeoutActionCfg[1u] =
{
 
    COM_TIMEOUT_ACTION_NONE,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxTimeoutNotificationType Com_RxSigGrpTimeoutNotificationCfg[1u] =
{
     
    &Rte_COMCbkRxTOut_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_RxIPduType Com_RxIPdu[118u]=
{
    {
         

        &SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        0u,  

        0u,  
        2u,

        0u,  
        1u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,   
        48u,  
        0u,  
        0u,  

        0u,  

        8u,  

        2u,  
        12u,

        1u,  
        2u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,   
        48u,  
        0u,  
        0u,  

        0u,  

        56u,  

        12u,  
        22u,

        2u,  
        3u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        104u,  

        22u,  
        24u,

        3u,  
        4u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        112u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        4u,  
        5u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        0u,  
        1u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        120u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        5u,  
        6u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        1u,  
        2u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        128u,  

        24u,  
        25u,

        6u,  
        7u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        136u,  

        25u,  
        26u,

        7u,  
        8u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        144u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        8u,  
        9u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        2u,  
        3u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        152u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        9u,  
        10u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        3u,  
        4u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        160u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        10u,  
        11u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        4u,  
        5u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        168u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        11u,  
        12u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        5u,  
        6u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        176u,  

        26u,  
        29u,

        12u,  
        13u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        192u,  

        29u,  
        30u,

        13u,  
        14u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        200u,  

        30u,  
        42u,

        14u,  
        15u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        208u,  

        42u,  
        64u,

        15u,  
        16u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_CONTROLLER_0_IAM_Rx,   
        12u,  
        0u,  
        0u,  

        0u,  

        224u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        16u,  
        17u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        6u,  
        7u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        236u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        17u,  
        18u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        7u,  
        8u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        244u,  

        64u,  
        71u,

        18u,  
        19u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        252u,  

        71u,  
        72u,

        19u,  
        20u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx,   
        12u,  
        0u,  
        0u,  

        0u,  

        260u,  

        72u,  
        73u,

        20u,  
        21u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        272u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        21u,  
        22u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        8u,  
        9u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        280u,  

        73u,  
        103u,

        22u,  
        23u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        288u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        23u,  
        24u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        9u,  
        10u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        296u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        24u,  
        25u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        10u,  
        11u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        304u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        25u,  
        26u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        11u,  
        12u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        312u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        26u,  
        27u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        12u,  
        13u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        320u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        27u,  
        28u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        13u,  
        14u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        328u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        28u,  
        29u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        14u,  
        15u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        336u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        29u,  
        30u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        15u,  
        16u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        344u,  

        103u,  
        109u,

        30u,  
        31u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        400u,  

        20u,  

        352u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        31u,  
        32u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        16u,  
        17u,

        0u,  
        1u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        100u,  

        100u,  

        360u,  

        109u,  
        111u,

        32u,  
        33u,

        0u,  
        2u,

        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        376u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        33u,  
        34u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        17u,  
        18u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        384u,  

        111u,  
        112u,

        34u,  
        35u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        392u,  

        112u,  
        116u,

        35u,  
        36u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        400u,  

        116u,  
        125u,

        36u,  
        37u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        408u,  

        125u,  
        134u,

        37u,  
        38u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        416u,  

        134u,  
        143u,

        38u,  
        39u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        424u,  

        143u,  
        156u,

        39u,  
        40u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        432u,  

        156u,  
        169u,

        40u,  
        41u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        440u,  

        169u,  
        175u,

        41u,  
        42u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        448u,  

        175u,  
        177u,

        42u,  
        43u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        456u,  

        177u,  
        178u,

        43u,  
        44u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        464u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        44u,  
        45u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        18u,  
        19u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        484u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        45u,  
        46u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        19u,  
        20u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        492u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        46u,  
        47u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        20u,  
        21u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        500u,  

        178u,  
        186u,

        47u,  
        48u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        516u,  

        186u,  
        187u,

        48u,  
        49u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        524u,  

        187u,  
        188u,

        49u,  
        50u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,   
        32u,  
        0u,  
        0u,  

        0u,  

        532u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        50u,  
        51u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        21u,  
        22u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx,   
        32u,  
        0u,  
        0u,  

        0u,  

        564u,  

        188u,  
        189u,

        51u,  
        52u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        596u,  

        189u,  
        190u,

        52u,  
        53u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        604u,  

        190u,  
        193u,

        53u,  
        54u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        612u,  

        193u,  
        200u,

        54u,  
        55u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        620u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        55u,  
        56u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        22u,  
        23u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        628u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        56u,  
        57u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        23u,  
        24u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        636u,  

        200u,  
        203u,

        57u,  
        58u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        644u,  

        203u,  
        205u,

        58u,  
        59u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        664u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        59u,  
        60u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        24u,  
        25u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        672u,  

        205u,  
        212u,

        60u,  
        61u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        680u,  

        212u,  
        216u,

        61u,  
        62u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        688u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        62u,  
        63u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        25u,  
        26u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        696u,  

        216u,  
        222u,

        63u,  
        64u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        200u,  

        200u,  

        704u,  

        222u,  
        225u,

        64u,  
        65u,

        2u,  
        5u,

        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        712u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        65u,  
        66u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        26u,  
        27u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        720u,  

        225u,  
        229u,

        66u,  
        67u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        728u,  

        229u,  
        230u,

        67u,  
        68u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        736u,  

        230u,  
        231u,

        68u,  
        69u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        744u,  

        231u,  
        236u,

        69u,  
        70u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        752u,  

        236u,  
        240u,

        70u,  
        71u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        760u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        71u,  
        72u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        27u,  
        28u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        768u,  

        240u,  
        241u,

        72u,  
        73u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        784u,  

        241u,  
        247u,

        73u,  
        74u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,   
        24u,  
        0u,  
        0u,  

        0u,  

        800u,  

        247u,  
        256u,

        74u,  
        75u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        824u,  

        256u,  
        257u,

        75u,  
        76u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        832u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        76u,  
        77u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        28u,  
        29u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        840u,  

        257u,  
        259u,

        77u,  
        78u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        848u,  

        259u,  
        260u,

        78u,  
        79u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        868u,  

        260u,  
        263u,

        79u,  
        80u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        876u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        80u,  
        81u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        29u,  
        30u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        884u,  

        263u,  
        269u,

        81u,  
        82u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        892u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        82u,  
        83u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        30u,  
        31u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        900u,  

        269u,  
        270u,

        83u,  
        84u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,   
        32u,  
        0u,  
        0u,  

        0u,  

        908u,  

        270u,  
        307u,

        84u,  
        85u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        940u,  

        307u,  
        308u,

        85u,  
        86u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        948u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        86u,  
        87u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        31u,  
        32u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        956u,  

        308u,  
        321u,

        87u,  
        88u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        976u,  

        321u,  
        329u,

        88u,  
        89u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        984u,  

        329u,  
        332u,

        89u,  
        90u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx,   
        32u,  
        0u,  
        0u,  

        0u,  

        992u,  

        332u,  
        334u,

        90u,  
        91u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1024u,  

        334u,  
        336u,

        91u,  
        92u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1032u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        92u,  
        93u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        32u,  
        33u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,   
        12u,  
        0u,  
        0u,  

        0u,  

        1040u,  

        336u,  
        338u,

        93u,  
        94u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1052u,  

        338u,  
        342u,

        94u,  
        95u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1060u,  

        (Com_RxSignalIdType)(~(Com_RxSignalIdType)0),0u,

        95u,  
        96u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,

        33u,  
        34u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        1068u,  

        342u,  
        359u,

        96u,  
        97u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1088u,  

        359u,  
        361u,

        97u,  
        98u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1096u,  

        361u,  
        363u,

        98u,  
        99u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1104u,  

        363u,  
        367u,

        99u,  
        100u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1112u,  

        367u,  
        372u,

        100u,  
        101u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1120u,  

        372u,  
        378u,

        101u,  
        102u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        1128u,  

        378u,  
        379u,

        102u,  
        103u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,   
        5u,  
        0u,  
        1000u,  

        1000u,  

        1144u,  

        379u,  
        380u,

        103u,  
        104u,

        5u,  
        6u,

        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        1149u,  

        380u,  
        381u,

        104u,  
        105u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1165u,  

        381u,  
        383u,

        105u,  
        106u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1173u,  

        383u,  
        385u,

        106u,  
        107u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        1181u,  

        385u,  
        387u,

        107u,  
        108u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,   
        16u,  
        0u,  
        0u,  

        0u,  

        1197u,  

        387u,  
        402u,

        108u,  
        109u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        1213u,  

        402u,  
        427u,

        109u,  
        110u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1233u,  

        427u,  
        428u,

        110u,  
        111u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx,   
        20u,  
        0u,  
        0u,  

        0u,  

        1241u,  

        428u,  
        430u,

        111u,  
        112u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1261u,  

        430u,  
        431u,

        112u,  
        113u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,   
        64u,  
        0u,  
        0u,  

        0u,  

        1269u,  

        431u,  
        439u,

        113u,  
        114u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1333u,  

        439u,  
        440u,

        114u,  
        115u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1341u,  

        440u,  
        441u,

        115u,  
        116u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1349u,  

        441u,  
        442u,

        116u,  
        117u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {
         

        &DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx,   
        8u,  
        0u,  
        0u,  

        0u,  

        1357u,  

        442u,  
        443u,

        117u,  
        118u,

        (Com_RxSigTimeoutIdType)(~(Com_RxSigTimeoutIdType)0),0u,
        (Com_RxSignalGroupIdType)(~(Com_RxSignalGroupIdType)0),0u,

        (Com_RxSigGrpTimeoutIdType)(~(Com_RxSigGrpTimeoutIdType)0),0u,

        0u,
        0u,
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_RxIpduGroupIdType Com_RxIPduGroupsRef[118u] =
{

    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
    0u,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_TxIpduGroupIdType Com_TxIPduGroupsRef[43u] =
{

    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
    1u,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_TxModePeriodType Com_TxModeTruePeriod[] =
{
     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    40u,
    },

     
    {1u,
    40u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    4u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    200u,
    },

     
    {1u,
    4u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

     
    {1u,
    20u,
    },

};

const Com_TxModeDirectRepetitionsType Com_TxModeTrueDirectRepetitions[] =
{
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    30u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
    {
     
    4u,
    10u,
    },
};













 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_TxIPduType Com_TxIPdu[44u]=
{
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        0u,  
        0u,  
        0u,  
        (0xFFFFu),  
        0u,  
        1u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        0u,  
        1u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        8u,  
        1u,  
        0u,  
        (0xFFFFu),  
        1u,  
        9u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        1u,  
        2u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        16u,  
        2u,  
        1u,  
        (0xFFFFu),  
        9u,  
        17u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        2u,  
        3u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        24u,  
        3u,  
        2u,  
        (0xFFFFu),  
        17u,  
        25u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        3u,  
        4u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        32u,  
        4u,  
        3u,  
        (0xFFFFu),  
        25u,  
        33u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        4u,  
        5u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        40u,  
        5u,  
        4u,  
        (0xFFFFu),  
        33u,  
        41u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        5u,  
        6u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        48u,  
        6u,  
        5u,  
        (0xFFFFu),  
        41u,  
        43u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        6u,  
        7u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        56u,  
        7u,  
        6u,  
        (0xFFFFu),  
        43u,  
        51u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        7u,  
        8u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,  

        8u,   
        0u,   
        0u,  
        0u,  

        64u,  
        8u,  
        7u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       0u,  
       1u,

        8u,  
        9u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        72u,  
        9u,  
        8u,  
        (0xFFFFu),  
        51u,  
        58u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        9u,  
        10u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        80u,  
        10u,  
        9u,  
        (0xFFFFu),  
        58u,  
        65u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        10u,  
        11u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        20u,   
        0u,   
        0u,  
        0u,  

        88u,  
        11u,  
        1u,  
        (0xFFFFu),  
        65u,  
        67u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        11u,  
        12u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        108u,  
        12u,  
        2u,  
        (0xFFFFu),  
        67u,  
        69u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        12u,  
        13u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        32u,   
        0u,   
        0u,  
        0u,  

        116u,  
        13u,  
        10u,  
        (0xFFFFu),  
        69u,  
        84u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        13u,  
        14u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        16u,   
        0u,   
        0u,  
        0u,  

        148u,  
        14u,  
        3u,  
        (0xFFFFu),  
        84u,  
        86u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        14u,  
        15u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        12u,   
        0u,   
        0u,  
        0u,  

        164u,  
        15u,  
        4u,  
        (0xFFFFu),  
        86u,  
        90u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        15u,  
        16u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        32u,   
        0u,   
        0u,  
        0u,  

        176u,  
        16u,  
        5u,  
        (0xFFFFu),  
        90u,  
        132u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        16u,  
        17u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        208u,  
        17u,  
        6u,  
        (0xFFFFu),  
        132u,  
        134u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        17u,  
        18u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        216u,  
        18u,  
        7u,  
        (0xFFFFu),  
        134u,  
        135u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        18u,  
        19u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,  

        8u,   
        0u,   
        0u,  
        0u,  

        224u,  
        19u,  
        8u,  
        (0xFFFFu),  
        135u,  
        136u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        19u,  
        20u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        232u,  
        20u,  
        (0xFFFFu),  
        (0xFFFFu),  
        136u,  
        144u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        20u,  
        21u,

        COM_TX_MODE_DIRECT_WITHOUT_REPETITION,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,  

        8u,   
        0u,   
        0u,  
        0u,  

        240u,  
        21u,  
        11u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       1u,  
       2u,

        21u,  
        22u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        248u,  
        22u,  
        12u,  
        (0xFFFFu),  
        144u,  
        145u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        22u,  
        23u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        256u,  
        23u,  
        13u,  
        (0xFFFFu),  
        145u,  
        153u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        23u,  
        24u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        264u,  
        24u,  
        14u,  
        (0xFFFFu),  
        153u,  
        161u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        24u,  
        25u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        272u,  
        25u,  
        15u,  
        (0xFFFFu),  
        161u,  
        169u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        25u,  
        26u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        280u,  
        26u,  
        16u,  
        (0xFFFFu),  
        169u,  
        177u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        26u,  
        27u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        16u,   
        0u,   
        0u,  
        0u,  

        288u,  
        27u,  
        9u,  
        (0xFFFFu),  
        177u,  
        180u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        27u,  
        28u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        48u,   
        0u,   
        0u,  
        0u,  

        304u,  
        28u,  
        10u,  
        (0xFFFFu),  
        180u,  
        190u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        28u,  
        29u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        48u,   
        0u,   
        0u,  
        0u,  

        352u,  
        29u,  
        11u,  
        (0xFFFFu),  
        190u,  
        200u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        29u,  
        30u,

        COM_TX_MODE_DIRECT,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        8u,   
        0u,   
        0u,  
        0u,  

        400u,  
        30u,  
        17u,  
        (0xFFFFu),  
        200u,  
        202u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        30u,  
        31u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu13,  

        8u,   
        0u,   
        0u,  
        0u,  

        408u,  
        158u,  
        18u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       2u,  
       3u,

        31u,  
        32u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU06,  

        8u,   
        0u,   
        0u,  
        0u,  

        416u,  
        154u,  
        19u,  
        (0xFFFFu),  
        202u,  
        206u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        32u,  
        33u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu03,  

        8u,   
        0u,   
        0u,  
        0u,  

        424u,  
        164u,  
        20u,  
        (0xFFFFu),  
        206u,  
        212u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        33u,  
        34u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    ((void *)0),  

        6u,   
        0u,   
        0u,  
        0u,  

        432u,  
        152u,  
        (0xFFFFu),  
        (0xFFFFu),  
        212u,  
        216u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        (Com_TxIpduGroupIdType)(~(Com_TxIpduGroupIdType)0),0u,

        COM_TX_MODE_NONE,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU07,  

        8u,   
        0u,   
        0u,  
        0u,  

        438u,  
        155u,  
        21u,  
        (0xFFFFu),  
        216u,  
        221u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        34u,  
        35u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx_PDU08,  

        24u,   
        0u,   
        0u,  
        0u,  

        446u,  
        156u,  
        22u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       3u,  
       4u,

        35u,  
        36u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu34,  

        8u,   
        0u,   
        0u,  
        0u,  

        470u,  
        159u,  
        23u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       4u,  
       5u,

        36u,  
        37u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu35,  

        8u,   
        0u,   
        0u,  
        0u,  

        478u,  
        160u,  
        24u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       5u,  
       6u,

        37u,  
        38u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu39,  

        8u,   
        0u,   
        0u,  
        0u,  

        486u,  
        161u,  
        25u,  
        (0xFFFFu),  
        221u,  
        223u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        38u,  
        39u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx_Pdu40,  

        8u,   
        0u,   
        0u,  
        0u,  

        494u,  
        162u,  
        26u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       6u,  
       7u,

        39u,  
        40u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu04,  

        8u,   
        0u,   
        0u,  
        0u,  

        502u,  
        165u,  
        27u,  
        (0xFFFFu),  
        223u,  
        228u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        40u,  
        41u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu41,  

        8u,   
        0u,   
        0u,  
        0u,  

        510u,  
        166u,  
        28u,  
        (0xFFFFu),  
        228u,  
        240u,

       (Com_TxSignalGroupIdType)(~(Com_TxSignalGroupIdType)0),0u,

        41u,  
        42u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
    {    &IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx_Pdu57,  

        24u,   
        0u,   
        0u,  
        0u,  

        518u,  
        167u,  
        29u,  
        (0xFFFFu),  
        (Com_TxSignalIdType)(~(Com_TxSignalIdType)0),0u,

       7u,  
       8u,

        42u,  
        43u,

        COM_TX_MODE_PERIODIC,  
        COM_TX_MODE_NONE,  
        0u,  

        0u,  

         
        COM_DEFERRED,
        COM_PDU_NORMAL,
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_RxSignalType Com_RxSignal[443u]=
{
    {
         
        &Rte_COMCbk_IMaxLatDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx,  

        541u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        0u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IMaxLongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS14_CONTROLLER_0_IAM_Rx,  

        542u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        0u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        27u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP1_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        28u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        29u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP2_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        30u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        31u,  
        0u,  
        0u,  
        (0xFFFFu),  

        19u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP3_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        32u,  
        0u,  
        0u,  
        (0xFFFFu),  

        23u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        33u,  
        0u,  
        0u,  
        (0xFFFFu),  

        27u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP4_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        34u,  
        0u,  
        0u,  
        (0xFFFFu),  

        31u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        35u,  
        0u,  
        0u,  
        (0xFFFFu),  

        35u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP5_ICBAD_BKPCANFD_Event_FrS04_CONTROLLER_0_IAM_Rx,  

        36u,  
        0u,  
        0u,  
        (0xFFFFu),  

        39u,  

        1u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        37u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP6_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        38u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        39u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP7_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        40u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        41u,  
        0u,  
        0u,  
        (0xFFFFu),  

        19u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP8_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        42u,  
        0u,  
        0u,  
        (0xFFFFu),  

        23u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        43u,  
        0u,  
        0u,  
        (0xFFFFu),  

        27u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP9_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        44u,  
        0u,  
        0u,  
        (0xFFFFu),  

        31u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLatdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        45u,  
        0u,  
        0u,  
        (0xFFFFu),  

        35u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIECUPlnngPathLongdP10_ICBAD_BKPCANFD_Event_FrS05_CONTROLLER_0_IAM_Rx,  

        46u,  
        0u,  
        0u,  
        (0xFFFFu),  

        39u,  

        2u,   

        0u,  
        32u,  
        4u,  
        COM_UINT32,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITripCntResetReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx,  

        200u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        3u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IComKeyEnbReq_ICBVC_SecOC_ComKeyReq_CONTROLLER_0_IAM_Rx,  

        201u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        3u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigFICM_ICM_INFOCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        3u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        6u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigAMP_AMP_INFOCAN_EvtInfo_CONTROLLER_0_IAM_Rx,  

        4u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        7u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMInvtrVolV_PEU_RZCUCANFD_CONN_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx,  

        202u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        12u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMInvtrCrntV_PEU_RZCUCANFD_CON_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx,  

        203u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        12u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMInvtrVol_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_10ms_FrP04_SigGWtoCO_CONTROLLER_0_IAM_Rx,  

        55u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        12u,   

        6u,  
        10u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigDLP_DLP_BDCAN_EvtInfo_CONTROLLER_0_IAM_Rx,  

        5u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        13u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_CRC_RZCUCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        543u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        14u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_RC_RZCUCAN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        544u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        14u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMSta_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        545u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        14u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMSpd_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        56u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        14u,   

        0u,  
        16u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMActuToq_PEU_RZCUCANFD_CONNCA_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        57u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        14u,   

        0u,  
        11u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMActuToqV_PEU_RZCUCANFD_CONNC_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        204u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        14u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMDmpngCtrlA_PEU_RZCUCANFD_CON_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        205u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        14u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved1__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        546u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        14u,   

        5u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMSpdV_PEU_RZCUCANFD_CONNCANFD_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        206u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        14u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved2__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        547u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        14u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMFltLvlSts_PEU_RZCUCANFD_CONN_PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        548u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        14u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_ZONE_5ms_Group02_Reserved3__PEU_PTCANFD_5ms_FrP02_SigGwTOCON_CONTROLLER_0_IAM_Rx,  

        549u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        14u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_CRC_CONNCANFD_S_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        550u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_RC_CONNCANFD_SF_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        551u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        15u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMFltLvlSts_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        552u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        15u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMActuToq_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        58u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        15u,   

        0u,  
        11u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMActuToqV_CONNCANFD_SFCANFD_RZ_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        207u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        15u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMSta_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        553u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        15u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved1_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        554u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        15u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMSpdV_CONNCANFD_SFCANFD_RZCUCA_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        208u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        15u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMHVILSts_CONNCANFD_SFCANFD_RZC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        555u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        15u,   

        5u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMDmpngCtrlA_CONNCANFD_SFCANFD__TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        209u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        15u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMSpd_CONNCANFD_SFCANFD_RZCUCAN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        59u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        15u,   

        0u,  
        16u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved2_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        556u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved3_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        557u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved4_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        558u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved5_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        559u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved6_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        560u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved7_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        561u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved8_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        562u,  
        0u,  
        0u,  
        (0xFFFFu),  

        13u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved10_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        563u,  
        0u,  
        0u,  
        (0xFFFFu),  

        14u,  

        15u,   

        0u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMSenLossEn_CONNCANFD_SFCANFD_R_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        210u,  
        0u,  
        0u,  
        (0xFFFFu),  

        14u,  

        15u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved9_CONNC_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        564u,  
        0u,  
        0u,  
        (0xFFFFu),  

        14u,  

        15u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_10ms_Group01_Reserved11_CONN_TC_PTCANFD_10ms_FrP01_SigGWTORZC_CONTROLLER_0_IAM_Rx,  

        565u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        15u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMaxTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        211u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        18u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMinTemV_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        212u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        18u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMaxTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        566u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        18u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMinTem_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        567u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        18u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMaxTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        568u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        18u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMinTemIndx_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        569u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        18u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBusbarTempMax_ESS_PTCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,  

        570u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        18u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAIPilotSysSts_ICBAD_CHCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,  

        571u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        19u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMActuToqHiPre_PEU_PEU_ERCANFD_20ms_FrP33_CONTROLLER_0_IAM_Rx,  

        60u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        20u,   

        0u,  
        16u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_INFCSMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        213u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        22u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_INFCAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        214u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        22u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISDMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        215u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        22u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        216u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        22u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILHZCUAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        217u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        22u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        218u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIBS_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        219u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEPSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        220u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITC_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        221u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IECM_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        222u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILVBM_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        223u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRZCU_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        224u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        22u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        225u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        22u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPEU_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        226u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        22u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IECM_ERAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        227u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        22u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIPD_RZCUCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        228u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        22u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IESS_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        229u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        22u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICCU_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        230u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        22u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IESS_ExtdAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        231u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        22u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICCU_PTAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        232u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        22u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIAMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        233u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        22u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEAC_Avlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        234u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        22u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIPD_SFAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        235u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        22u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRZCU_BKBCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        236u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        22u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIPD_BKPCANFDAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        237u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        22u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIBS_CHAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        238u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        22u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFDRAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        239u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        22u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRWSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        240u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        22u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISCMAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        241u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        22u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITPMSAvlbly_ICBVC_RZCUCANFD_20ms_FrP00_CONTROLLER_0_IAM_Rx,  

        242u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        22u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMaxVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  

        243u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        30u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMinVolV_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  

        244u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        30u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMaxVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  

        572u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        30u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMinVolIndx_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  

        573u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        30u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMinVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  

        61u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        30u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellMaxVol_ESS_PTCANFD_20ms_FrP04_CONTROLLER_0_IAM_Rx,  

        62u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        30u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilTem_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,  

        574u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        32u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilTemV_PEU_PEU_PTCANFD_50ms_FrP05_CONTROLLER_0_IAM_Rx,  

        245u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        32u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSDsChrgSpRsn_ESS_PTCANFD_100ms_FrP29_CONTROLLER_0_IAM_Rx,  

        575u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        34u,   

        2u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPackSOC_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  

        63u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        35u,   

        0u,  
        10u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPackSOCV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  

        246u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        35u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPackSOCDsp_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  

        64u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        35u,   

        0u,  
        10u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPackSOCDspV_ESS_PTCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,  

        247u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        35u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IGroupVolIndex_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        576u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        36u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellAVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        65u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        36u,   

        3u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        66u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        36u,   

        5u,  
        13u,  
        3u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellAVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        248u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        36u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        67u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        36u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDVol_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        68u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        36u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        249u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        36u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        250u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        36u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBVolV_Sec00_ESS_PTCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,  

        251u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        36u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        69u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        37u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellAVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        252u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        37u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        253u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        37u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        254u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        37u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IGroupVolIndex_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        577u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        37u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        70u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        37u,   

        3u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        71u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        37u,   

        5u,  
        13u,  
        3u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDVolV_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        255u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        37u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellAVol_Sec01_ESS_PTCANFD_50ms_FrP07_CONTROLLER_0_IAM_Rx,  

        72u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        37u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        73u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        38u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellAVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        256u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        38u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        257u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        38u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        258u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        38u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IGroupVolIndex_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        578u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        38u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        74u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        38u,   

        3u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        75u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        38u,   

        5u,  
        13u,  
        3u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDVolV_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        259u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        38u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellAVol_Sec02_ESS_PTCANFD_50ms_FrP09_CONTROLLER_0_IAM_Rx,  

        76u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        38u,   

        0u,  
        13u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarCTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        260u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        39u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarBTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        261u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        39u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarATemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        262u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        39u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarFTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        263u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        39u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarETemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        264u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        39u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarDTemV_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        265u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        39u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarDTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        579u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarETem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        580u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarFTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        581u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarATem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        582u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarBTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        583u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBusbarCTem_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        584u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IGroupBusbarTemIndex_Sec00_ESS_PTCANFD_50ms_FrP13_CONTROLLER_0_IAM_Rx,  

        585u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        39u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellATem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        586u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        587u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IGroupCellTemIndex_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        588u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellATemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        266u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        40u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellBTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        267u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        40u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        268u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        40u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        269u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        40u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellETemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        270u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        40u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellFTemV_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        271u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        40u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellCTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        589u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellDTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        590u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellETem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        591u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ICellFTem_Sec00_ESS_PTCANFD_50ms_FrP08_CONTROLLER_0_IAM_Rx,  

        592u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        40u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSDisChrgngEstdElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  

        77u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        41u,   

        4u,  
        12u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSDisChrgngEstdElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  

        272u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        41u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSDisChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  

        593u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        41u,   

        1u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSDsChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  

        594u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        41u,   

        0u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgngAddedElecRngV_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  

        273u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        41u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgngAddedElecRng_ESS_PTCANFD_100ms_FrP21_CONTROLLER_0_IAM_Rx,  

        78u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        41u,   

        0u,  
        11u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILdspcOpenSts_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx,  

        274u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        42u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILdspcOpenStsV_RZCU_LHBKBCANFD_50ms_FrP37_CONTROLLER_0_IAM_Rx,  

        275u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        42u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehHzrdMdSts_LHZCU_LHBKBCANFD_50ms_FrP04_CONTROLLER_0_IAM_Rx,  

        595u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        43u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotSpdReq_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        79u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        47u,   

        2u,  
        14u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotSts_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        596u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        47u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotSpd_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        80u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        47u,   

        2u,  
        14u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotSpdV_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        276u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        47u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotEnb_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        277u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        47u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotCrnt_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        597u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        47u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotVol_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        598u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        47u,   

        1u,  
        7u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotFltResn_PEU_PEU_ERCANFD_50ms_FrP10_CONTROLLER_0_IAM_Rx,  

        599u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        47u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILVBMMOSSts_LVBM_PTEXTDCAN_100ms_FrP01_CONTROLLER_0_IAM_Rx,  

        600u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        48u,   

        7u,  
        3u,  
        2u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IParkngFuncRcm_ICBAD_BKPCANFD_100ms_FrP42_CONTROLLER_0_IAM_Rx,  

        601u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        49u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAIParkngMsgReq_IPD_BKPCANFD_100ms_FrP50_CONTROLLER_0_IAM_Rx,  

        602u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        51u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSOnbdChrgSpRsn_ESS_PTCANFD_100ms_FrP28_CONTROLLER_0_IAM_Rx,  

        603u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        52u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehElecRngV_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx,  

        278u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        53u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehElecRng_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx,  

        81u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        53u,   

        0u,  
        11u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHVOffMoSts_ESS_ZONE_PTCANFD_100ms_FrP16_CONTROLLER_0_IAM_Rx,  

        604u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        53u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSOfbdChrgSpRsn_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        605u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        54u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSReserChrgCtrlResp_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        606u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        54u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSReserCtrlDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        607u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        54u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSReserSpMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        608u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        54u,   

        2u,  
        6u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSReserStMinuteDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        609u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        54u,   

        1u,  
        6u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSReserSpHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        610u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        54u,   

        0u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSReserStHourDspCmd_ESS_PTCANFD_100ms_FrP22_CONTROLLER_0_IAM_Rx,  

        611u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        54u,   

        3u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBatPrsAlrmV_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx,  

        279u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        57u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBatPrsFlt_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx,  

        612u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        57u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBatPrsAlrm_ESS_PTCANFD_100ms_FrP35_CONTROLLER_0_IAM_Rx,  

        280u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        57u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIntrusionAlrmHisotry_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  

        613u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        58u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIntrusionAlrmSts_LHZCU_LHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  

        614u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        58u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgTrgtSOCDspCmd_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        615u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        60u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSEstdElecRng_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        82u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        60u,   

        0u,  
        11u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgSpRsn_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        616u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        60u,   

        3u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSEstdElecRngV_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        281u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        60u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgCtrlResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        617u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        60u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgSts_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        618u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        60u,   

        3u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgTrgtSOCResp_ESS_PTCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        619u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        60u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFOTAStatusValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,  

        282u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        61u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFOTAStatus_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,  

        620u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        61u,   

        1u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFOTATarget_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,  

        621u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        61u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFOTATargetValid_ICBVC_FOTASts_100ms_FrP47_CONTROLLER_0_IAM_Rx,  

        283u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        61u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IChrgTrgtSOCVal_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  

        622u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        63u,   

        1u,  
        7u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IReserStMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  

        623u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        63u,   

        2u,  
        6u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IReserSpMinute_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  

        624u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        63u,   

        2u,  
        6u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IReserChrgSts_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  

        625u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        63u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IReserSpHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  

        626u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        63u,   

        5u,  
        5u,  
        2u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IReserStHour_ICBVC_RZCUCANFD_100ms_FrP45_CONTROLLER_0_IAM_Rx,  

        627u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        63u,   

        0u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IChrgngRmnngTimeV_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  

        284u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        64u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IChrgngRmnngTime_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  

        83u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        64u,   

        0u,  
        10u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBattNoFuChargReq_ESS_PTCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  

        628u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        64u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtHtdRrWndAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  

        629u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        66u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtACSts_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  

        630u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        66u,   

        1u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtACAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  

        631u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        66u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtHtdRrWndSt_RHZCU_RHBKBCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,  

        285u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        66u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IACOnOffDspCmd_RHZCU_RHBKBCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,  

        286u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        67u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRVSSts_ICBVC_RZCUCANFD_100ms_FrP39_CONTROLLER_0_IAM_Rx,  

        287u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        68u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPwrLftgtSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  

        632u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        69u,   

        0u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPwrLftgtManuClsReq_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  

        288u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        69u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPwrLftgtPosn_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  

        633u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        69u,   

        1u,  
        7u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPwrLftgtSysSts_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  

        634u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        69u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPwrLftgtPosnV_RZCU_LHBKBCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,  

        289u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        69u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IACVentSts_FrtRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,  

        635u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        70u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IACVentSts_RrRt_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,  

        636u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        70u,   

        1u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IACVentSts_RrLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,  

        637u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        70u,   

        4u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IACVentSts_FrtLft_RHZCU_RHBKBCANFD_100ms_FrP14_CONTROLLER_0_IAM_Rx,  

        638u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        70u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIPDStsResp_ICBAD_BKPCANFD_100ms_FrP36_CONTROLLER_0_IAM_Rx,  

        639u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        72u,   

        2u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMInvtrCrntHiPre_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  

        84u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        73u,   

        1u,  
        15u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMInvtrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  

        290u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        73u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEDUOilPmpMotBusCrnt_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  

        640u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        73u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMOvSpdAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  

        291u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        73u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMOvCrntAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  

        292u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        73u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISAMStrOvTemAlrm_PEU_PEU_ERCANFD_100ms_FrP11_CONTROLLER_0_IAM_Rx,  

        293u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        73u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl1FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        641u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        74u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl2FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        642u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        74u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl3FrgrLife_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        643u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        74u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl1FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        644u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        74u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl2FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        645u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        74u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl3FrgrAvlbl_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        646u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        74u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl1FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        294u,  
        0u,  
        0u,  
        (0xFFFFu),  

        13u,  

        74u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl3FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        295u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        74u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILbl2FrgrExpiryFlg_ICB_BKBCANFD_100ms_FrP221_CONTROLLER_0_IAM_Rx,  

        296u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        74u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IACFrtInCarTem_RHZCU_RHBKBCANFD_100ms_FrP13_CONTROLLER_0_IAM_Rx,  

        647u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        75u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBatPrsAlrmBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx,  

        297u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        77u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBatPrsAlrmVBkup_ESS_PTEXTDCAN_100ms_FrP24_CONTROLLER_0_IAM_Rx,  

        298u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        77u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFICMReserChrgSts_RZCU_RZCUCANFD_100ms_FrP82_CONTROLLER_0_IAM_Rx,  

        648u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        78u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtACRmningTime_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,  

        649u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        79u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtBattWarmSts_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,  

        650u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        79u,   

        0u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtBattWarmAbotRsn_RHZCU_RHBKBCANFD_100ms_FrP19_CONTROLLER_0_IAM_Rx,  

        651u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        79u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMInvtrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  

        652u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        81u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMStrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  

        299u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        81u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMSttrTem_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  

        653u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        81u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMOvSpdAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  

        300u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        81u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMInvtrOvTemAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  

        301u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        81u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMOvCrntAlrm_TC_PTCANFD_100ms_FrP05_CONTROLLER_0_IAM_Rx,  

        302u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        81u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IOtsdAirTemCrVal_ICBVC_INFOCANFD_250ms_FrP52_CONTROLLER_0_IAM_Rx,  

        654u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        83u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        655u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        84u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        656u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        84u,   

        2u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        657u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        84u,   

        4u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        658u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        84u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        659u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        84u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        660u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        84u,   

        2u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        661u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        84u,   

        4u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        662u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        84u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISWHtngReqDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        663u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        84u,   

        0u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSlientUnlckSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        303u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        84u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        664u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        84u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDrvrSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        665u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDrvrSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        666u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPsngSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        667u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IPsngSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        668u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        669u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        670u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        671u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISecRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        672u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        673u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        84u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowRSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        674u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowRSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        675u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFRWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        676u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        84u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowLSeatHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        677u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowLSeatVentCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        678u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRLWndOpenSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        679u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        84u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IStrgWhlHeatCtrlSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        680u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        84u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAltngChrgCrntDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        681u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        84u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IChrgTrgtSOCDspCmd_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        682u,  
        0u,  
        0u,  
        (0xFFFFu),  

        13u,  

        84u,   

        1u,  
        7u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        683u,  
        0u,  
        0u,  
        (0xFFFFu),  

        18u,  

        84u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        684u,  
        0u,  
        0u,  
        (0xFFFFu),  

        19u,  

        84u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFRWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        685u,  
        0u,  
        0u,  
        (0xFFFFu),  

        20u,  

        84u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFLWinPosnSts_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        686u,  
        0u,  
        0u,  
        (0xFFFFu),  

        21u,  

        84u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowLSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        687u,  
        0u,  
        0u,  
        (0xFFFFu),  

        24u,  

        84u,   

        2u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowLSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        688u,  
        0u,  
        0u,  
        (0xFFFFu),  

        24u,  

        84u,   

        4u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowRSeatHeatLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        689u,  
        0u,  
        0u,  
        (0xFFFFu),  

        24u,  

        84u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IThrdRowRSeatVentLvl_ICB_RZCUCANFD_100ms_FrP144_CONTROLLER_0_IAM_Rx,  

        690u,  
        0u,  
        0u,  
        (0xFFFFu),  

        30u,  

        84u,   

        2u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ISeatOccptnNum_SDM_CHCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,  

        691u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        85u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgePowerActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        692u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        87u,   

        3u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgeAbnormalActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        693u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        87u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHldFdgeAftLckSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        694u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        87u,   

        1u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgeFailureActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        695u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        87u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgeDoorOpenActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        696u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        87u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHldFdgeAftLckWorkSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        697u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        87u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgeModeActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        698u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        87u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHldFdgeAftLckAutoOffRsn_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        699u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        87u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHldFdgeAftLckTiSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        700u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        87u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHldFdgeAftLckTempSetInfo_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        701u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        87u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgeActualTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        702u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        87u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFridgeSetTempActrSts_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        703u,  
        0u,  
        0u,  
        (0xFFFFu),  

        13u,  

        87u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHldFdgeAftLckRmnngTi_ICBVC_CONNCANFD_200ms_FrP157_CONTROLLER_0_IAM_Rx,  

        85u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        87u,   

        0u,  
        16u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeIndx_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        704u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc1_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        705u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc2_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        706u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc3_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        707u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc4_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        708u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc5_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        709u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc6_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        710u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSRptBatCodeAsc7_ESS_PTCANFD_200ms_FrP42_CONTROLLER_0_IAM_Rx,  

        711u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        88u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellVolSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx,  

        712u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        89u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx,  

        713u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        89u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSBusbarTemSumNum_ESS_PTCANFD_200ms_FrP39_CONTROLLER_0_IAM_Rx,  

        714u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        89u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_INOAMsgIndcr_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx,  

        715u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        90u,   

        3u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_INOALaneChag_ICBAD_BKPCANFD_100ms_FrP38_CONTROLLER_0_IAM_Rx,  

        716u,  
        0u,  
        0u,  
        (0xFFFFu),  

        14u,  

        90u,   

        3u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHVDCDCStaBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx,  

        717u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        91u,   

        0u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IHVDCDCTemBkup_CCU_PTEXTDCAN_100ms_FrP06_CONTROLLER_0_IAM_Rx,  

        718u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        91u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMInvtrCrntHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,  

        86u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        93u,   

        1u,  
        15u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ITMActuToqHiPre_TC_PTCANFD_20ms_FrP08_CONTROLLER_0_IAM_Rx,  

        87u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        93u,   

        0u,  
        16u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,  

        719u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        94u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,  

        720u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        94u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,  

        721u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        94u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRLTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,  

        722u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        94u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtDrvrSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        723u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtPsngSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        724u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtDrvrSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        725u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        726u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtPsngSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        727u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        728u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        729u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowRSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        730u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        731u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowLSeatHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        732u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowRSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        733u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtACCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        734u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowLSeatVentCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        735u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtStrgWhlHeatCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        736u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtBattWarmCompResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        737u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        96u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRVSAbotRsn_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        738u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        96u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtCtrlPwrLftgtCmpResp_ICBVC_CONNCANFD_Event_FrS145_CONTROLLER_0_IAM_Rx,  

        739u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        96u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtKeyVldResp_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx,  

        740u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        97u,   

        0u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtFindMyCarFailedReason_LHZCU_LHBDCANFD_Event_FrS48_CONTROLLER_0_IAM_Rx,  

        741u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        97u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtKeyVldExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx,  

        304u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        98u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtFindMyCarExecutionResp_LHZCU_LHBDCANFD_Event_FrS49_CONTROLLER_0_IAM_Rx,  

        742u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        98u,   

        6u,  
        2u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAvgFuelCsumpPrcs_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,  

        88u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        99u,   

        0u,  
        16u,  
        2u,  
        COM_UINT16,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAvgFuelCsumpPrcsV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,  

        305u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        99u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAvgFuelCsumpV_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,  

        306u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        99u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAvgFuelCsump_ICBVC_RHBKBCANFD_500ms_FrP67_CONTROLLER_0_IAM_Rx,  

        743u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        99u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,  

        307u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        100u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,  

        308u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        100u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFRWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,  

        309u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        100u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IFLWndOpenAppRmn_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,  

        310u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        100u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRainClsWndAppMsg_ZXD_CONNCANFD_Event_FrS220_CONTROLLER_0_IAM_Rx,  

        744u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        100u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehTiPblshYear_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  

        745u,  
        0u,  
        0u,  
        (0xFFFFu),  

        0u,  

        101u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehTiPblshMth_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  

        746u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        101u,   

        0u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehTiPblshDay_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  

        747u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        101u,   

        0u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehTiPblshHr_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  

        748u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        101u,   

        0u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehTiPblshMins_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  

        749u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        101u,   

        0u,  
        6u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehTiPblshSec_ICBVC_RZCUCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,  

        750u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        101u,   

        0u,  
        6u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IIdentityChlg_ICB_CONNCANFD_Event_FrS67_CONTROLLER_0_IAM_Rx,  

        6u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        102u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_SecuredIPdu_ICC_SecOC_SyncMsg_CO_synthesized_ICBVC_SecOC_SyncMsg__CONTROLLER_0_IAM_Rx,  

        7u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        103u,   

        0u,  
        40u,  
        5u,  
        COM_SINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtHtdRrWndResp_RHZCU_BKBCANFD_Event_FrS37_CONTROLLER_0_IAM_Rx,  

        751u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        104u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtDisChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx,  

        752u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        105u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtChrgCtrlResp_ESS_PTCANFD_Event_FrS452_CONTROLLER_0_IAM_Rx,  

        753u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        105u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAIParkngSpcIDrespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx,  

        754u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        106u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IAIParkngRespIAM_IPD_BKPCANFD_Event_FrS35_CONTROLLER_0_IAM_Rx,  

        755u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        106u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDCStsAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx,  

        311u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        107u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDCOvTemAlrm_GB_CCU_PTCANFD_500ms_FrP13_CONTROLLER_0_IAM_Rx,  

        312u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        107u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSTemDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        313u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        108u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        756u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        108u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPkgSOCJmpAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        314u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        0u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPkgSOCHghAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        315u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        1u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        316u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        2u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        317u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPkgSOCLwAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        318u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSUndVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        319u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSOvVolAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        320u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSOvTemAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        321u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        108u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPkgHghChrgAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        322u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        108u,   

        3u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSHVILAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        323u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        108u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSInsltnAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        324u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        108u,   

        5u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSCellDiffAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        325u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        108u,   

        6u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IBMSPkgMsmtchAlrm_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,  

        326u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        108u,   

        7u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRVSStopRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        327u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        109u,   

        4u,  
        1u,  
        1u,  
        COM_BOOLEAN,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtDrvrSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        757u,  
        0u,  
        0u,  
        (0xFFFFu),  

        1u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtHldFdgeAftLckSetResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        758u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        109u,   

        1u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtCtrlPwrLftgtResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        759u,  
        0u,  
        0u,  
        (0xFFFFu),  

        2u,  

        109u,   

        4u,  
        4u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtPsngSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        760u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtDrvrSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        761u,  
        0u,  
        0u,  
        (0xFFFFu),  

        3u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        762u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtPsngSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        763u,  
        0u,  
        0u,  
        (0xFFFFu),  

        4u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        764u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        765u,  
        0u,  
        0u,  
        (0xFFFFu),  

        5u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowRSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        766u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtSecRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        767u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtExtrLckCtrlResultInfo_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        768u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        109u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowLSeatHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        769u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowRSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        770u,  
        0u,  
        0u,  
        (0xFFFFu),  

        8u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtACResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        771u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtThrdRowLSeatVentResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        772u,  
        0u,  
        0u,  
        (0xFFFFu),  

        9u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtStrgWhlHeatResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        773u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtBattWarmResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        774u,  
        0u,  
        0u,  
        (0xFFFFu),  

        10u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtChrgTrgtSOCResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        775u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        109u,   

        2u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtAltngChrgCrntResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        776u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtFridgeResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        777u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        109u,   

        0u,  
        5u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtReserChrgCtrlResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        778u,  
        0u,  
        0u,  
        (0xFFFFu),  

        12u,  

        109u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRmtCtrlWinResp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        779u,  
        0u,  
        0u,  
        (0xFFFFu),  

        13u,  

        109u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IRVSStartRsp_ICBVC_CONNCANFD_Event_FrS139_CONTROLLER_0_IAM_Rx,  

        780u,  
        0u,  
        0u,  
        (0xFFFFu),  

        14u,  

        109u,   

        0u,  
        8u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IVehCrshTypForeCall_SDM_SFCANFD_Event_FrS13_CONTROLLER_0_IAM_Rx,  

        781u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        110u,   

        5u,  
        3u,  
        1u,  
        COM_UINT8,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILatDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx,  

        8u,  
        0u,  
        0u,  
        (0xFFFFu),  

        11u,  

        111u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_ILongtDeltaVelForeCall_SDM_SFCANFD_Event_FrS12_CONTROLLER_0_IAM_Rx,  

        9u,  
        0u,  
        0u,  
        (0xFFFFu),  

        19u,  

        111u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigGW_ICB_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        10u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        112u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS1_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        11u,  
        0u,  
        0u,  
        (0xFFFFu),  

        7u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS2_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        12u,  
        0u,  
        0u,  
        (0xFFFFu),  

        15u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS3_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        13u,  
        0u,  
        0u,  
        (0xFFFFu),  

        23u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS4_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        14u,  
        0u,  
        0u,  
        (0xFFFFu),  

        31u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS5_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        15u,  
        0u,  
        0u,  
        (0xFFFFu),  

        39u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS6_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        16u,  
        0u,  
        0u,  
        (0xFFFFu),  

        47u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS7_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        17u,  
        0u,  
        0u,  
        (0xFFFFu),  

        55u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IEvtPotclSigBMS8_ESS_PTCANFD_EvtInfo_CONTROLLER_0_IAM_Rx,  

        18u,  
        0u,  
        0u,  
        (0xFFFFu),  

        63u,  

        113u,   

        0u,  
        64u,  
        8u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDTCInfomationECM_DIAG_DTCInfo_ECM_CONTROLLER_0_IAM_Rx,  

        19u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        114u,   

        0u,  
        56u,  
        7u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDTCInfomationPEU_DIAG_DTCInfo_PEU_CONTROLLER_0_IAM_Rx,  

        20u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        115u,   

        0u,  
        56u,  
        7u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDTCInfomationESS_DIAG_DTCInfo_ESS_CONTROLLER_0_IAM_Rx,  

        21u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        116u,   

        0u,  
        56u,  
        7u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
    {
         
        &Rte_COMCbk_IDTCInfomationTC_DIAG_DTCInfo_TC_CONTROLLER_0_IAM_Rx,  

        22u,  
        0u,  
        0u,  
        (0xFFFFu),  

        6u,  

        117u,   

        0u,  
        56u,  
        7u,  
        COM_UINT64,
        COM_BIG_ENDIAN,

    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_ErrorAndNotificationType Com_TxSignalErrorAndNotification[240u] =
{
     

    &Rte_COMCbkTAck_IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz10_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz9_IAM_BKPCANFD_1000ms_FrP60_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz12_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz11_IAM_BKPCANFD_1000ms_FrP61_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz14_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz13_IAM_BKPCANFD_1000ms_FrP62_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz16_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz15_IAM_BKPCANFD_1000ms_FrP63_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz20_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz19_IAM_BKPCANFD_1000ms_FrP64_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISvGroup_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatNum_IAM_BKPCANFD_1000ms_FrP65_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz4_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz3_IAM_BKPCANFD_1000ms_FrP66_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiYear_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiSts_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiSec_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiMins_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiHr_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiDay_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGPSTiMth_IAM_CONNCAN_200ms_FrP01_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiMth_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiHr_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiSec_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiDay_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiMins_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiSts_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INTPTiYear_IAM_CONNCAN_200ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMComKeyEnbResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAIParkngSpcIDIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPDResv14_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPDResv13_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPDResv15_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv03_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv12_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv11_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv10_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv08_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv09_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv06_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv07_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv02_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv04_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv05_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMtoIPD_Rsrv01_IAM_CONNCANFD_100ms_FrP19_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMReststs_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IPkUpPntID_IAM_CONNCANFD_Event_FrS04_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtKeyVldReq_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtFindMyCarCtrl_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtFindCarTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtKeyVldTimeInfo_IAM_CONNCANFD_Event_FrS42_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtAltngChrgCrntReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtFridgeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtHldFdgeAftLckSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtHldFdgeAftLckTemSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtHldFdgeAftLckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtFridgeWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtFridgeTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtStrgWhlHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtCtrlPwrLftgtReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtBattWarmReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtACTrgtAirMdReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtCtrlWinReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtThrdRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtThrdRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtThrdRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtThrdRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtCtrlWinDecSpa_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtSlientUnlckTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRVSTimeSet_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtChrgTrgtSOCReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRVSStartReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtReserStMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtReserCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtReserSpMinute_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtDrvrSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtPsngSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtReserSpHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtDrvrSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtACReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtReserStHour_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtACWorkingTimeReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRVSStopReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtACTrgtTemReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtExtrLckCtrlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtPsngSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtHtdRrWndReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtSecRowLSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtSecRowLSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtSecRowRSeatHeatReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtSecRowRSeatVentReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtACTrgtRcctnReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtACTrgtBlwLvlReq_IAM_CONNCANFD_Event_FrS43_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtDisChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IRmtChrgCtrlReq_IAM_CONNCANFD_Event_FrS44_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IEvtPotclSigIAM_IAM_CONNCANFD_EvtInfo_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMTripCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMKeyStatus_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMResetCnt_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMTripNvmTag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMErrorCount_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMFailedReason_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMAlgFlag_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAMDataId_IAM_SecOC_Log_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IeCallSysSta_TBOX_CONNCAN_20ms_FrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz6_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz5_IAM_BKPCANFD_1000ms_FrP49_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz2_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz1_IAM_BKPCANFD_1000ms_FrP55_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz18_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz17_IAM_BKPCANFD_1000ms_FrP58_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatID7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz8_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatElv7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatCNO7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatAz7_IAM_BKPCANFD_1000ms_FrP59_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISumnLoctnLongd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISumnLoctnLatd_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP9_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP8_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP7_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP6_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP5_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP4_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP3_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP2_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLatdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IP2PExeAvlblV_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_INorthVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IEastVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatNoInPositionRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ISatNoInAttitudeRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IVeleastsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IVelnorthsigma_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGNSSAntennasInfo_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IGNSSAntennasBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IDiffDataLinkBroken_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ICANprotocolinternalversion_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_NKI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_NOI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_NWI_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_NM_CANNM_State_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IDownVelocityRTK_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IVeldownsigma_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IBaseLineLen_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IPositionAttitudeStatus_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IDiffAgeInfo_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IEmgcCallTrigd_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IEmgcCallFlrSts_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITgtRembParkngChosenSpcID_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITrfcInfoSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITrfcWrnngSignDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITrfcForbidDist_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ICellularRSSI_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXReserSpMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXReserSpHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXReserStMinute_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXV2XReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXV2XSpSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXReserStTimeV_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXSprOfbdChrgReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXReserCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXReserStHour_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXChrgTrgtSOCReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXChrgCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_ITBOXEleccLckCtrlReq_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_TxSignalType Com_TxSignal[240u]=
{
    {
         
        0u,  
        0u,  
        0u,  

        6u,  

        0u,  

        0u,  

        0u,  
        56u,  
        7u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        378u,  
        0u,  
        0u,  

        7u,  

        1u,  

        1u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        379u,  
        0u,  
        0u,  

        6u,  

        1u,  

        2u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        380u,  
        0u,  
        0u,  

        5u,  

        1u,  

        3u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        381u,  
        0u,  
        0u,  

        3u,  

        1u,  

        4u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        23u,  
        0u,  
        0u,  

        4u,  

        1u,  

        5u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        382u,  
        0u,  
        0u,  

        2u,  

        1u,  

        6u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        383u,  
        0u,  
        0u,  

        1u,  

        1u,  

        7u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        24u,  
        0u,  
        0u,  

        1u,  

        1u,  

        8u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        384u,  
        0u,  
        0u,  

        7u,  

        2u,  

        9u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        385u,  
        0u,  
        0u,  

        6u,  

        2u,  

        10u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        386u,  
        0u,  
        0u,  

        5u,  

        2u,  

        11u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        387u,  
        0u,  
        0u,  

        3u,  

        2u,  

        12u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        25u,  
        0u,  
        0u,  

        4u,  

        2u,  

        13u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        388u,  
        0u,  
        0u,  

        2u,  

        2u,  

        14u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        389u,  
        0u,  
        0u,  

        1u,  

        2u,  

        15u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        26u,  
        0u,  
        0u,  

        1u,  

        2u,  

        16u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        390u,  
        0u,  
        0u,  

        7u,  

        3u,  

        17u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        391u,  
        0u,  
        0u,  

        6u,  

        3u,  

        18u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        392u,  
        0u,  
        0u,  

        5u,  

        3u,  

        19u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        393u,  
        0u,  
        0u,  

        3u,  

        3u,  

        20u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        27u,  
        0u,  
        0u,  

        4u,  

        3u,  

        21u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        394u,  
        0u,  
        0u,  

        2u,  

        3u,  

        22u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        395u,  
        0u,  
        0u,  

        1u,  

        3u,  

        23u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        28u,  
        0u,  
        0u,  

        1u,  

        3u,  

        24u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        396u,  
        0u,  
        0u,  

        7u,  

        4u,  

        25u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        397u,  
        0u,  
        0u,  

        6u,  

        4u,  

        26u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        398u,  
        0u,  
        0u,  

        5u,  

        4u,  

        27u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        399u,  
        0u,  
        0u,  

        3u,  

        4u,  

        28u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        29u,  
        0u,  
        0u,  

        4u,  

        4u,  

        29u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        400u,  
        0u,  
        0u,  

        2u,  

        4u,  

        30u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        401u,  
        0u,  
        0u,  

        1u,  

        4u,  

        31u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        30u,  
        0u,  
        0u,  

        1u,  

        4u,  

        32u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        402u,  
        0u,  
        0u,  

        7u,  

        5u,  

        33u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        403u,  
        0u,  
        0u,  

        6u,  

        5u,  

        34u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        404u,  
        0u,  
        0u,  

        5u,  

        5u,  

        35u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        405u,  
        0u,  
        0u,  

        3u,  

        5u,  

        36u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        31u,  
        0u,  
        0u,  

        4u,  

        5u,  

        37u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        406u,  
        0u,  
        0u,  

        2u,  

        5u,  

        38u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        407u,  
        0u,  
        0u,  

        1u,  

        5u,  

        39u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        32u,  
        0u,  
        0u,  

        1u,  

        5u,  

        40u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        408u,  
        0u,  
        0u,  

        1u,  

        6u,  

        41u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        409u,  
        0u,  
        0u,  

        0u,  

        6u,  

        42u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        410u,  
        0u,  
        0u,  

        7u,  

        7u,  

        43u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        411u,  
        0u,  
        0u,  

        6u,  

        7u,  

        44u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        412u,  
        0u,  
        0u,  

        5u,  

        7u,  

        45u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        413u,  
        0u,  
        0u,  

        3u,  

        7u,  

        46u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        33u,  
        0u,  
        0u,  

        4u,  

        7u,  

        47u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        414u,  
        0u,  
        0u,  

        2u,  

        7u,  

        48u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        415u,  
        0u,  
        0u,  

        1u,  

        7u,  

        49u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        34u,  
        0u,  
        0u,  

        1u,  

        7u,  

        50u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        416u,  
        0u,  
        0u,  

        7u,  

        9u,  

        51u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        187u,  
        0u,  
        0u,  

        5u,  

        9u,  

        52u,  

        6u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        0x1u,   

    },
    {
         
        417u,  
        0u,  
        0u,  

        5u,  

        9u,  

        53u,  

        0u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        418u,  
        0u,  
        0u,  

        4u,  

        9u,  

        54u,  

        0u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        419u,  
        0u,  
        0u,  

        3u,  

        9u,  

        55u,  

        0u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        420u,  
        0u,  
        0u,  

        2u,  

        9u,  

        56u,  

        0u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        421u,  
        0u,  
        0u,  

        1u,  

        9u,  

        57u,  

        0u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        422u,  
        0u,  
        0u,  

        4u,  

        10u,  

        58u,  

        4u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        423u,  
        0u,  
        0u,  

        3u,  

        10u,  

        59u,  

        0u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        424u,  
        0u,  
        0u,  

        2u,  

        10u,  

        60u,  

        2u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        425u,  
        0u,  
        0u,  

        3u,  

        10u,  

        61u,  

        5u,  
        5u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        426u,  
        0u,  
        0u,  

        1u,  

        10u,  

        62u,  

        2u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        188u,  
        0u,  
        0u,  

        1u,  

        10u,  

        63u,  

        1u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        0x1u,   

    },
    {
         
        427u,  
        0u,  
        0u,  

        0u,  

        10u,  

        64u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        189u,  
        0u,  
        0u,  

        8u,  

        11u,  

        65u,  

        7u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        1u,  
        0u,  
        0u,  

        7u,  

        11u,  

        66u,  

        0u,  
        64u,  
        8u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        428u,  
        0u,  
        0u,  

        7u,  

        12u,  

        67u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        429u,  
        0u,  
        0u,  

        6u,  

        12u,  

        68u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        430u,  
        0u,  
        0u,  

        16u,  

        13u,  

        69u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        431u,  
        0u,  
        0u,  

        15u,  

        13u,  

        70u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        35u,  
        0u,  
        0u,  

        9u,  

        13u,  

        71u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        432u,  
        0u,  
        0u,  

        7u,  

        13u,  

        72u,  

        6u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        36u,  
        0u,  
        0u,  

        6u,  

        13u,  

        73u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        433u,  
        0u,  
        0u,  

        4u,  

        13u,  

        74u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        434u,  
        0u,  
        0u,  

        3u,  

        13u,  

        75u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        435u,  
        0u,  
        0u,  

        2u,  

        13u,  

        76u,  

        4u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        436u,  
        0u,  
        0u,  

        2u,  

        13u,  

        77u,  

        0u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        437u,  
        0u,  
        0u,  

        1u,  

        13u,  

        78u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        438u,  
        0u,  
        0u,  

        1u,  

        13u,  

        79u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        439u,  
        0u,  
        0u,  

        1u,  

        13u,  

        80u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        440u,  
        0u,  
        0u,  

        0u,  

        13u,  

        81u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        441u,  
        0u,  
        0u,  

        0u,  

        13u,  

        82u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        442u,  
        0u,  
        0u,  

        0u,  

        13u,  

        83u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        443u,  
        0u,  
        0u,  

        4u,  

        14u,  

        84u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        444u,  
        0u,  
        0u,  

        0u,  

        14u,  

        85u,  

        3u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        190u,  
        0u,  
        0u,  

        5u,  

        15u,  

        86u,  

        7u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        445u,  
        0u,  
        0u,  

        4u,  

        15u,  

        87u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        446u,  
        0u,  
        0u,  

        3u,  

        15u,  

        88u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        447u,  
        0u,  
        0u,  

        2u,  

        15u,  

        89u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        448u,  
        0u,  
        0u,  

        26u,  

        16u,  

        90u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        449u,  
        0u,  
        0u,  

        25u,  

        16u,  

        91u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        450u,  
        0u,  
        0u,  

        25u,  

        16u,  

        92u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        451u,  
        0u,  
        0u,  

        24u,  

        16u,  

        93u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        452u,  
        0u,  
        0u,  

        23u,  

        16u,  

        94u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        453u,  
        0u,  
        0u,  

        22u,  

        16u,  

        95u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        454u,  
        0u,  
        0u,  

        21u,  

        16u,  

        96u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        455u,  
        0u,  
        0u,  

        20u,  

        16u,  

        97u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        456u,  
        0u,  
        0u,  

        19u,  

        16u,  

        98u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        457u,  
        0u,  
        0u,  

        19u,  

        16u,  

        99u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        458u,  
        0u,  
        0u,  

        18u,  

        16u,  

        100u,  

        4u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        459u,  
        0u,  
        0u,  

        18u,  

        16u,  

        101u,  

        0u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        460u,  
        0u,  
        0u,  

        17u,  

        16u,  

        102u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        461u,  
        0u,  
        0u,  

        17u,  

        16u,  

        103u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        462u,  
        0u,  
        0u,  

        16u,  

        16u,  

        104u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        463u,  
        0u,  
        0u,  

        16u,  

        16u,  

        105u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        464u,  
        0u,  
        0u,  

        15u,  

        16u,  

        106u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        465u,  
        0u,  
        0u,  

        14u,  

        16u,  

        107u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        466u,  
        0u,  
        0u,  

        13u,  

        16u,  

        108u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        467u,  
        0u,  
        0u,  

        12u,  

        16u,  

        109u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        191u,  
        0u,  
        0u,  

        12u,  

        16u,  

        110u,  

        0u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        468u,  
        0u,  
        0u,  

        11u,  

        16u,  

        111u,  

        2u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        469u,  
        0u,  
        0u,  

        11u,  

        16u,  

        112u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        470u,  
        0u,  
        0u,  

        10u,  

        16u,  

        113u,  

        2u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        471u,  
        0u,  
        0u,  

        9u,  

        16u,  

        114u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        472u,  
        0u,  
        0u,  

        9u,  

        16u,  

        115u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        473u,  
        0u,  
        0u,  

        8u,  

        16u,  

        116u,  

        3u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        474u,  
        0u,  
        0u,  

        8u,  

        16u,  

        117u,  

        0u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        475u,  
        0u,  
        0u,  

        7u,  

        16u,  

        118u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        476u,  
        0u,  
        0u,  

        7u,  

        16u,  

        119u,  

        0u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        477u,  
        0u,  
        0u,  

        6u,  

        16u,  

        120u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        192u,  
        0u,  
        0u,  

        5u,  

        16u,  

        121u,  

        7u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        478u,  
        0u,  
        0u,  

        5u,  

        16u,  

        122u,  

        1u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        479u,  
        0u,  
        0u,  

        4u,  

        16u,  

        123u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        480u,  
        0u,  
        0u,  

        4u,  

        16u,  

        124u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        481u,  
        0u,  
        0u,  

        4u,  

        16u,  

        125u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        482u,  
        0u,  
        0u,  

        3u,  

        16u,  

        126u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        483u,  
        0u,  
        0u,  

        3u,  

        16u,  

        127u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        484u,  
        0u,  
        0u,  

        2u,  

        16u,  

        128u,  

        5u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        485u,  
        0u,  
        0u,  

        2u,  

        16u,  

        129u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        486u,  
        0u,  
        0u,  

        2u,  

        16u,  

        130u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        487u,  
        0u,  
        0u,  

        1u,  

        16u,  

        131u,  

        4u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        488u,  
        0u,  
        0u,  

        7u,  

        17u,  

        132u,  

        2u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        489u,  
        0u,  
        0u,  

        7u,  

        17u,  

        133u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        2u,  
        0u,  
        0u,  

        7u,  

        18u,  

        134u,  

        0u,  
        64u,  
        8u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT64,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        193u,  
        0u,  
        0u,  

        0u,  

        19u,  

        135u,  

        6u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        2u,  
        0u,  
        0u,  

        7u,  

        20u,  

        136u,  

        0u,  
        24u,  
        3u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        194u,  
        0u,  
        0u,  

        4u,  

        20u,  

        137u,  

        7u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        490u,  
        0u,  
        0u,  

        4u,  

        20u,  

        138u,  

        3u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        195u,  
        0u,  
        0u,  

        4u,  

        20u,  

        139u,  

        2u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        37u,  
        0u,  
        0u,  

        3u,  

        20u,  

        140u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        491u,  
        0u,  
        0u,  

        0u,  

        20u,  

        141u,  

        4u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        196u,  
        0u,  
        0u,  

        0u,  

        20u,  

        142u,  

        3u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        38u,  
        0u,  
        0u,  

        1u,  

        20u,  

        143u,  

        0u,  
        11u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        492u,  
        0u,  
        0u,  

        7u,  

        22u,  

        144u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        493u,  
        0u,  
        0u,  

        7u,  

        23u,  

        145u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        494u,  
        0u,  
        0u,  

        6u,  

        23u,  

        146u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        495u,  
        0u,  
        0u,  

        5u,  

        23u,  

        147u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        496u,  
        0u,  
        0u,  

        3u,  

        23u,  

        148u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        39u,  
        0u,  
        0u,  

        4u,  

        23u,  

        149u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        497u,  
        0u,  
        0u,  

        2u,  

        23u,  

        150u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        498u,  
        0u,  
        0u,  

        1u,  

        23u,  

        151u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        40u,  
        0u,  
        0u,  

        1u,  

        23u,  

        152u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        499u,  
        0u,  
        0u,  

        7u,  

        24u,  

        153u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        500u,  
        0u,  
        0u,  

        6u,  

        24u,  

        154u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        501u,  
        0u,  
        0u,  

        5u,  

        24u,  

        155u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        502u,  
        0u,  
        0u,  

        3u,  

        24u,  

        156u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        41u,  
        0u,  
        0u,  

        4u,  

        24u,  

        157u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        503u,  
        0u,  
        0u,  

        2u,  

        24u,  

        158u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        504u,  
        0u,  
        0u,  

        1u,  

        24u,  

        159u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        42u,  
        0u,  
        0u,  

        1u,  

        24u,  

        160u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        505u,  
        0u,  
        0u,  

        7u,  

        25u,  

        161u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        506u,  
        0u,  
        0u,  

        6u,  

        25u,  

        162u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        507u,  
        0u,  
        0u,  

        5u,  

        25u,  

        163u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        508u,  
        0u,  
        0u,  

        3u,  

        25u,  

        164u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        43u,  
        0u,  
        0u,  

        4u,  

        25u,  

        165u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        509u,  
        0u,  
        0u,  

        2u,  

        25u,  

        166u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        510u,  
        0u,  
        0u,  

        1u,  

        25u,  

        167u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        44u,  
        0u,  
        0u,  

        1u,  

        25u,  

        168u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        511u,  
        0u,  
        0u,  

        7u,  

        26u,  

        169u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        512u,  
        0u,  
        0u,  

        6u,  

        26u,  

        170u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        513u,  
        0u,  
        0u,  

        5u,  

        26u,  

        171u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        514u,  
        0u,  
        0u,  

        3u,  

        26u,  

        172u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        45u,  
        0u,  
        0u,  

        4u,  

        26u,  

        173u,  

        0u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        515u,  
        0u,  
        0u,  

        2u,  

        26u,  

        174u,  

        1u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        516u,  
        0u,  
        0u,  

        1u,  

        26u,  

        175u,  

        0u,  
        7u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        46u,  
        0u,  
        0u,  

        1u,  

        26u,  

        176u,  

        7u,  
        9u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        3u,  
        0u,  
        0u,  

        8u,  

        27u,  

        177u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        517u,  
        0u,  
        0u,  

        4u,  

        27u,  

        178u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        4u,  
        0u,  
        0u,  

        3u,  

        27u,  

        179u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        5u,  
        0u,  
        0u,  

        39u,  

        28u,  

        180u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        6u,  
        0u,  
        0u,  

        35u,  

        28u,  

        181u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        7u,  
        0u,  
        0u,  

        31u,  

        28u,  

        182u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        8u,  
        0u,  
        0u,  

        27u,  

        28u,  

        183u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        9u,  
        0u,  
        0u,  

        23u,  

        28u,  

        184u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        10u,  
        0u,  
        0u,  

        19u,  

        28u,  

        185u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        11u,  
        0u,  
        0u,  

        15u,  

        28u,  

        186u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        12u,  
        0u,  
        0u,  

        11u,  

        28u,  

        187u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        13u,  
        0u,  
        0u,  

        7u,  

        28u,  

        188u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        14u,  
        0u,  
        0u,  

        3u,  

        28u,  

        189u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        15u,  
        0u,  
        0u,  

        15u,  

        29u,  

        190u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        16u,  
        0u,  
        0u,  

        39u,  

        29u,  

        191u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        17u,  
        0u,  
        0u,  

        35u,  

        29u,  

        192u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        18u,  
        0u,  
        0u,  

        31u,  

        29u,  

        193u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        19u,  
        0u,  
        0u,  

        27u,  

        29u,  

        194u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        20u,  
        0u,  
        0u,  

        23u,  

        29u,  

        195u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        21u,  
        0u,  
        0u,  

        19u,  

        29u,  

        196u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        22u,  
        0u,  
        0u,  

        11u,  

        29u,  

        197u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        23u,  
        0u,  
        0u,  

        7u,  

        29u,  

        198u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        24u,  
        0u,  
        0u,  

        3u,  

        29u,  

        199u,  

        0u,  
        32u,  
        4u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_TRIGGERED,

        0x1u,   

    },
    {
         
        518u,  
        0u,  
        0u,  

        1u,  

        30u,  

        200u,  

        7u,  
        8u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        197u,  
        0u,  
        0u,  

        1u,  

        30u,  

        201u,  

        6u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        0x1u,   

    },
    {
         
        25u,  
        0u,  
        0u,  

        7u,  

        32u,  

        202u,  

        0u,  
        24u,  
        3u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_PENDING,

        0x1u,   

    },
    {
         
        26u,  
        0u,  
        0u,  

        4u,  

        32u,  

        203u,  

        0u,  
        24u,  
        3u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT32,
        COM_PENDING,

        0x1u,   

    },
    {
         
        522u,  
        0u,  
        0u,  

        1u,  

        32u,  

        204u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        523u,  
        0u,  
        0u,  

        0u,  

        32u,  

        205u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        53u,  
        0u,  
        0u,  

        7u,  

        33u,  

        206u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        54u,  
        0u,  
        0u,  

        5u,  

        33u,  

        207u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        537u,  
        0u,  
        0u,  

        3u,  

        33u,  

        208u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        538u,  
        0u,  
        0u,  

        2u,  

        33u,  

        209u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        539u,  
        0u,  
        0u,  

        1u,  

        33u,  

        210u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        540u,  
        0u,  
        0u,  

        0u,  

        33u,  

        211u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        89u,  
        0u,  
        0u,  

        5u,  

        34u,  

        212u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        90u,  
        0u,  
        0u,  

        3u,  

        34u,  

        213u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        782u,  
        0u,  
        0u,  

        1u,  

        34u,  

        214u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        783u,  
        0u,  
        0u,  

        0u,  

        34u,  

        215u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_UINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        47u,  
        0u,  
        0u,  

        7u,  

        35u,  

        216u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        48u,  
        0u,  
        0u,  

        5u,  

        35u,  

        217u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        49u,  
        0u,  
        0u,  

        3u,  

        35u,  

        218u,  

        0u,  
        16u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        520u,  
        0u,  
        0u,  

        1u,  

        35u,  

        219u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        521u,  
        0u,  
        0u,  

        0u,  

        35u,  

        220u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        198u,  
        0u,  
        0u,  

        2u,  

        39u,  

        221u,  

        3u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        0x1u,   

    },
    {
         
        519u,  
        0u,  
        0u,  

        2u,  

        39u,  

        222u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        536u,  
        0u,  
        0u,  

        6u,  

        41u,  

        223u,  

        4u,  
        4u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        50u,  
        0u,  
        0u,  

        5u,  

        41u,  

        224u,  

        1u,  
        15u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        51u,  
        0u,  
        0u,  

        3u,  

        41u,  

        225u,  

        1u,  
        15u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        52u,  
        0u,  
        0u,  

        1u,  

        41u,  

        226u,  

        1u,  
        15u,  
        2u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT16,
        COM_PENDING,

        0x1u,   

    },
    {
         
        535u,  
        0u,  
        0u,  

        7u,  

        41u,  

        227u,  

        0u,  
        8u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        524u,  
        0u,  
        0u,  

        7u,  

        42u,  

        228u,  

        2u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        525u,  
        0u,  
        0u,  

        6u,  

        42u,  

        229u,  

        0u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        526u,  
        0u,  
        0u,  

        5u,  

        42u,  

        230u,  

        2u,  
        6u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        527u,  
        0u,  
        0u,  

        4u,  

        42u,  

        231u,  

        3u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        528u,  
        0u,  
        0u,  

        4u,  

        42u,  

        232u,  

        0u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        199u,  
        0u,  
        0u,  

        3u,  

        42u,  

        233u,  

        7u,  
        1u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,
        COM_PENDING,

        0x1u,   

    },
    {
         
        529u,  
        0u,  
        0u,  

        3u,  

        42u,  

        234u,  

        5u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        530u,  
        0u,  
        0u,  

        2u,  

        42u,  

        235u,  

        6u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        531u,  
        0u,  
        0u,  

        2u,  

        42u,  

        236u,  

        1u,  
        5u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        532u,  
        0u,  
        0u,  

        1u,  

        42u,  

        237u,  

        2u,  
        3u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        533u,  
        0u,  
        0u,  

        1u,  

        42u,  

        238u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
    {
         
        534u,  
        0u,  
        0u,  

        0u,  

        42u,  

        239u,  

        0u,  
        2u,  
        1u,   

        0u,
        COM_BIG_ENDIAN,
        COM_SINT8,
        COM_PENDING,

        0x1u,   

    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_RxSignalGroupType Com_RxSignalGroup[34u]=
{
    {
         

        &Rte_COMCbk_IICBAD_ZONE_20ms_Group13_ICBAD_ZONE_CHCANFD_20ms_FrP13_CONTROLLER_0_IAM_Rx,

        0u,
        14u,

        4u,

    },
    {
         

        &Rte_COMCbk_ITC_ZONE_10ms_Group01_TC_ZONE_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        14u,
        24u,

        5u,

    },
    {
         

        &Rte_COMCbk_IECM_010ms_Group00_ECM_ERCANFD_10ms_FrP00_CONTROLLER_0_IAM_Rx,

        24u,
        37u,

        8u,

    },
    {
         

        &Rte_COMCbk_ILHZCU_10ms_Group01_LHZCU_LHBKBCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        37u,
        61u,

        9u,

    },
    {
         

        &Rte_COMCbk_IRZCU_10ms_Group01_RZCU_PTCANFD_10ms_FrP01_CONTROLLER_0_IAM_Rx,

        61u,
        79u,

        10u,

    },
    {
         

        &Rte_COMCbk_IIBS_10ms_Group04_IBS_CHCANFD_10ms_FrP04_CONTROLLER_0_IAM_Rx,

        79u,
        90u,

        11u,

    },
    {
         

        &Rte_COMCbk_IRZCU_10ms_Group22_RZCU_RZCUCANFD_10ms_FrP22_NoSecO_CONTROLLER_0_IAM_Rx,

        90u,
        105u,

        16u,

    },
    {
         

        &Rte_COMCbk_IESS_20ms_Group01_ESS_PTCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        105u,
        115u,

        17u,

    },
    {
         

        &Rte_COMCbk_ISDM_20ms_Group01_SDM_CHCANFD_20ms_FrP01_CONTROLLER_0_IAM_Rx,

        115u,
        149u,

        21u,

    },
    {
         

        &Rte_COMCbk_IPEU_100ms_Group03_PEU_PTCANFD_100ms_FrP03_CONTROLLER_0_IAM_Rx,

        149u,
        168u,

        23u,

    },
    {
         

        &Rte_COMCbk_IICBAD_20ms_Group07_ICBAD_BKPCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        168u,
        193u,

        24u,

    },
    {
         

        &Rte_COMCbk_ISDM_20ms_Group02_SDM_CHCANFD_20ms_FrP02_CONTROLLER_0_IAM_Rx,

        193u,
        213u,

        25u,

    },
    {
         

        &Rte_COMCbk_IRZCU_20ms_Group06_RZCU_PTCANFD_20ms_FrP06_CONTROLLER_0_IAM_Rx,

        213u,
        228u,

        26u,

    },
    {
         

        &Rte_COMCbk_IIBS_20ms_Group07_IBS_CHCANFD_20ms_FrP07_CONTROLLER_0_IAM_Rx,

        228u,
        264u,

        27u,

    },
    {
         

        &Rte_COMCbk_IICBAD_20ms_Group12_ICBAD_RZCUCANFD_20ms_FrP12_CONTROLLER_0_IAM_Rx,

        264u,
        274u,

        28u,

    },
    {
         

        &Rte_COMCbk_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,

        274u,
        284u,

        29u,

    },
    {
         

        &Rte_COMCbk_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,

        284u,
        305u,

        31u,

    },
    {
         

        &Rte_COMCbk_IESS_50ms_Group14_ESS_PTCANFD_50ms_FrP14_CONTROLLER_0_IAM_Rx,

        305u,
        321u,

        33u,

    },
    {
         

        &Rte_COMCbk_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,

        321u,
        369u,

        44u,

    },
    {
         

        &Rte_COMCbk_ILHZCU_50ms_Group06_LHZCU_LHBKBCANFD_50ms_FrP06_CONTROLLER_0_IAM_Rx,

        369u,
        384u,

        45u,

    },
    {
         

        &Rte_COMCbk_IESS_100ms_Group33_ESS_PTEXTDCAN_100ms_FrP33_CONTROLLER_0_IAM_Rx,

        384u,
        393u,

        46u,

    },
    {
         

        &Rte_COMCbk_IPEU_100ms_Group15_PEU_ERCANFD_100ms_FrP15_CONTROLLER_0_IAM_Rx,

        393u,
        439u,

        50u,

    },
    {
         

        &Rte_COMCbk_IESS_100ms_Group20_ESS_PTCANFD_100ms_FrP20_CONTROLLER_0_IAM_Rx,

        439u,
        453u,

        55u,

    },
    {
         

        &Rte_COMCbk_IRZCU_100ms_Group10_RZCU_PTCANFD_100ms_FrP10_CONTROLLER_0_IAM_Rx,

        453u,
        476u,

        56u,

    },
    {
         

        &Rte_COMCbk_IESS_100ms_Group23_ESS_PTEXTDCAN_100ms_FrP23_CONTROLLER_0_IAM_Rx,

        476u,
        488u,

        59u,

    },
    {
         

        &Rte_COMCbk_ICCU_100ms_Group02_CCU_PTCANFD_100ms_FrP02_CONTROLLER_0_IAM_Rx,

        488u,
        502u,

        62u,

    },
    {
         

        &Rte_COMCbk_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,

        502u,
        511u,

        65u,

    },
    {
         

        &Rte_COMCbk_IESS_100ms_Group27_ESS_PTEXTDCAN_100ms_FrP27_CONTROLLER_0_IAM_Rx,

        511u,
        522u,

        71u,

    },
    {
         

        &Rte_COMCbk_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,

        522u,
        533u,

        76u,

    },
    {
         

        &Rte_COMCbk_ILVBM_100ms_Group01_LVBM_PTEXTDCAN_100ms_FrP04_CONTROLLER_0_IAM_Rx,

        533u,
        545u,

        80u,

    },
    {
         

        &Rte_COMCbk_IRZCU_100ms_Group12_RZCU_PTCANFD_100ms_FrP12_CONTROLLER_0_IAM_Rx,

        545u,
        557u,

        82u,

    },
    {
         

        &Rte_COMCbk_IIMCU_100ms_VCUSecyWrnng_Group01_RZCU_IMCU_SFCANFD_100ms_FrP26_CONTROLLER_0_IAM_Rx,

        557u,
        567u,

        86u,

    },
    {
         

        &Rte_COMCbk_IRZCU_100ms_Group21_RZCU_PTEXTDCAN_100ms_FrP21_CONTROLLER_0_IAM_Rx,

        567u,
        581u,

        92u,

    },
    {
         

        &Rte_COMCbk_IICBVC_200ms_Group79_ICBVC_RZCUCANFD_200ms_FrP79_CONTROLLER_0_IAM_Rx,

        581u,
        590u,

        95u,

    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_ErrorAndNotificationType Com_TxSignalGroupErrorAndNotification[8u] =
{
     

    &Rte_COMCbkTAck_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_100ms_Group56_IAM_ZONE_CONNCANFD_100ms_FrP56_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group13_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_100ms_Group08_IAM_CONNCANFD_100ms_ConFrP02_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group34_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group35_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group40_IAM_CONNCANFD_100ms_ConFrP03_CONTROLLER_0_IAM_Tx,
     

    &Rte_COMCbkTAck_IIAM_ZONE_100ms_Group57_IAM_CONNCANFD_100ms_ConFrP41_CONTROLLER_0_IAM_Tx,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_TxSignalGroupType Com_TxSignalGroup[8u]=
{
    {
     

        0u,
        6u,

        8u,

        0u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        6u,
        12u,

        21u,

        1u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        12u,
        18u,

        31u,

        2u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        18u,
        24u,

        36u,

        3u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        24u,
        33u,

        37u,

        4u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        33u,
        38u,

        38u,

        5u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        38u,
        44u,

        40u,

        6u,

        0x1u,

        0u,
        COM_PENDING,
     },
    {
     

        44u,
        49u,

        43u,

        7u,

        0x1u,

        0u,
        COM_PENDING,
     },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_RxGroupSignalType Com_RxGroupSignal[590u]=
{
    {
         
        0u,
        0u,0u,
        (0xFFFFu),

        0u,
        0u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        1u,
        0u,0u,
        (0xFFFFu),

        1u,
        0u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        0u,
        0u,0u,
        (0xFFFFu),

        1u,
        0u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        2u,
        0u,0u,
        (0xFFFFu),

        1u,
        0u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        3u,
        0u,0u,
        (0xFFFFu),

        2u,
        0u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        4u,
        0u,0u,
        (0xFFFFu),

        2u,
        0u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        5u,
        0u,0u,
        (0xFFFFu),

        2u,
        0u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        6u,
        0u,0u,
        (0xFFFFu),

        3u,
        0u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        7u,
        0u,0u,
        (0xFFFFu),

        3u,
        0u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        8u,
        0u,0u,
        (0xFFFFu),

        3u,
        0u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        9u,
        0u,0u,
        (0xFFFFu),

        4u,
        0u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        10u,
        0u,0u,
        (0xFFFFu),

        5u,
        0u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        11u,
        0u,0u,
        (0xFFFFu),

        6u,
        0u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        12u,
        0u,0u,
        (0xFFFFu),

        7u,
        0u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        13u,
        0u,0u,
        (0xFFFFu),

        0u,
        1u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        14u,
        0u,0u,
        (0xFFFFu),

        1u,
        1u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        15u,
        0u,0u,
        (0xFFFFu),

        1u,
        1u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        0u,
        0u,0u,
        (0xFFFFu),

        3u,
        1u,

        5u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        1u,
        0u,0u,
        (0xFFFFu),

        4u,
        1u,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        1u,
        0u,0u,
        (0xFFFFu),

        3u,
        1u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        2u,
        0u,0u,
        (0xFFFFu),

        3u,
        1u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        2u,
        0u,0u,
        (0xFFFFu),

        6u,
        1u,

        6u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        3u,
        0u,0u,
        (0xFFFFu),

        7u,
        1u,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        16u,
        0u,0u,
        (0xFFFFu),

        6u,
        1u,

        3u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        17u,
        0u,0u,
        (0xFFFFu),

        0u,
        2u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        18u,
        0u,0u,
        (0xFFFFu),

        1u,
        2u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        3u,
        0u,0u,
        (0xFFFFu),

        1u,
        2u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        4u,
        0u,0u,
        (0xFFFFu),

        1u,
        2u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        19u,
        0u,0u,
        (0xFFFFu),

        1u,
        2u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        4u,
        0u,0u,
        (0xFFFFu),

        3u,
        2u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        5u,
        0u,0u,
        (0xFFFFu),

        4u,
        2u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        6u,
        0u,0u,
        (0xFFFFu),

        4u,
        2u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        20u,
        0u,0u,
        (0xFFFFu),

        4u,
        2u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        5u,
        0u,0u,
        (0xFFFFu),

        6u,
        2u,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        21u,
        0u,0u,
        (0xFFFFu),

        6u,
        2u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        22u,
        0u,0u,
        (0xFFFFu),

        7u,
        2u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        23u,
        0u,0u,
        (0xFFFFu),

        7u,
        2u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        24u,
        0u,0u,
        (0xFFFFu),

        0u,
        3u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        25u,
        0u,0u,
        (0xFFFFu),

        1u,
        3u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        26u,
        0u,0u,
        (0xFFFFu),

        1u,
        3u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        27u,
        0u,0u,
        (0xFFFFu),

        1u,
        3u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        28u,
        0u,0u,
        (0xFFFFu),

        2u,
        3u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        29u,
        0u,0u,
        (0xFFFFu),

        2u,
        3u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        7u,
        0u,0u,
        (0xFFFFu),

        3u,
        3u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        30u,
        0u,0u,
        (0xFFFFu),

        3u,
        3u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        8u,
        0u,0u,
        (0xFFFFu),

        3u,
        3u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        31u,
        0u,0u,
        (0xFFFFu),

        3u,
        3u,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        9u,
        0u,0u,
        (0xFFFFu),

        3u,
        3u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        32u,
        0u,0u,
        (0xFFFFu),

        4u,
        3u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        10u,
        0u,0u,
        (0xFFFFu),

        4u,
        3u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        11u,
        0u,0u,
        (0xFFFFu),

        4u,
        3u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        12u,
        0u,0u,
        (0xFFFFu),

        4u,
        3u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        33u,
        0u,0u,
        (0xFFFFu),

        4u,
        3u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        34u,
        0u,0u,
        (0xFFFFu),

        5u,
        3u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        35u,
        0u,0u,
        (0xFFFFu),

        5u,
        3u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        36u,
        0u,0u,
        (0xFFFFu),

        6u,
        3u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        13u,
        0u,0u,
        (0xFFFFu),

        6u,
        3u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        14u,
        0u,0u,
        (0xFFFFu),

        6u,
        3u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        15u,
        0u,0u,
        (0xFFFFu),

        6u,
        3u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        37u,
        0u,0u,
        (0xFFFFu),

        6u,
        3u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        38u,
        0u,0u,
        (0xFFFFu),

        7u,
        3u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        39u,
        0u,0u,
        (0xFFFFu),

        0u,
        4u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        40u,
        0u,0u,
        (0xFFFFu),

        1u,
        4u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        16u,
        0u,0u,
        (0xFFFFu),

        1u,
        4u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        17u,
        0u,0u,
        (0xFFFFu),

        1u,
        4u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        41u,
        0u,0u,
        (0xFFFFu),

        1u,
        4u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        18u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        19u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        42u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        20u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        21u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        22u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        23u,
        0u,0u,
        (0xFFFFu),

        2u,
        4u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        43u,
        0u,0u,
        (0xFFFFu),

        3u,
        4u,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        44u,
        0u,0u,
        (0xFFFFu),

        3u,
        4u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        45u,
        0u,0u,
        (0xFFFFu),

        4u,
        4u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        46u,
        0u,0u,
        (0xFFFFu),

        5u,
        4u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        47u,
        0u,0u,
        (0xFFFFu),

        6u,
        4u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        48u,
        0u,0u,
        (0xFFFFu),

        7u,
        4u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        49u,
        0u,0u,
        (0xFFFFu),

        0u,
        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        50u,
        0u,0u,
        (0xFFFFu),

        1u,
        5u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        51u,
        0u,0u,
        (0xFFFFu),

        1u,
        5u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        52u,
        0u,0u,
        (0xFFFFu),

        2u,
        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        53u,
        0u,0u,
        (0xFFFFu),

        3u,
        5u,

        0u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        24u,
        0u,0u,
        (0xFFFFu),

        3u,
        5u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        25u,
        0u,0u,
        (0xFFFFu),

        3u,
        5u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        54u,
        0u,0u,
        (0xFFFFu),

        4u,
        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        55u,
        0u,0u,
        (0xFFFFu),

        5u,
        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        56u,
        0u,0u,
        (0xFFFFu),

        6u,
        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        57u,
        0u,0u,
        (0xFFFFu),

        7u,
        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        58u,
        0u,0u,
        (0xFFFFu),

        0u,
        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        59u,
        0u,0u,
        (0xFFFFu),

        1u,
        6u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        60u,
        0u,0u,
        (0xFFFFu),

        1u,
        6u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        26u,
        0u,0u,
        (0xFFFFu),

        1u,
        6u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        27u,
        0u,0u,
        (0xFFFFu),

        1u,
        6u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        6u,
        0u,0u,
        (0xFFFFu),

        3u,
        6u,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        7u,
        0u,0u,
        (0xFFFFu),

        4u,
        6u,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        8u,
        0u,0u,
        (0xFFFFu),

        6u,
        6u,

        0u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        28u,
        0u,0u,
        (0xFFFFu),

        5u,
        6u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        61u,
        0u,0u,
        (0xFFFFu),

        5u,
        6u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        62u,
        0u,0u,
        (0xFFFFu),

        7u,
        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        63u,
        0u,0u,
        (0xFFFFu),

        8u,
        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        64u,
        0u,0u,
        (0xFFFFu),

        9u,
        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        65u,
        0u,0u,
        (0xFFFFu),

        10u,
        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        66u,
        0u,0u,
        (0xFFFFu),

        11u,
        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        67u,
        0u,0u,
        (0xFFFFu),

        0u,
        7u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        68u,
        0u,0u,
        (0xFFFFu),

        1u,
        7u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        29u,
        0u,0u,
        (0xFFFFu),

        1u,
        7u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        30u,
        0u,0u,
        (0xFFFFu),

        1u,
        7u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        31u,
        0u,0u,
        (0xFFFFu),

        1u,
        7u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        32u,
        0u,0u,
        (0xFFFFu),

        1u,
        7u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        9u,
        0u,0u,
        (0xFFFFu),

        3u,
        7u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        10u,
        0u,0u,
        (0xFFFFu),

        5u,
        7u,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        11u,
        0u,0u,
        (0xFFFFu),

        6u,
        7u,

        2u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        12u,
        0u,0u,
        (0xFFFFu),

        7u,
        7u,

        0u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        69u,
        0u,0u,
        (0xFFFFu),

        0u,
        8u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        70u,
        0u,0u,
        (0xFFFFu),

        1u,
        8u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        33u,
        0u,0u,
        (0xFFFFu),

        1u,
        8u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        34u,
        0u,0u,
        (0xFFFFu),

        1u,
        8u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        35u,
        0u,0u,
        (0xFFFFu),

        1u,
        8u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        36u,
        0u,0u,
        (0xFFFFu),

        1u,
        8u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        37u,
        0u,0u,
        (0xFFFFu),

        2u,
        8u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        71u,
        0u,0u,
        (0xFFFFu),

        2u,
        8u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        72u,
        0u,0u,
        (0xFFFFu),

        2u,
        8u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        38u,
        0u,0u,
        (0xFFFFu),

        2u,
        8u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        39u,
        0u,0u,
        (0xFFFFu),

        2u,
        8u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        40u,
        0u,0u,
        (0xFFFFu),

        2u,
        8u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        41u,
        0u,0u,
        (0xFFFFu),

        3u,
        8u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        42u,
        0u,0u,
        (0xFFFFu),

        3u,
        8u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        43u,
        0u,0u,
        (0xFFFFu),

        3u,
        8u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        44u,
        0u,0u,
        (0xFFFFu),

        3u,
        8u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        73u,
        0u,0u,
        (0xFFFFu),

        3u,
        8u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        74u,
        0u,0u,
        (0xFFFFu),

        3u,
        8u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        75u,
        0u,0u,
        (0xFFFFu),

        4u,
        8u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        45u,
        0u,0u,
        (0xFFFFu),

        4u,
        8u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        46u,
        0u,0u,
        (0xFFFFu),

        4u,
        8u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        76u,
        0u,0u,
        (0xFFFFu),

        4u,
        8u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        47u,
        0u,0u,
        (0xFFFFu),

        4u,
        8u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        48u,
        0u,0u,
        (0xFFFFu),

        4u,
        8u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        77u,
        0u,0u,
        (0xFFFFu),

        5u,
        8u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        49u,
        0u,0u,
        (0xFFFFu),

        5u,
        8u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        50u,
        0u,0u,
        (0xFFFFu),

        5u,
        8u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        78u,
        0u,0u,
        (0xFFFFu),

        5u,
        8u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        51u,
        0u,0u,
        (0xFFFFu),

        5u,
        8u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        52u,
        0u,0u,
        (0xFFFFu),

        5u,
        8u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        53u,
        0u,0u,
        (0xFFFFu),

        6u,
        8u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        54u,
        0u,0u,
        (0xFFFFu),

        6u,
        8u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        79u,
        0u,0u,
        (0xFFFFu),

        6u,
        8u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        80u,
        0u,0u,
        (0xFFFFu),

        7u,
        8u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        81u,
        0u,0u,
        (0xFFFFu),

        0u,
        9u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        82u,
        0u,0u,
        (0xFFFFu),

        1u,
        9u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        55u,
        0u,0u,
        (0xFFFFu),

        1u,
        9u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        83u,
        0u,0u,
        (0xFFFFu),

        1u,
        9u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        84u,
        0u,0u,
        (0xFFFFu),

        2u,
        9u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        85u,
        0u,0u,
        (0xFFFFu),

        3u,
        9u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        86u,
        0u,0u,
        (0xFFFFu),

        5u,
        9u,

        7u,
        2u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        56u,
        0u,0u,
        (0xFFFFu),

        4u,
        9u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        57u,
        0u,0u,
        (0xFFFFu),

        4u,
        9u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        58u,
        0u,0u,
        (0xFFFFu),

        4u,
        9u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        59u,
        0u,0u,
        (0xFFFFu),

        4u,
        9u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        87u,
        0u,0u,
        (0xFFFFu),

        4u,
        9u,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        60u,
        0u,0u,
        (0xFFFFu),

        4u,
        9u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        88u,
        0u,0u,
        (0xFFFFu),

        5u,
        9u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        89u,
        0u,0u,
        (0xFFFFu),

        5u,
        9u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        61u,
        0u,0u,
        (0xFFFFu),

        5u,
        9u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        62u,
        0u,0u,
        (0xFFFFu),

        5u,
        9u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        90u,
        0u,0u,
        (0xFFFFu),

        6u,
        9u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        91u,
        0u,0u,
        (0xFFFFu),

        7u,
        9u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        92u,
        0u,0u,
        (0xFFFFu),

        0u,
        10u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        93u,
        0u,0u,
        (0xFFFFu),

        1u,
        10u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        63u,
        0u,0u,
        (0xFFFFu),

        1u,
        10u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        64u,
        0u,0u,
        (0xFFFFu),

        1u,
        10u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        94u,
        0u,0u,
        (0xFFFFu),

        1u,
        10u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        13u,
        0u,0u,
        (0xFFFFu),

        3u,
        10u,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        95u,
        0u,0u,
        (0xFFFFu),

        2u,
        10u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        96u,
        0u,0u,
        (0xFFFFu),

        2u,
        10u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        14u,
        0u,0u,
        (0xFFFFu),

        5u,
        10u,

        0u,
        11u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        97u,
        0u,0u,
        (0xFFFFu),

        4u,
        10u,

        3u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        65u,
        0u,0u,
        (0xFFFFu),

        4u,
        10u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        66u,
        0u,0u,
        (0xFFFFu),

        4u,
        10u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        67u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        68u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        69u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        70u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        71u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        72u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        98u,
        0u,0u,
        (0xFFFFu),

        6u,
        10u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        73u,
        0u,0u,
        (0xFFFFu),

        7u,
        10u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        74u,
        0u,0u,
        (0xFFFFu),

        7u,
        10u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        75u,
        0u,0u,
        (0xFFFFu),

        7u,
        10u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        76u,
        0u,0u,
        (0xFFFFu),

        7u,
        10u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        77u,
        0u,0u,
        (0xFFFFu),

        7u,
        10u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        99u,
        0u,0u,
        (0xFFFFu),

        7u,
        10u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        100u,
        0u,0u,
        (0xFFFFu),

        0u,
        11u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        101u,
        0u,0u,
        (0xFFFFu),

        1u,
        11u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        102u,
        0u,0u,
        (0xFFFFu),

        1u,
        11u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        78u,
        0u,0u,
        (0xFFFFu),

        1u,
        11u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        79u,
        0u,0u,
        (0xFFFFu),

        1u,
        11u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        80u,
        0u,0u,
        (0xFFFFu),

        2u,
        11u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        81u,
        0u,0u,
        (0xFFFFu),

        2u,
        11u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        82u,
        0u,0u,
        (0xFFFFu),

        2u,
        11u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        103u,
        0u,0u,
        (0xFFFFu),

        2u,
        11u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        83u,
        0u,0u,
        (0xFFFFu),

        2u,
        11u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        104u,
        0u,0u,
        (0xFFFFu),

        2u,
        11u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        105u,
        0u,0u,
        (0xFFFFu),

        3u,
        11u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        106u,
        0u,0u,
        (0xFFFFu),

        4u,
        11u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        107u,
        0u,0u,
        (0xFFFFu),

        5u,
        11u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        108u,
        0u,0u,
        (0xFFFFu),

        7u,
        11u,

        5u,
        7u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        109u,
        0u,0u,
        (0xFFFFu),

        6u,
        11u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        84u,
        0u,0u,
        (0xFFFFu),

        6u,
        11u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        85u,
        0u,0u,
        (0xFFFFu),

        6u,
        11u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        110u,
        0u,0u,
        (0xFFFFu),

        7u,
        11u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        111u,
        0u,0u,
        (0xFFFFu),

        7u,
        11u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        112u,
        0u,0u,
        (0xFFFFu),

        0u,
        12u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        113u,
        0u,0u,
        (0xFFFFu),

        1u,
        12u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        86u,
        0u,0u,
        (0xFFFFu),

        1u,
        12u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        87u,
        0u,0u,
        (0xFFFFu),

        1u,
        12u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        88u,
        0u,0u,
        (0xFFFFu),

        1u,
        12u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        89u,
        0u,0u,
        (0xFFFFu),

        1u,
        12u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        114u,
        0u,0u,
        (0xFFFFu),

        2u,
        12u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        115u,
        0u,0u,
        (0xFFFFu),

        2u,
        12u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        90u,
        0u,0u,
        (0xFFFFu),

        3u,
        12u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        91u,
        0u,0u,
        (0xFFFFu),

        3u,
        12u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        116u,
        0u,0u,
        (0xFFFFu),

        3u,
        12u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        117u,
        0u,0u,
        (0xFFFFu),

        4u,
        12u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        118u,
        0u,0u,
        (0xFFFFu),

        5u,
        12u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        119u,
        0u,0u,
        (0xFFFFu),

        6u,
        12u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        120u,
        0u,0u,
        (0xFFFFu),

        7u,
        12u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        121u,
        0u,0u,
        (0xFFFFu),

        0u,
        13u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        122u,
        0u,0u,
        (0xFFFFu),

        1u,
        13u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        123u,
        0u,0u,
        (0xFFFFu),

        1u,
        13u,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        92u,
        0u,0u,
        (0xFFFFu),

        1u,
        13u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        93u,
        0u,0u,
        (0xFFFFu),

        2u,
        13u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        94u,
        0u,0u,
        (0xFFFFu),

        2u,
        13u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        124u,
        0u,0u,
        (0xFFFFu),

        2u,
        13u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        125u,
        0u,0u,
        (0xFFFFu),

        2u,
        13u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        95u,
        0u,0u,
        (0xFFFFu),

        3u,
        13u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        96u,
        0u,0u,
        (0xFFFFu),

        3u,
        13u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        126u,
        0u,0u,
        (0xFFFFu),

        3u,
        13u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        127u,
        0u,0u,
        (0xFFFFu),

        3u,
        13u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        97u,
        0u,0u,
        (0xFFFFu),

        4u,
        13u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        98u,
        0u,0u,
        (0xFFFFu),

        4u,
        13u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        99u,
        0u,0u,
        (0xFFFFu),

        4u,
        13u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        128u,
        0u,0u,
        (0xFFFFu),

        4u,
        13u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        129u,
        0u,0u,
        (0xFFFFu),

        4u,
        13u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        100u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        101u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        102u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        103u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        104u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        105u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        106u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        107u,
        0u,0u,
        (0xFFFFu),

        5u,
        13u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        108u,
        0u,0u,
        (0xFFFFu),

        6u,
        13u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        109u,
        0u,0u,
        (0xFFFFu),

        6u,
        13u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        110u,
        0u,0u,
        (0xFFFFu),

        6u,
        13u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        111u,
        0u,0u,
        (0xFFFFu),

        6u,
        13u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        112u,
        0u,0u,
        (0xFFFFu),

        6u,
        13u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        130u,
        0u,0u,
        (0xFFFFu),

        6u,
        13u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        131u,
        0u,0u,
        (0xFFFFu),

        7u,
        13u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        132u,
        0u,0u,
        (0xFFFFu),

        7u,
        13u,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        133u,
        0u,0u,
        (0xFFFFu),

        7u,
        13u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        113u,
        0u,0u,
        (0xFFFFu),

        7u,
        13u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        114u,
        0u,0u,
        (0xFFFFu),

        7u,
        13u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        134u,
        0u,0u,
        (0xFFFFu),

        0u,
        14u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        135u,
        0u,0u,
        (0xFFFFu),

        1u,
        14u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        136u,
        0u,0u,
        (0xFFFFu),

        1u,
        14u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        137u,
        0u,0u,
        (0xFFFFu),

        2u,
        14u,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        138u,
        0u,0u,
        (0xFFFFu),

        2u,
        14u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        139u,
        0u,0u,
        (0xFFFFu),

        3u,
        14u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        140u,
        0u,0u,
        (0xFFFFu),

        4u,
        14u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        141u,
        0u,0u,
        (0xFFFFu),

        5u,
        14u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        142u,
        0u,0u,
        (0xFFFFu),

        6u,
        14u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        143u,
        0u,0u,
        (0xFFFFu),

        7u,
        14u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        144u,
        0u,0u,
        (0xFFFFu),

        0u,
        15u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        145u,
        0u,0u,
        (0xFFFFu),

        1u,
        15u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        146u,
        0u,0u,
        (0xFFFFu),

        1u,
        15u,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        115u,
        0u,0u,
        (0xFFFFu),

        1u,
        15u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        15u,
        0u,0u,
        (0xFFFFu),

        3u,
        15u,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        116u,
        0u,0u,
        (0xFFFFu),

        2u,
        15u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        16u,
        0u,0u,
        (0xFFFFu),

        5u,
        15u,

        1u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        117u,
        0u,0u,
        (0xFFFFu),

        5u,
        15u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        17u,
        0u,0u,
        (0xFFFFu),

        7u,
        15u,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        118u,
        0u,0u,
        (0xFFFFu),

        6u,
        15u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        147u,
        0u,0u,
        (0xFFFFu),

        0u,
        16u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        148u,
        0u,0u,
        (0xFFFFu),

        1u,
        16u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        149u,
        0u,0u,
        (0xFFFFu),

        1u,
        16u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        150u,
        0u,0u,
        (0xFFFFu),

        2u,
        16u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        119u,
        0u,0u,
        (0xFFFFu),

        2u,
        16u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        151u,
        0u,0u,
        (0xFFFFu),

        2u,
        16u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        152u,
        0u,0u,
        (0xFFFFu),

        3u,
        16u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        153u,
        0u,0u,
        (0xFFFFu),

        3u,
        16u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        120u,
        0u,0u,
        (0xFFFFu),

        4u,
        16u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        121u,
        0u,0u,
        (0xFFFFu),

        4u,
        16u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        122u,
        0u,0u,
        (0xFFFFu),

        4u,
        16u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        123u,
        0u,0u,
        (0xFFFFu),

        4u,
        16u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        154u,
        0u,0u,
        (0xFFFFu),

        4u,
        16u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        155u,
        0u,0u,
        (0xFFFFu),

        5u,
        16u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        124u,
        0u,0u,
        (0xFFFFu),

        6u,
        16u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        156u,
        0u,0u,
        (0xFFFFu),

        6u,
        16u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        125u,
        0u,0u,
        (0xFFFFu),

        6u,
        16u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        157u,
        0u,0u,
        (0xFFFFu),

        6u,
        16u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        158u,
        0u,0u,
        (0xFFFFu),

        7u,
        16u,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        126u,
        0u,0u,
        (0xFFFFu),

        7u,
        16u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        159u,
        0u,0u,
        (0xFFFFu),

        7u,
        16u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        160u,
        0u,0u,
        (0xFFFFu),

        0u,
        17u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        161u,
        0u,0u,
        (0xFFFFu),

        1u,
        17u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        162u,
        0u,0u,
        (0xFFFFu),

        1u,
        17u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        163u,
        0u,0u,
        (0xFFFFu),

        2u,
        17u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        164u,
        0u,0u,
        (0xFFFFu),

        2u,
        17u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        165u,
        0u,0u,
        (0xFFFFu),

        3u,
        17u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        127u,
        0u,0u,
        (0xFFFFu),

        3u,
        17u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        128u,
        0u,0u,
        (0xFFFFu),

        3u,
        17u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        166u,
        0u,0u,
        (0xFFFFu),

        3u,
        17u,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        129u,
        0u,0u,
        (0xFFFFu),

        3u,
        17u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        167u,
        0u,0u,
        (0xFFFFu),

        4u,
        17u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        168u,
        0u,0u,
        (0xFFFFu),

        4u,
        17u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        169u,
        0u,0u,
        (0xFFFFu),

        5u,
        17u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        170u,
        0u,0u,
        (0xFFFFu),

        5u,
        17u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        18u,
        0u,0u,
        (0xFFFFu),

        7u,
        17u,

        2u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        171u,
        0u,0u,
        (0xFFFFu),

        7u,
        17u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        172u,
        0u,0u,
        (0xFFFFu),

        0u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        173u,
        0u,0u,
        (0xFFFFu),

        1u,
        18u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        174u,
        0u,0u,
        (0xFFFFu),

        1u,
        18u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        175u,
        0u,0u,
        (0xFFFFu),

        2u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        130u,
        0u,0u,
        (0xFFFFu),

        3u,
        18u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        176u,
        0u,0u,
        (0xFFFFu),

        3u,
        18u,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        131u,
        0u,0u,
        (0xFFFFu),

        4u,
        18u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        177u,
        0u,0u,
        (0xFFFFu),

        4u,
        18u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        178u,
        0u,0u,
        (0xFFFFu),

        4u,
        18u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        132u,
        0u,0u,
        (0xFFFFu),

        5u,
        18u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        179u,
        0u,0u,
        (0xFFFFu),

        5u,
        18u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        180u,
        0u,0u,
        (0xFFFFu),

        5u,
        18u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        181u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        7u,
        3u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        182u,
        0u,0u,
        (0xFFFFu),

        6u,
        18u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        133u,
        0u,0u,
        (0xFFFFu),

        6u,
        18u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        134u,
        0u,0u,
        (0xFFFFu),

        6u,
        18u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        135u,
        0u,0u,
        (0xFFFFu),

        6u,
        18u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        136u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        137u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        138u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        139u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        140u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        141u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        142u,
        0u,0u,
        (0xFFFFu),

        7u,
        18u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        143u,
        0u,0u,
        (0xFFFFu),

        8u,
        18u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        183u,
        0u,0u,
        (0xFFFFu),

        8u,
        18u,

        1u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        144u,
        0u,0u,
        (0xFFFFu),

        8u,
        18u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        145u,
        0u,0u,
        (0xFFFFu),

        8u,
        18u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        184u,
        0u,0u,
        (0xFFFFu),

        8u,
        18u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        185u,
        0u,0u,
        (0xFFFFu),

        9u,
        18u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        146u,
        0u,0u,
        (0xFFFFu),

        9u,
        18u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        147u,
        0u,0u,
        (0xFFFFu),

        9u,
        18u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        148u,
        0u,0u,
        (0xFFFFu),

        9u,
        18u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        186u,
        0u,0u,
        (0xFFFFu),

        9u,
        18u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        187u,
        0u,0u,
        (0xFFFFu),

        10u,
        18u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        188u,
        0u,0u,
        (0xFFFFu),

        10u,
        18u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        189u,
        0u,0u,
        (0xFFFFu),

        10u,
        18u,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        149u,
        0u,0u,
        (0xFFFFu),

        10u,
        18u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        190u,
        0u,0u,
        (0xFFFFu),

        11u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        191u,
        0u,0u,
        (0xFFFFu),

        12u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        192u,
        0u,0u,
        (0xFFFFu),

        13u,
        18u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        193u,
        0u,0u,
        (0xFFFFu),

        13u,
        18u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        194u,
        0u,0u,
        (0xFFFFu),

        14u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        195u,
        0u,0u,
        (0xFFFFu),

        15u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        196u,
        0u,0u,
        (0xFFFFu),

        16u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        197u,
        0u,0u,
        (0xFFFFu),

        17u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        198u,
        0u,0u,
        (0xFFFFu),

        18u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        199u,
        0u,0u,
        (0xFFFFu),

        19u,
        18u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        200u,
        0u,0u,
        (0xFFFFu),

        0u,
        19u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        201u,
        0u,0u,
        (0xFFFFu),

        1u,
        19u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        202u,
        0u,0u,
        (0xFFFFu),

        1u,
        19u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        203u,
        0u,0u,
        (0xFFFFu),

        1u,
        19u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        150u,
        0u,0u,
        (0xFFFFu),

        2u,
        19u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        204u,
        0u,0u,
        (0xFFFFu),

        2u,
        19u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        205u,
        0u,0u,
        (0xFFFFu),

        2u,
        19u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        206u,
        0u,0u,
        (0xFFFFu),

        2u,
        19u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        207u,
        0u,0u,
        (0xFFFFu),

        3u,
        19u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        208u,
        0u,0u,
        (0xFFFFu),

        4u,
        19u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        209u,
        0u,0u,
        (0xFFFFu),

        5u,
        19u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        210u,
        0u,0u,
        (0xFFFFu),

        6u,
        19u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        211u,
        0u,0u,
        (0xFFFFu),

        6u,
        19u,

        3u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        212u,
        0u,0u,
        (0xFFFFu),

        6u,
        19u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        213u,
        0u,0u,
        (0xFFFFu),

        7u,
        19u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        214u,
        0u,0u,
        (0xFFFFu),

        0u,
        20u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        215u,
        0u,0u,
        (0xFFFFu),

        1u,
        20u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        216u,
        0u,0u,
        (0xFFFFu),

        1u,
        20u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        19u,
        0u,0u,
        (0xFFFFu),

        3u,
        20u,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        151u,
        0u,0u,
        (0xFFFFu),

        2u,
        20u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        217u,
        0u,0u,
        (0xFFFFu),

        4u,
        20u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        218u,
        0u,0u,
        (0xFFFFu),

        5u,
        20u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        219u,
        0u,0u,
        (0xFFFFu),

        6u,
        20u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        220u,
        0u,0u,
        (0xFFFFu),

        7u,
        20u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        221u,
        0u,0u,
        (0xFFFFu),

        0u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        222u,
        0u,0u,
        (0xFFFFu),

        1u,
        21u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        223u,
        0u,0u,
        (0xFFFFu),

        1u,
        21u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        224u,
        0u,0u,
        (0xFFFFu),

        1u,
        21u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        152u,
        0u,0u,
        (0xFFFFu),

        2u,
        21u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        225u,
        0u,0u,
        (0xFFFFu),

        2u,
        21u,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        153u,
        0u,0u,
        (0xFFFFu),

        3u,
        21u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        226u,
        0u,0u,
        (0xFFFFu),

        3u,
        21u,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        154u,
        0u,0u,
        (0xFFFFu),

        4u,
        21u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        227u,
        0u,0u,
        (0xFFFFu),

        4u,
        21u,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        228u,
        0u,0u,
        (0xFFFFu),

        5u,
        21u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        229u,
        0u,0u,
        (0xFFFFu),

        5u,
        21u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        155u,
        0u,0u,
        (0xFFFFu),

        6u,
        21u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        230u,
        0u,0u,
        (0xFFFFu),

        6u,
        21u,

        1u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        231u,
        0u,0u,
        (0xFFFFu),

        6u,
        21u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        156u,
        0u,0u,
        (0xFFFFu),

        7u,
        21u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        232u,
        0u,0u,
        (0xFFFFu),

        7u,
        21u,

        1u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        233u,
        0u,0u,
        (0xFFFFu),

        8u,
        21u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        234u,
        0u,0u,
        (0xFFFFu),

        8u,
        21u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        235u,
        0u,0u,
        (0xFFFFu),

        9u,
        21u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        236u,
        0u,0u,
        (0xFFFFu),

        9u,
        21u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        237u,
        0u,0u,
        (0xFFFFu),

        10u,
        21u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        238u,
        0u,0u,
        (0xFFFFu),

        10u,
        21u,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        239u,
        0u,0u,
        (0xFFFFu),

        10u,
        21u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        240u,
        0u,0u,
        (0xFFFFu),

        11u,
        21u,

        0u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        241u,
        0u,0u,
        (0xFFFFu),

        11u,
        21u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        242u,
        0u,0u,
        (0xFFFFu),

        12u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        243u,
        0u,0u,
        (0xFFFFu),

        13u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        244u,
        0u,0u,
        (0xFFFFu),

        14u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        245u,
        0u,0u,
        (0xFFFFu),

        15u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        246u,
        0u,0u,
        (0xFFFFu),

        16u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        247u,
        0u,0u,
        (0xFFFFu),

        17u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        248u,
        0u,0u,
        (0xFFFFu),

        18u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        249u,
        0u,0u,
        (0xFFFFu),

        19u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        250u,
        0u,0u,
        (0xFFFFu),

        20u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        251u,
        0u,0u,
        (0xFFFFu),

        21u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        252u,
        0u,0u,
        (0xFFFFu),

        22u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        253u,
        0u,0u,
        (0xFFFFu),

        23u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        254u,
        0u,0u,
        (0xFFFFu),

        24u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        255u,
        0u,0u,
        (0xFFFFu),

        25u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        256u,
        0u,0u,
        (0xFFFFu),

        26u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        257u,
        0u,0u,
        (0xFFFFu),

        27u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        258u,
        0u,0u,
        (0xFFFFu),

        28u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        259u,
        0u,0u,
        (0xFFFFu),

        29u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        260u,
        0u,0u,
        (0xFFFFu),

        30u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        261u,
        0u,0u,
        (0xFFFFu),

        31u,
        21u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        262u,
        0u,0u,
        (0xFFFFu),

        0u,
        22u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        263u,
        0u,0u,
        (0xFFFFu),

        1u,
        22u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        264u,
        0u,0u,
        (0xFFFFu),

        1u,
        22u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        265u,
        0u,0u,
        (0xFFFFu),

        2u,
        22u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        266u,
        0u,0u,
        (0xFFFFu),

        2u,
        22u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        267u,
        0u,0u,
        (0xFFFFu),

        3u,
        22u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        268u,
        0u,0u,
        (0xFFFFu),

        3u,
        22u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        269u,
        0u,0u,
        (0xFFFFu),

        4u,
        22u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        270u,
        0u,0u,
        (0xFFFFu),

        4u,
        22u,

        2u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        157u,
        0u,0u,
        (0xFFFFu),

        4u,
        22u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        271u,
        0u,0u,
        (0xFFFFu),

        4u,
        22u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        272u,
        0u,0u,
        (0xFFFFu),

        5u,
        22u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        273u,
        0u,0u,
        (0xFFFFu),

        6u,
        22u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        274u,
        0u,0u,
        (0xFFFFu),

        7u,
        22u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        275u,
        0u,0u,
        (0xFFFFu),

        0u,
        23u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        276u,
        0u,0u,
        (0xFFFFu),

        1u,
        23u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        277u,
        0u,0u,
        (0xFFFFu),

        1u,
        23u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        278u,
        0u,0u,
        (0xFFFFu),

        1u,
        23u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        279u,
        0u,0u,
        (0xFFFFu),

        2u,
        23u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        280u,
        0u,0u,
        (0xFFFFu),

        3u,
        23u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        281u,
        0u,0u,
        (0xFFFFu),

        4u,
        23u,

        0u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        282u,
        0u,0u,
        (0xFFFFu),

        4u,
        23u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        158u,
        0u,0u,
        (0xFFFFu),

        4u,
        23u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        159u,
        0u,0u,
        (0xFFFFu),

        4u,
        23u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        160u,
        0u,0u,
        (0xFFFFu),

        4u,
        23u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        283u,
        0u,0u,
        (0xFFFFu),

        5u,
        23u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        284u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        7u,
        2u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        161u,
        0u,0u,
        (0xFFFFu),

        6u,
        23u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        285u,
        0u,0u,
        (0xFFFFu),

        6u,
        23u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        286u,
        0u,0u,
        (0xFFFFu),

        6u,
        23u,

        5u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        162u,
        0u,0u,
        (0xFFFFu),

        6u,
        23u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        163u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        164u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        165u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        166u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        3u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        287u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        167u,
        0u,0u,
        (0xFFFFu),

        7u,
        23u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        288u,
        0u,0u,
        (0xFFFFu),

        0u,
        24u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        289u,
        0u,0u,
        (0xFFFFu),

        1u,
        24u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        168u,
        0u,0u,
        (0xFFFFu),

        1u,
        24u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        290u,
        0u,0u,
        (0xFFFFu),

        1u,
        24u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        20u,
        0u,0u,
        (0xFFFFu),

        3u,
        24u,

        0u,
        10u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        169u,
        0u,0u,
        (0xFFFFu),

        2u,
        24u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        291u,
        0u,0u,
        (0xFFFFu),

        2u,
        24u,

        3u,
        5u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        292u,
        0u,0u,
        (0xFFFFu),

        4u,
        24u,

        0u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        293u,
        0u,0u,
        (0xFFFFu),

        4u,
        24u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        21u,
        0u,0u,
        (0xFFFFu),

        6u,
        24u,

        4u,
        12u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        294u,
        0u,0u,
        (0xFFFFu),

        6u,
        24u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        295u,
        0u,0u,
        (0xFFFFu),

        7u,
        24u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        296u,
        0u,0u,
        (0xFFFFu),

        0u,
        25u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        297u,
        0u,0u,
        (0xFFFFu),

        1u,
        25u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        170u,
        0u,0u,
        (0xFFFFu),

        1u,
        25u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        298u,
        0u,0u,
        (0xFFFFu),

        1u,
        25u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        299u,
        0u,0u,
        (0xFFFFu),

        2u,
        25u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        300u,
        0u,0u,
        (0xFFFFu),

        3u,
        25u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        301u,
        0u,0u,
        (0xFFFFu),

        4u,
        25u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        171u,
        0u,0u,
        (0xFFFFu),

        4u,
        25u,

        2u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        302u,
        0u,0u,
        (0xFFFFu),

        4u,
        25u,

        3u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        172u,
        0u,0u,
        (0xFFFFu),

        4u,
        25u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        303u,
        0u,0u,
        (0xFFFFu),

        4u,
        25u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        304u,
        0u,0u,
        (0xFFFFu),

        5u,
        25u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        305u,
        0u,0u,
        (0xFFFFu),

        6u,
        25u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        306u,
        0u,0u,
        (0xFFFFu),

        7u,
        25u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        307u,
        0u,0u,
        (0xFFFFu),

        0u,
        26u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        308u,
        0u,0u,
        (0xFFFFu),

        1u,
        26u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        309u,
        0u,0u,
        (0xFFFFu),

        1u,
        26u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        22u,
        0u,0u,
        (0xFFFFu),

        3u,
        26u,

        0u,
        15u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

    },
    {
         
        173u,
        0u,0u,
        (0xFFFFu),

        2u,
        26u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        310u,
        0u,0u,
        (0xFFFFu),

        4u,
        26u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        311u,
        0u,0u,
        (0xFFFFu),

        5u,
        26u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        312u,
        0u,0u,
        (0xFFFFu),

        6u,
        26u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        313u,
        0u,0u,
        (0xFFFFu),

        7u,
        26u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        314u,
        0u,0u,
        (0xFFFFu),

        0u,
        27u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        315u,
        0u,0u,
        (0xFFFFu),

        1u,
        27u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        316u,
        0u,0u,
        (0xFFFFu),

        1u,
        27u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        317u,
        0u,0u,
        (0xFFFFu),

        2u,
        27u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        318u,
        0u,0u,
        (0xFFFFu),

        2u,
        27u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        319u,
        0u,0u,
        (0xFFFFu),

        3u,
        27u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        320u,
        0u,0u,
        (0xFFFFu),

        4u,
        27u,

        0u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        174u,
        0u,0u,
        (0xFFFFu),

        4u,
        27u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        321u,
        0u,0u,
        (0xFFFFu),

        5u,
        27u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        322u,
        0u,0u,
        (0xFFFFu),

        6u,
        27u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        323u,
        0u,0u,
        (0xFFFFu),

        7u,
        27u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        324u,
        0u,0u,
        (0xFFFFu),

        0u,
        28u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        325u,
        0u,0u,
        (0xFFFFu),

        1u,
        28u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        326u,
        0u,0u,
        (0xFFFFu),

        1u,
        28u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        0u,
        0u,0u,
        (0xFFFFu),

        4u,
        28u,

        0u,
        24u,
        3u,
        COM_BIG_ENDIAN,
        COM_UINT32,

    },
    {
         
        327u,
        0u,0u,
        (0xFFFFu),

        5u,
        28u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        328u,
        0u,0u,
        (0xFFFFu),

        5u,
        28u,

        4u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        175u,
        0u,0u,
        (0xFFFFu),

        5u,
        28u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        329u,
        0u,0u,
        (0xFFFFu),

        6u,
        28u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        176u,
        0u,0u,
        (0xFFFFu),

        7u,
        28u,

        0u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        177u,
        0u,0u,
        (0xFFFFu),

        7u,
        28u,

        1u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        330u,
        0u,0u,
        (0xFFFFu),

        7u,
        28u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        331u,
        0u,0u,
        (0xFFFFu),

        0u,
        29u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        332u,
        0u,0u,
        (0xFFFFu),

        1u,
        29u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        333u,
        0u,0u,
        (0xFFFFu),

        1u,
        29u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        334u,
        0u,0u,
        (0xFFFFu),

        2u,
        29u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        335u,
        0u,0u,
        (0xFFFFu),

        3u,
        29u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        336u,
        0u,0u,
        (0xFFFFu),

        4u,
        29u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        337u,
        0u,0u,
        (0xFFFFu),

        5u,
        29u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        338u,
        0u,0u,
        (0xFFFFu),

        6u,
        29u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        339u,
        0u,0u,
        (0xFFFFu),

        6u,
        29u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        340u,
        0u,0u,
        (0xFFFFu),

        7u,
        29u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        341u,
        0u,0u,
        (0xFFFFu),

        7u,
        29u,

        2u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        342u,
        0u,0u,
        (0xFFFFu),

        7u,
        29u,

        5u,
        3u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        343u,
        0u,0u,
        (0xFFFFu),

        0u,
        30u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        344u,
        0u,0u,
        (0xFFFFu),

        1u,
        30u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        178u,
        0u,0u,
        (0xFFFFu),

        1u,
        30u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        179u,
        0u,0u,
        (0xFFFFu),

        1u,
        30u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        345u,
        0u,0u,
        (0xFFFFu),

        1u,
        30u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        346u,
        0u,0u,
        (0xFFFFu),

        2u,
        30u,

        0u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        347u,
        0u,0u,
        (0xFFFFu),

        2u,
        30u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        348u,
        0u,0u,
        (0xFFFFu),

        3u,
        30u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        349u,
        0u,0u,
        (0xFFFFu),

        4u,
        30u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        350u,
        0u,0u,
        (0xFFFFu),

        5u,
        30u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        351u,
        0u,0u,
        (0xFFFFu),

        6u,
        30u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        352u,
        0u,0u,
        (0xFFFFu),

        7u,
        30u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        353u,
        0u,0u,
        (0xFFFFu),

        0u,
        31u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        354u,
        0u,0u,
        (0xFFFFu),

        1u,
        31u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        355u,
        0u,0u,
        (0xFFFFu),

        1u,
        31u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        356u,
        0u,0u,
        (0xFFFFu),

        2u,
        31u,

        0u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        357u,
        0u,0u,
        (0xFFFFu),

        2u,
        31u,

        2u,
        6u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        358u,
        0u,0u,
        (0xFFFFu),

        3u,
        31u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        359u,
        0u,0u,
        (0xFFFFu),

        4u,
        31u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        360u,
        0u,0u,
        (0xFFFFu),

        5u,
        31u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        361u,
        0u,0u,
        (0xFFFFu),

        6u,
        31u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        362u,
        0u,0u,
        (0xFFFFu),

        7u,
        31u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        363u,
        0u,0u,
        (0xFFFFu),

        0u,
        32u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        364u,
        0u,0u,
        (0xFFFFu),

        1u,
        32u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        365u,
        0u,0u,
        (0xFFFFu),

        1u,
        32u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        366u,
        0u,0u,
        (0xFFFFu),

        1u,
        32u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        367u,
        0u,0u,
        (0xFFFFu),

        2u,
        32u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        368u,
        0u,0u,
        (0xFFFFu),

        3u,
        32u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        369u,
        0u,0u,
        (0xFFFFu),

        4u,
        32u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        370u,
        0u,0u,
        (0xFFFFu),

        5u,
        32u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        371u,
        0u,0u,
        (0xFFFFu),

        5u,
        32u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        180u,
        0u,0u,
        (0xFFFFu),

        5u,
        32u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        181u,
        0u,0u,
        (0xFFFFu),

        5u,
        32u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        372u,
        0u,0u,
        (0xFFFFu),

        6u,
        32u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        373u,
        0u,0u,
        (0xFFFFu),

        7u,
        32u,

        0u,
        7u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        182u,
        0u,0u,
        (0xFFFFu),

        7u,
        32u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        374u,
        0u,0u,
        (0xFFFFu),

        0u,
        33u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        375u,
        0u,0u,
        (0xFFFFu),

        1u,
        33u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        183u,
        0u,0u,
        (0xFFFFu),

        1u,
        33u,

        4u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        184u,
        0u,0u,
        (0xFFFFu),

        1u,
        33u,

        5u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        185u,
        0u,0u,
        (0xFFFFu),

        1u,
        33u,

        6u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        186u,
        0u,0u,
        (0xFFFFu),

        1u,
        33u,

        7u,
        1u,
        1u,
        COM_BIG_ENDIAN,
        COM_BOOLEAN,

    },
    {
         
        376u,
        0u,0u,
        (0xFFFFu),

        2u,
        33u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        377u,
        0u,0u,
        (0xFFFFu),

        3u,
        33u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

    },
    {
         
        1u,
        0u,0u,
        (0xFFFFu),

        7u,
        33u,

        0u,
        32u,
        4u,
        COM_BIG_ENDIAN,
        COM_UINT32,

    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const Com_TxGroupSignalType Com_TxGroupSignal[49u]=
{
    {
         
        91u,
        0u,
        0u,

        0u,
        0u,

        7u,

        0u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        92u,
        0u,
        0u,

        0u,
        1u,

        5u,

        0u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_UINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        93u,
        0u,
        0u,

        0u,
        2u,

        3u,

        0u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        784u,
        0u,
        0u,

        0u,
        0u,

        1u,

        0u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        785u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        0u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        786u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        0u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        787u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        1u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        23u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        6u,

        1u,

        0u,
        40u,
        5u,
        COM_BIG_ENDIAN,
        COM_SINT64,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        788u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        1u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        789u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        1u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        790u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        1u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        791u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        1u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_UINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        94u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        2u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        47u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        5u,

        2u,

        0u,
        32u,
        4u,
        COM_BIG_ENDIAN,
        COM_SINT32,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        792u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        2u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        793u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        2u,

        4u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        794u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        2u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        795u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        2u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        95u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        3u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        96u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        5u,

        3u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        97u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        3u,

        3u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        796u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        3u,

        4u,
        4u,
        1u,
        COM_LITTLE_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        797u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        3u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        798u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        3u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        799u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        2u,

        4u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        98u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        4u,

        0u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        800u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        4u,

        4u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        99u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        5u,

        4u,

        0u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        801u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        6u,

        4u,

        6u,
        2u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        100u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        3u,

        4u,

        0u,
        14u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        802u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        4u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        803u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        4u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        804u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        4u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        805u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        5u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        806u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        5u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        24u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        5u,

        4u,
        44u,
        6u,
        COM_BIG_ENDIAN,
        COM_SINT64,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        807u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        5u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        808u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        5u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        809u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        101u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        6u,

        6u,

        0u,
        16u,
        2u,
        COM_BIG_ENDIAN,
        COM_SINT16,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        48u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        4u,

        6u,

        0u,
        24u,
        3u,
        COM_BIG_ENDIAN,
        COM_SINT32,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        810u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        6u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        811u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        6u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        812u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        6u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        813u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        7u,

        7u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        25u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        6u,

        7u,

        0u,
        40u,
        5u,
        COM_BIG_ENDIAN,
        COM_SINT64,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        814u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        7u,

        4u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        815u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        1u,

        7u,

        0u,
        4u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
    {
         
        816u,
        0u,
        0u,

        0u,
        (0xFFFFu),

        0u,

        7u,

        0u,
        8u,
        1u,
        COM_BIG_ENDIAN,
        COM_SINT8,

        COM_GROUPSIGNAL_TMC_NONE
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
static const uint16 Com_MainFunctionRxRange[1u] =
{

    118u,
};

static const uint16 Com_MainFunctionTxRange[1u] =
{

    44u,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 




 

 
   
const Com_ConfigType Com_PBConfigData =
{
    &Com_RxIPdu[0],
    &Com_TxIPdu[0],
    &Com_RxSignal[0],
    &Com_TxSignal[0],
    &Com_RxSignalGroup[0],
    &Com_TxSignalGroup[0],
    &Com_RxGroupSignal[0],
    &Com_TxGroupSignal[0],
    ((void *)0),
    ((void *)0),
    ((void *)0),
    &Com_MainFunctionRxRange[0],
    &Com_MainFunctionTxRange[0],

    240u,
    443u,
    44u,
    118u,
    49u,
    590u,
    8u,
    34u,
    2u,
    0u,
    1u,
    1u
};












 












 


 



 
 

   

 

 
























 




 



 

 
 




 

 
   



 
void  Com_MainFunctionRx_ComMainFunctionRx(void)
{
    Com_MainFunctionRx(0u);
}

void Com_MainFunctionTx_ComMainFunctionTx(void)
{
    Com_MainFunctionTx(0u);
}

 


 

