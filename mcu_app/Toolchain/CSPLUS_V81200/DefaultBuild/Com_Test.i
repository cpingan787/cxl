










 



 











 



 













 












 


 












































 

 











































































 



 












 












 



 
 




















 
 



 



 
 



 

























































 


 











 
 




















 
 



 



 
 



 


 









































































 


 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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




 



 


 

extern void Com_Test(void);
extern void Com_SecOC_Test(void);
extern void CanTSyn_SlaveTest(void);
extern void Dv_Test(void);












 












 














 



 




 












 












 














 


 



 












 












 




 
 




















 
 




 



 

 

 


 


 

 



 


 

 

 





 

 

 


 




















 
 




 


 



 
 
typedef uint16 StbM_SynchronizedTimeBaseType;

 

typedef uint8 StbM_TimeBaseStatusType;


 
typedef struct
{
    StbM_TimeBaseStatusType timeBaseStatus;
    uint32 nanoseconds;
    uint32 seconds;
    uint16 secondsHi;
} StbM_TimeStampType;

 
typedef sint32 StbM_TimeDiffType;
 
typedef sint16 StbM_RateDeviationType;
 
typedef struct
{
    uint8 userDataLength;
    uint8 userByte0;
    uint8 userByte1;
    uint8 userByte2;
} StbM_UserDataType;
 
typedef uint16 StbM_CustomerIdType;
 
typedef struct
{
    uint8 SynchronizedTimeDomain;
    uint32 HWfrequency;
    uint32 HWprescaler;
} StbM_SyncRecordTableHeadType;
 
typedef struct
{
    uint8 OffsetTimeDomain;
} StbM_OffsetRecordTableHeadType;

 
typedef enum
{
    STBM_SYSTEM_WIDE_MASTER_DISABLED = 0x00,
    STBM_SYSTEM_WIDE_MASTER_ENABLED = 0x01
} StbM_MasterConfigType;



 



 




 

typedef enum
{
    CRC_IGNORED = 0u,
    CRC_NOT_VALIDATED,
    CRC_OPTIONAL,
    CRC_VALIDATED
} CrcValidatedType;

typedef enum
{
    CRC_NOT_SUPPORTED = 0u,
    CRC_SUPPORTED
} CrcSecuredType;

typedef enum
{
    STBM_TBTYPE_SYNCHRONIZED,
    STBM_TBTYPE_OFFSET,
    STBM_TBTYPE_PURELOCAL
} StbM_SynchronizedTimeBaseTypeType;

 
typedef struct
{
    uint32 GlbSeconds;
    uint32 GlbNanoSeconds;
    StbM_TimeBaseStatusType TimeBaseStatus;
    uint32 VirtualLocalTimeLow;
    StbM_RateDeviationType RateDeviation;
    uint32 LocSeconds;
    uint32 LocNanoSeconds;
    uint32 PathDelay;
} StbM_SyncRecordTableBlockType;

 
typedef struct
{
    uint32 GlbSeconds;
    uint32 GlbNanoSeconds;
    StbM_TimeBaseStatusType TimeBaseStatus;
} StbM_OffsetRecordTableBlockType;

 
typedef uint16 StbM_TimeBaseNotificationType;


typedef enum
{
    CALLBACK,
    CALLBACK_AND_SR_INTERFACE,
    NO_NOTIFICATION,
    SR_INTERFACE
} StbMNotificationInterfaceType;

typedef enum
{
    ETHTSYN_GLOBALTIME_DOMAIN,
    GPT_CHANNEL_CONFIGURATION,
    OS_COUNTER
} StbMLocalTimeHardwareCfgType;
 
typedef struct
{
    
 
    boolean AllowMasterRateCorrection;
    
 
    uint16 MasterRateDeviationMax;
    
 
    uint64 OffsetCorrectionAdaptionInterval;
    
 
    uint64 OffsetCorrectionJumpThreshold;
     
    uint64 RateCorrectionMeasurementDuration;
     
    uint16 RateCorrectionsPerMeasurementDuration;
} StbMTimeCorrectionCfgType;
 
typedef struct
{
     
    uint32 StbMClockFrequency;
    
 
    uint32 StbMClockPrescaler;
     
    uint8 StbMLocalTimeHardware;
    StbMLocalTimeHardwareCfgType StbMLocalTimeHardwareType;
    uint32 LocalTimeMax;
} StbM_LocalTimeClockCfgType;

 

typedef struct
{
    StbM_SynchronizedTimeBaseType timeBaseId;
    
 
    void (*StbMTimeNotificationCallback)(StbM_TimeDiffType deviationTime);
} StbMNotificationCustomerCfgType;


 
typedef struct
{
     
    uint16 StbMClearTimeleapCount;
    
 
    boolean StbMIsSystemWideGlobalTimeMaster;
     
    uint16 StbMSynchronizedTimeBaseIdentifier;
    
 
    uint64 StbMSyncLossTimeout;
    
 
    uint64 StbMTimeLeapFutureThreshold;
    
 
    uint64 StbMTimeLeapPastThreshold;
    
 
    const uint16* StbMOffsetTimeBase;
    const StbMTimeCorrectionCfgType* StbMTimeCorrection;
    const StbM_LocalTimeClockCfgType* StbMLocalTimeClock;
    
 
    uint16 StbMNotificationCustomerNum;
    const StbMNotificationCustomerCfgType* StbMNotificationCustomer;
    StbM_SynchronizedTimeBaseTypeType synchronizedTimeBaseType;
    boolean StbMisTimeGateway;
} StbM_SynchronizedTimeBaseCfgType;



 
typedef uint64 StbM_HwCounterType;
typedef uint64 StbM_LocalTimeType;

typedef struct
{
    uint64 GlobalTime;
    uint64 VirtualLocalTime;
} StbM_MainTimeTupleType;

typedef struct StbM_RateCorrectionTupleTag
{
    uint64 TGstart;
    uint64 TVstart;
} StbM_RateCorrectionTupleType;

typedef struct StbM_RateCorrectionTag
{
    StbM_RateCorrectionTupleType* Array;
    uint32 StartIndex;
    uint32 StopIndex;
} StbM_RateCorrectionType;

typedef struct
{
    StbM_HwCounterType preHwCounter;
    StbM_LocalTimeType localTimeFraction;
    StbM_LocalTimeType localTime;
} StbM_LocalClockTimeType;

typedef struct StbM_CurrentRateTag
{
    sint32 RrcValue;
    sint32 RocValue;
    boolean IsSet;
} StbM_CurrentRateType;


typedef enum
{
    RESERVED_NOT_ALLOWED,
    PURELOCAL_TIMEBASE_NOT_ALLOWED,
    OFFSET_TIMEBASE_NOT_ALLOWED,
    SYNC_TIMEBASE_NOT_ALLOWED,
    SYNC_AND_PURELOCAL_TIMEBASE_NOT_ALLOWED,
    OFFSET_AND_PURELOCAL_TIMEBASE_NOT_ALLOWED
} StbM_TimeBaseIdAllowedType;

typedef struct
{
    StbM_TimeBaseStatusType timeBaseStatus;
    uint8 StbMTimeBaseUpdateCounter;
    StbM_UserDataType UserData;
    StbM_TimeStampType Offset;
    StbM_MainTimeTupleType StbMMainTimeTuple;
    uint16 StbMClearTimeleapCount;
    StbM_TimeDiffType TimeLeap;
    boolean BusNotFirstSet;
    uint64 lastBusSettime;
    StbM_LocalClockTimeType localClockTime;
    StbM_CurrentRateType RateDeviation;

    StbM_RateCorrectionType RateCorrection;
} StbM_TimeBaseType;



























 
   
   
   



























 
   
   
   




























 
   
   
   
   


 

























 
 

































































































































































































































 


 




 












 











 


 


 


 













































 




 














 
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


 





















 



 












extern void StbM_MainFunction(void);               



 
extern void SchM_Enter_StbM_Context(void);
extern void SchM_Exit_StbM_Context(void);


















 

 
 
 
 
 
 
 
 

 


 
typedef struct
{
    const StbM_SynchronizedTimeBaseCfgType* StbMSynchronizedTimeBase;
} StbM_ConfigType;

 
typedef struct
{
    uint32 nanosecondsLo;
    uint32 nanosecondsHi;
} StbM_VirtualLocalTimeType;

 
typedef struct
{
    uint32 pathDelay;
} StbM_MeasurementType;


 
extern const StbM_ConfigType StbM_Config;



 










 
void StbM_Init(const StbM_ConfigType* ConfigPtr);












 
Std_ReturnType StbM_GetCurrentTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeStampType* timeStamp,
    StbM_UserDataType* userData);











 
Std_ReturnType StbM_GetCurrentVirtualLocalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_VirtualLocalTimeType* localTimePtr);















 
Std_ReturnType StbM_SetGlobalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* timeStamp,
    const StbM_UserDataType* userData);















 
Std_ReturnType StbM_UpdateGlobalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* timeStamp,
    const StbM_UserDataType* userData);













 
Std_ReturnType StbM_SetUserData(StbM_SynchronizedTimeBaseType timeBaseId, const StbM_UserDataType* userData);













 
Std_ReturnType StbM_SetOffset(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* timeStamp,
    const StbM_UserDataType* userData);












 
Std_ReturnType StbM_GetOffset(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeStampType* timeStamp,
    StbM_UserDataType* userData);















 
Std_ReturnType StbM_BusGetCurrentTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeStampType* globalTimePtr,
    StbM_VirtualLocalTimeType* localTimePtr,
    StbM_UserDataType* userDataPtr);
















 
Std_ReturnType StbM_BusSetGlobalTime(
    StbM_SynchronizedTimeBaseType timeBaseId,
    const StbM_TimeStampType* globalTimePtr,
    const StbM_UserDataType* userDataPtr,
    const StbM_MeasurementType* measureDataPtr,
    const StbM_VirtualLocalTimeType* localTimePtr);











 
   
Std_ReturnType StbM_GetRateDeviation(StbM_SynchronizedTimeBaseType timeBaseId, StbM_RateDeviationType* rateDeviation);
   












 
Std_ReturnType StbM_SetRateCorrection(StbM_SynchronizedTimeBaseType timeBaseId, StbM_RateDeviationType rateDeviation);











 
Std_ReturnType StbM_GetTimeLeap(StbM_SynchronizedTimeBaseType timeBaseId, StbM_TimeDiffType* timeJump);














 
Std_ReturnType StbM_GetTimeBaseStatus(
    StbM_SynchronizedTimeBaseType timeBaseId,
    StbM_TimeBaseStatusType* syncTimeBaseStatus,
    StbM_TimeBaseStatusType* offsetTimeBaseStatus);














 
Std_ReturnType StbM_TriggerTimeTransmission(StbM_SynchronizedTimeBaseType timeBaseId);












 
uint8 StbM_GetTimeBaseUpdateCounter(StbM_SynchronizedTimeBaseType timeBaseId);


 




















 
 



 

 
 




 












 












 


 




 



 




 



 



 













 

extern void CanTSyn_RxIndication(PduIdType RxPduId, const PduInfoType* PduInfoPtr);













 

extern void CanTSyn_TxConfirmation(
    PduIdType TxPduId
);




 
 

 


 

 

 

 

 

 



 

 
typedef enum
{
    CANTSYN_INITED = 0u,
    CANTSYN_UNINIT
} CanTSyn_InitStatusType;

 
typedef enum
{
    SYNC_REQUIRED = 0u,
    FUP_REQUIRED,
    SYNC_SENT,
    SYNC_NOT_REQUIRED
} CanTSyn_MasterStatusType;

 
typedef enum
{
    SYNC_EXPECTED = 0u,
    FUP_EXPECTED
} CanTSyn_SlaveStatusType;

 
typedef enum
{
    CANTSYN_TX_OFF = 0u,
    CANTSYN_TX_ON
} CanTSyn_TransmissionModeType;

 
typedef struct CanTSyn_DataIDListElement_T
{
    uint8 CanTSynGlobalTimeDataIDListIndex;
    uint8 CanTSynGlobalTimeDataIDListValue;
} CanTSyn_DataIDListElementType;

 
typedef struct CanTSyn_MasterTimeInfo_T
{
     
    uint32 T0SYNCns;
     
    uint64 T0VLT;
       
     
       
    uint64 T4;
     
    uint8 userByte2;
     
    StbM_TimeBaseStatusType timeBaseStatus;
     
    uint32 OfsTimeNSec;
     
    uint32 cyclicResumeCounter;
     
    uint32 debounceCounter;
     
    uint32 periodCounter;
     
    uint32 confirmationTimeoutCounter;
} CanTSyn_MasterTimeInfoType;

 
typedef struct CanTSynGlobalTimeMaster_T
{
     
    uint32 CanTSynCyclicMsgResumeTime;
     
    uint32 CanTSynGlobalTimeDebounceTime;
     
    CrcSecuredType CanTSynGlobalTimeTxCrcSecured;
     
    uint32 CanTSynGlobalTimeTxPeriod;
     
    boolean CanTSynImmediateTimeSync;
     
    uint32 CanTSynMasterConfirmationTimeout;
     
    PduIdType CanTSynGlobalTimePduId;
} CanTSynGlobalTimeMasterType;

 
typedef struct CanTSynGlobalTimeSlave_T
{
     
    uint32 CanTSynGlobalTimeFollowUpTimeout;
     
    uint8 CanTSynGlobalTimeSequenceCounterJumpWidth;
     
    CrcValidatedType CanTSynRxCrcValidated;
     
    PduIdType CanTSynGlobalTimePduId;
} CanTSynGlobalTimeSlaveType;

typedef struct CanTSyn_GlobalTimeDomain_T
{
     
    uint8 CanTSynGlobalTimeDomainId;
     
    boolean CanTSynUseExtendedMsgFormat;
     
    StbM_SynchronizedTimeBaseType CanTSynSynchronizedTimeBaseId;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeSyncDataIDList;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeFupDataIDList;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeOfsDataIDList;
     
    const CanTSyn_DataIDListElementType* CanTSynGlobalTimeOfnsDataIDList;
     
    const CanTSynGlobalTimeMasterType* CanTSynGlobalTimeMaster;
     
    const CanTSynGlobalTimeSlaveType* CanTSynGlobalTimeSlave;
} CanTSyn_GlobalTimeDomainType;

 
typedef struct CanTSyn_SlaveTimeInfo_T
{
     
    uint32 T0SYNC;
     
    uint64 T2VLT;
     
    uint8 userByte0;
     
    uint8 userByte1;
     
    uint32 OfsTimeSec;
     
    uint8 sequenceCounter;
     
    boolean isCRC;
     
    uint32 receptionTimeoutCounter;
} CanTSyn_SlaveTimeInfoType;





 
typedef struct
{
    const CanTSyn_GlobalTimeDomainType* CanTSynGlobalTimeDomain;
} CanTSyn_ConfigType;



 

 

extern const CanTSyn_ConfigType CanTSyn_config;



 












 

extern void CanTSyn_Init(const CanTSyn_ConfigType* configPtr);












 
extern void CanTSyn_SetTransmissionMode(uint8 CtrlIdx, CanTSyn_TransmissionModeType Mode);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 















 
 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 




 
 
 
 



 










 




 



 




 
 

 




 






 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 

 

 



 





 




 




 





 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 
 




 
 
typedef uint32 Can_IdType;
typedef uint16 Can_HwHandleType;

 
typedef struct STag_Can_PduType
{
   
  uint8      *sdu;
   
  Can_IdType id;
   
  PduIdType  swPduHandle;
   
  uint8 length;
} Can_PduType;


 
typedef struct STag_Can_HwType
{
   
  Can_IdType CanId;
   
  Can_HwHandleType  Hoh;
   
  uint8 ControllerId;
} Can_HwType;



 
 
typedef enum ETag_Can_StateTransitionType
{
  CAN_T_START = 0,
  CAN_T_STOP,
  CAN_T_SLEEP,
  CAN_T_WAKEUP
} Can_StateTransitionType;




 






 

 
typedef enum ETag_Can_ReturnType
{
  CAN_OK = 0,
  CAN_NOT_OK,
  CAN_BUSY
} Can_ReturnType;



 
 
typedef enum ETag_CanTrcv_TrcvModeType
{
  CANTRCV_TRCVMODE_NORMAL = 0U,
  CANTRCV_TRCVMODE_SLEEP,
  CANTRCV_TRCVMODE_STANDBY
} CanTrcv_TrcvModeType;



 

 
typedef enum ETag_CanTrcv_TrcvWakeupModeType
{
  CANTRCV_WUMODE_ENABLE = 0U,
  CANTRCV_WUMODE_CLEAR,
  CANTRCV_WUMODE_DISABLE
} CanTrcv_TrcvWakeupModeType;



 
 
typedef enum ETag_CanTrcv_TrcvWakeupReasonType
{
  CANTRCV_WU_ERROR = 0U,
  CANTRCV_WU_BY_BUS,
  CANTRCV_WU_BY_PIN,
  CANTRCV_WU_INTERNALLY,
  CANTRCV_WU_NOT_SUPPORTED,
  CANTRCV_WU_POWER_ON,
  CANTRCV_WU_RESET,
  CANTRCV_WU_BY_SYSERR
}CanTrcv_TrcvWakeupReasonType;



 



 
 



 



 

 



 

 
 
 
 
 
 
 
 
 
 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
typedef struct STag_Can_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  const void * pHWUnitInfo;
   
  const void *
    pControllerPCConfig;
   
  const void *
    pControllerPBConfig;
   
  const void * pHohConfig;
   
  const void * pPhysicalControllerToIndex;
} Can_ConfigType;

 
typedef enum ETag_Can_SelfTestType
{
   
  CAN_T_SELF_OFF = 0,
   
  CAN_T_SELF_EXTERNAL,
   
  CAN_T_SELF_INTERNAL
} Can_SelfTestType;



 
 
typedef enum ETag_Can_HWConsistencyModeType
{
   
  CAN_STATIC = 0,
   
  CAN_DYNAMIC
}Can_HWConsistencyModeType;

 
 
typedef struct STag_Can_MirrorGlobalType
{
   
  uint32 ulGCTR;
} Can_MirrorGlobalType;

  
 
typedef struct STag_Can_MirrorChannelType
{
   
  uint32 ulCFG;
   
  uint32 ulCTR;
   
  uint32 ulFDCFG;
   
  uint32 ulDCFG;
} Can_MirrorChannelType;

 
 
typedef struct STag_Can_MirrorHohType
{
   
  uint32 ulRFCC;
   
  uint32 ulTXQCC;
   
  uint32 ulCFCC;
} Can_MirrorHohType;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".CAN_CFG_DBTOC_UNSPECIFIED"




 
 


 
 
 
 
extern const Can_ConfigType Can_GaaConfig[];
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_PUBLIC_CODE_ROM"




 
 


 
 

 
extern  void Can_Init
(const Can_ConfigType * Config);

 
extern  Std_ReturnType Can_ChangeBaudrate(
  uint8 Controller, const uint16 Baudrate);

 
extern  Std_ReturnType Can_CheckBaudrate(
  uint8 Controller, const uint16 Baudrate);

 
extern  Std_ReturnType Can_SetBaudrate(
  uint8 Controller, uint16 BaudRateConfigID);

 
extern  Can_ReturnType Can_SetControllerMode(
  uint8 Controller, Can_StateTransitionType Transition);

 
extern  void Can_DisableControllerInterrupts(
  uint8 Controller);

 
extern  void Can_EnableControllerInterrupts(
  uint8 Controller);

 
extern  Can_ReturnType Can_Write(
  Can_HwHandleType Hth,
  const Can_PduType * PduInfo);

 
extern  void Can_MainFunction_Write(void);
extern  void Can_MainFunction_Write_0(void);
 
extern  void Can_MainFunction_Read(void);
extern  void Can_MainFunction_Read_0(void);
 
extern  void Can_MainFunction_BusOff(void);
 
extern  void Can_MainFunction_Wakeup(void);
 
extern  void Can_MainFunction_Mode(void);

extern  void Can_GetVersionInfo(
  Std_VersionInfoType * versioninfo);

extern  Can_ReturnType Can_CheckWakeup(
  uint8 Controller);

extern  Std_ReturnType Can_CheckHWConsistency
                               (Can_HWConsistencyModeType LenHWConsistencyMode);

extern  Std_ReturnType Can_RAMTest(
  uint32 LulPageID);

 
extern  Std_ReturnType Can_SelfTestChannel
                    (uint8 LucController, Can_SelfTestType LenTest_Transition);

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".CAN_APPL_CODE_ROM"




 
 


 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 








 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 



 
 




 






 
uint8 Event_Test = 0;
uint64 Event_TestSig0 = 0;
uint8 Event_TestSig1 = 0;

uint8 Test_ComTxSig0 = 0;
uint8 Test_ComRxSig0 = 0;
uint8 testcom[8]={0};

StbM_TimeStampType timestamp;
StbM_UserDataType userData;
uint8 Data[8] = {0};
Can_PduType PduInfo = {&Data[0],0x666,0,8};


 
uint16 E2E_R_TEST[2]={0};
void Com_Test(void)
{

     
    
    

    Com_ReceiveSignalGroup(26u);
    Com_ReceiveSignal(948u,&E2E_R_TEST[0]);
    Com_ReceiveSignal(949u,&E2E_R_TEST[1]);
     
    if(Event_Test == 1)
    {
        
        Com_SendSignal(66u,&Event_TestSig0);
	    Event_Test = 0;
    }

    
    
    
    
    
    
    
    

    
	
}

void Com_SecOC_Test(void)
{

     
    if(Event_Test == 1)
    {
        Com_SendSignal(135u,&Event_TestSig0); 
        Com_SendSignal(199u,&Event_TestSig0); 
        Com_SendSignal(180u,&Event_TestSig0); 
        Com_SendSignal(178u,&Event_TestSig0); 
	    Event_Test = 0;
    }
    
}

void CanTSyn_SlaveTest(void)
{
    StbM_GetCurrentTime(0, &timestamp,&userData);

    PduInfo.sdu[0] = (uint8)((timestamp.seconds & 0xff000000) >> 24);
    PduInfo.sdu[1] = (uint8)((timestamp.seconds & 0x00ff0000) >> 16);
    PduInfo.sdu[2] = (uint8)((timestamp.seconds & 0x0000ff00) >> 8);
    PduInfo.sdu[3] = (uint8)((timestamp.seconds & 0x000000ff));
    PduInfo.sdu[4] = (uint8)((timestamp.nanoseconds & 0xff000000) >> 24);
    PduInfo.sdu[5] = (uint8)((timestamp.nanoseconds & 0x00ff0000) >> 16);
    PduInfo.sdu[6] = (uint8)((timestamp.nanoseconds & 0x0000ff00) >> 8);
    PduInfo.sdu[7] = (uint8)((timestamp.nanoseconds & 0x000000ff));

    Can_Write((Can_HwHandleType)2, &PduInfo);
}


