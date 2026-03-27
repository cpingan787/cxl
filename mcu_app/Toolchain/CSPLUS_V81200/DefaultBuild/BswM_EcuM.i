











 












 

   



 












 












 




 












 












 




 












 












 





















































































 




 












 












 




 
 




















 
 



 


 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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

 




















 
 

 

 


 
 
typedef uint8 ComM_InhibitionStatusType;







 
typedef uint8 ComM_ModeType;




 



 
typedef uint8 ComM_UserHandleType;

 
typedef uint8 ComM_UserHandleSubArrayType_ComMChannel_0[1];

 
typedef struct{

    uint8 numberOfRequesters;
    ComM_UserHandleSubArrayType_ComMChannel_0 handleArray;
}ComM_UserHandleArrayType_ComMChannel_0;



 
 
 
 
 
 
 

 

 
typedef uint8 ComM_InitStatusType;
 

 
 



 
typedef uint8 ComM_StateType;

 
typedef uint8 ComM_PncModeType;

 




















 
 




 
 



 
 

 

 

 

 

 

 





 




 


 


 


 













 













 


 


 


 


 


 
 
typedef enum
{
    CANSM_BSWM_NO_COMMUNICATION,
    CANSM_BSWM_SILENT_COMMUNICATION,
    CANSM_BSWM_FULL_COMMUNICATION,
    CANSM_BSWM_BUS_OFF,
    CANSM_BSWM_CHANGE_BAUDRATE
} CanSM_BswMCurrentStateType;


 


 














 












 
 



















































































































 




 





































































































 



 












 












 













 












 



 
 




















 
 


 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 













 












 




 
 




















 
 

 




 



 



 



 
typedef uint16 Dem_EventIdType;

typedef uint8 Dem_EventStatusType;

typedef uint8 Dem_DebouncingStateType;

typedef uint8 Dem_DebounceResetStatusType;

typedef uint8 Dem_UdsStatusByteType;

typedef uint8 Dem_OperationCycleStateType;

typedef uint8 Dem_DTCKindType;

typedef uint8 Dem_DTCFormatType;

typedef uint8 Dem_DTCOriginType;

typedef uint8 Dem_DTRControlType;

typedef uint8 Dem_InitMonitorReasonType;

typedef uint8 Dem_IumprDenomCondIdType;

typedef uint8 Dem_IumprDenomCondStatusType;

typedef uint8 Dem_IndicatorStatusType;





 


 
typedef uint16 Dem_ComponentIdType;


 
typedef uint16 Dem_RatioIdType;

typedef uint8 Dem_DTCRequestType;

typedef uint8 Dem_DTCTranslationFormatType;

typedef uint8 Dem_DTCSeverityType;
 

 
typedef uint8 Dem_IUMPRDenGroupType;

 
typedef uint8 Dem_IUMPRGroupType;

 
typedef uint8 Dem_RatioKindType;

typedef uint8 Dem_J1939DcmDTCStatusFilterType;

typedef uint8 Dem_J1939DcmSetClearFilterType;

typedef uint8 Dem_J1939DcmSetFreezeFrameFilterType;

typedef uint16 Dem_J1939DcmLampStatusType;








 

 
typedef struct
{
    uint8 ActiveTroubleCodes;                      
    uint8 PreviouslyActiveDiagnosticTroubleCodes;  
    uint8 OBDCompliance;                           
    uint8
        ContinuouslyMonitoredSystemsSupport_Status;  
    uint16 NonContinuouslyMonitoredSystemsSupport;   
     
    uint16 NonContinuouslyMonitoredSystemsStatus;
} Dem_J1939DcmDiagnosticReadiness1Type;

 
typedef struct
{
    uint16 DistanceTraveledWhileMILisActivated;     
    uint16 DistanceSinceDTCsCleared;                
    uint16 MinutesRunbyEngineWhileMILisActivated;   
    uint16 TimeSinceDiagnosticTroubleCodesCleared; 
 
} Dem_J1939DcmDiagnosticReadiness2Type;

 
typedef struct
{
    uint16 TimeSinceEngineStart;                              
    uint8 NumberofWarmupsSinceDTCsCleared;                    
    uint8 ContinuouslyMonitoredSystemsEnableCompletedStatus; 
 
    uint16
        NonContinuouslyMonitoredSystemsEnableStatus;  
     
    uint16 NonContinuouslyMonitoredSystems;
} Dem_J1939DcmDiagnosticReadiness3Type;



 

typedef uint8 Dem_ReturnGetStatusOfDTCType;  

typedef uint8 Dem_ReturnGetSeverityOfDTCType;   

typedef uint8 Dem_ReturnGetFunctionalUnitOfDTCType;  

typedef uint8 Dem_ReturnSetFilterType;  

typedef uint8 Dem_ReturnGetNumberOfFilteredDTCType;  

typedef uint8 Dem_ReturnGetNextFilteredElementType; 
 

typedef uint8 Dem_ReturnGetDTCByOccurrenceTimeType;  

typedef uint8 Dem_ReturnDisableDTCRecordUpdateType;  

typedef uint8 Dem_ReturnGetFreezeFrameDataByDTCType;  

typedef uint8
    Dem_ReturnGetExtendedDataRecordByDTCType;  

typedef uint8 Dem_ReturnGetSizeOfDataByDTCType; 

 

typedef uint8 Dem_ReturnClearDTCType;  

typedef uint8 Dem_ReturnControlDTCSettingType; 
 


 






 



 
typedef struct
{
    Dem_EventIdType IntId;
    uint8 Status;
    uint8 EventStatusFlag;
    uint8 UdsStatus;
    uint8 OldUdsStatus;
     
    uint8 OccurrenceCounter;  
    uint8 FailureCounter;
    uint8 AgingCounter;
    uint8 HealingCounter;
    uint8 AgedCounter;
     
} Dem_EventRelateInformationType;

typedef struct
{
    boolean IUMPRDenStatus;
    boolean IUMPRNumStatus;
    uint16 Denominator;  
    uint16 Numerator;    
    uint16 General_Denominator;
} IUMPRType;

typedef struct
{
    sint32 TestResult;
    sint32 LowerLimit;
    sint32 UpperLimit;
} DTRInfoType;

 
typedef struct
{
    Dem_J1939DcmDTCStatusFilterType DTCStatusFilter;
    Dem_DTCKindType DemJ1939DTCFilterInfo;
    uint8 node;
    Dem_DTCOriginType DTCOrigin;
     
    boolean IsSet;
    uint16 NumberOfFilteredDTC;
    uint8 GetNum;
    uint8 CurrentIndex;
} Dem_J1939DTCFilterInfoType;

 
typedef struct
{
    Dem_J1939DcmSetFreezeFrameFilterType FreezeFrameKind;
    uint8 node;
    uint8 CurrentIndex;
    boolean IsSet;
    uint16 SPNIndex;
    uint8 SPNCounter;
    boolean IsFind;
    boolean IsOK;
} Dem_J1939DcmFreezeFrameFilterType;

typedef struct
{
    uint8 node;
    uint8 CurrentIndex;
    boolean IsSet;
} Dem_J1939DcmRatioFilterType;

 
typedef enum
{
    DEM_STATE_UNINIT = 0u,
    DEM_STATE_PRE_INIT,
    DEM_STATE_INIT,
    DEM_STATE_SHUTDOWN
} Dem_StateType;

typedef enum
{
    DEM_CLEAR_LOCK = 0u,
    DEM_CLEAR_NOT_LOCK
} Dem_ClearLockStatus;

typedef enum
{
    DEM_ClEAR_NONVOLATILE_FINISHED = 0u,
    DEM_ClEAR_NONVOLATILE_FAILED,
    DEM_ClEAR_NONVOLATILE_INIT,
    DEM_CLEAR_NONVOLATILE_PROCESSING,
    DEM_CLEAR_NONVOLATILE_START
} Dem_ClearNonvolatileStatusType;

typedef struct
{
    uint16 DTCIndex;
    uint16 SaveDTCIndex;
    boolean ClearAllGroup;
    uint8 DTCGroupIndex;
    uint8 memDest;
    uint32 DTC;
    Dem_DTCFormatType DTCFormat;
    Dem_DTCFormatType SaveDTCFormat;
    Dem_DTCOriginType DTCOrigin;
    Dem_DTCOriginType SaveDTCOrigin;
    uint16 SID;
    Dem_J1939DcmSetClearFilterType DTCTypeFilter;
    uint8 node;
} Dem_ClearDTCInfoType;

typedef struct
{
    uint8 Occctr;
    uint8 AgingUpCnt;
    uint8 AgingDownCnt;
    uint8 Ovflind;
    uint8 Significance;
    uint8 CurrentFDC;
    uint8 MaxFDCDuringCurrentCycle;
    uint8 FailedCycles;
    uint8 FaultPendingCounter;
    uint8 AgedCounter;
} Dem_InternalDataType;

typedef struct
{
    uint8 CbUdsStatus;
    boolean SuppressionStatus;
} Dem_DTCGeneralStatusType;

typedef struct
{
    boolean Status;
    uint8 FailurePriority;
    boolean availability;
} DemComponentStatusType;

 
typedef struct
{
    sint16 InternalDebounceCounter;
    Dem_EventStatusType CurStatus;
} Dem_DebounceCounterInfoType;

typedef struct
{
    sint8 FDC;
    uint8 MaxFDCSinceLastClear;
    uint8 MaxFDCDuringCurrentCycle;
} FDCInfoType;

 
typedef struct
{
     
    Dem_DTCFormatType DTCFormat;
     
    uint16 NumberOfFilteredRecords;
    uint16 GetNum;
    uint8 EntryIndex;
    uint8 FFIndex;
} Dem_FreezeFrameRecordFilterInfoType;

typedef struct
{
    uint8 node;
    uint8 CurrentIndex;
    boolean IsSet;
} DemJ1939DTCGetNodeType;


 




 

 



 
 




 
 


 


 

 

 



 

 



 

 

 

 


 

 

 

 


 
 

 

 

 

 


 
 


 


 


 



 
 


 

 

 

 

 



 
 



 

 


 


 


 

 



 
 


 

 



 
 


 






 



 




 
 

 

 

 

 

 

 

 

 

 

 

 




 

 


 

 

 

 

 

 


 

 

 

 


 

 


 









typedef struct
{
     
    boolean AllGroupIsEnabled;
    Dem_DTCKindType DTCKind;
} Dem_DTCSettingInfoType;



 
typedef Std_ReturnType (*Dem_ReadDataFncType)(uint8* Buffer, uint16 BufSize);

typedef Std_ReturnType (*DataServicesType)(uint8* Buffer);



 
 
typedef struct
{
     
    const boolean DemOperationCycleAutomaticEnd;

     
    const boolean DemOperationCycleAutostart;

    







 
    const uint8 DemOperationCycleType;
} Dem_OperationCycleType;




 
 
typedef struct
{
    const uint16 DemPidIdentifier;
    const uint16 StartIndex;
    const uint8 RefNum;
    const uint8 DataSize;  
} Dem_PidClassType;

 
typedef struct
{
    const uint16 DataSize;
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_FreezeFrameClassType;
 
typedef struct
{
    const uint16 DemDidIdentifier;
    const uint16 StartIndex;
    const uint8 RefNum;
    const uint8 DataSize;  
} Dem_DidClassType;

extern const Dem_FreezeFrameClassType DemFreezeFrameClass[2u];

extern const Dem_DidClassType DemDidClass[6u];
extern const uint16 DemDidClassRef[6u];

 
typedef struct
{
    const uint16 DemSPNIdentifier;
    const uint16 StartIndex;
    const uint8 DataSize;  
} Dem_SPNClassType;

typedef struct
{
    const uint16 DataSize;
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_J1939FreezeFrameClassType;


 
typedef struct
{
     
    const uint8 DemFreezeFrameRecordNumber;

    





 
    const uint8 DemFreezeFrameRecordTrigger;

    



 
    const uint8 DemFreezeFrameRecordUpdate;
} Dem_FreezeFrameRecordClassType;

extern const Dem_FreezeFrameRecordClassType DemFreezeFrameRecordClass[1u];


typedef struct
{
     
    uint16 DemFreezeFrameClassRef;
     
    const uint8 DemFreezeFrameRecordNumber;

    





 
    const uint8 DemFreezeFrameRecordTrigger;

     
    const uint8 DemFreezeFrameRecordUpdate;

} Dem_GlobalFreezeFrameType;

extern const Dem_GlobalFreezeFrameType DemGlobalFreezeFrame;


 
typedef struct
{
     
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_FreezeFrameRecNumClassType;

 
extern const Dem_FreezeFrameRecNumClassType DemFreezeFrameRecNumClass[1u];

extern const uint8 DemFreezeFrameRecordClassRef[1u];

typedef struct
{
    uint8 UdsStatus[59u];
    uint8 AgedCounter[59u];
    sint16 DebounceCounter[59u];
    Dem_EventIdType FirstFailed;
    Dem_EventIdType MostRecentFailed;
    Dem_EventIdType FirstDtcConfirmed;
    Dem_EventIdType MostRecDtcConfirmed;
} Dem_EventRelateInformationStorageType;

typedef struct
{
    uint8 StoreWarmUpCycleCounter;
    uint16 StoreIgnUpCycleCounter;
    uint16 StoreOBDDistanceMILOn;
    uint16 StoreDistSinceDtcCleared;
    uint16 StoreOBDTimeMILOn;
    uint16 StoreOBDTimeDTCClear;
    uint16 StoreContinuousMICounter;
    uint16 StoreOBDB1Counter;
} DemOBDDataStorageType;

typedef struct
{
     
    Dem_EventIdType ExtId;
    Dem_EventStatusType Status;
} Dem_EventDataBufferType;

 
typedef struct
{
    uint64 Timeout;
    boolean Triggered;
    Dem_EventIdType IntId;
    Dem_EventStatusType CurStatus;
    boolean IsFreezing;
} Dem_DebounceTimeInfoType;

typedef struct
{
    uint8 RecordNum;
    uint8 DisableDTCRecordUpdate[(((59u) + 7u) >> 3u)];  
    boolean OverFlow;
} Dem_MemDestInfoType;

typedef struct
{
    Dem_EventIdType ExtId;
    uint8 FFData[13u];
} Dem_PreStoreFFInfoType;


typedef struct
{
    Dem_EventDataBufferType Queue[58u];
    uint8 ReadIndex;
    uint8 WriteIndex;
} Dem_EventQueueType;


 

 
typedef struct
{
     
    const uint8 DemExtendedDataRecordNumber;

    







 
    const uint8 DemExtendedDataRecordTrigger;

    



 
    const uint8 DemExtendedDataRecordUpdate;

     
    const uint16 DemDataElementClassIndex;
    const uint8 DemDataElementClassNum;
    const uint8 DataSize;  
} Dem_ExtendedDataRecordClassType;

 
typedef struct
{
     
    const uint16 StartIndex;
    const uint8 RefNum;
} Dem_ExtendedDataClassType;

extern const Dem_ExtendedDataRecordClassType DemExtendedDataRecordClass[4u];


extern const Dem_ExtendedDataClassType DemExtendedDataClass[1u];

extern const uint8 DemExtendedDataRecordClassRef[4u];



 
 
typedef Std_ReturnType (
    *Dem_TriggerOnDTCStatusType)(uint32 DTC, Dem_UdsStatusByteType DTCStatusOld, Dem_UdsStatusByteType DTCStatusNew);

 
typedef struct
{
     
    const uint32 DemDtcValue;
     
    const uint16 DemDTCAttributesRef;
     
    const uint16 DemObdDTCRef;

    const Dem_DTCKindType DTCKind;
     
    const uint8 DemDTCFunctionalUnit;
    





 
    const uint8 DemDTCSeverity;  
     
    const uint8 GroupRef;  

    const uint8 DemWWHOBDDTCClass;
    Dem_EventIdType EventRefNum;
    Dem_EventIdType EventRefStart;
} Dem_DTCType;

typedef struct
{
    const boolean DemConsiderPtoStatus;
    const uint16 DemDtcValue;
    const uint32 DemJ1939DTCValue;
    const uint8 DemEventOBDReadinessGroup;
} DemObdDTCType;

typedef struct
{
    const uint8 NodeNum;
} J1939NodeType;

 
typedef struct
{
     
    const boolean DemAgingAllowed;

     
    const uint8 DemAgingCycleRef;

     
    const uint8 DemAgingCycleCounterThreshold;

     
    const uint8 DemAgingCycleCounterThresholdForTFSLC;

     
    const uint8 DemDTCPriority;

     
    const uint8 DemEventMemoryEntryFdcThresholdStorageValue;

    
 
    const uint8 DemFreezeFrameRecNumClassRef;

     
    const boolean DemImmediateNvStorage;

    



 
    const uint8 DemDTCSignificance;

     
    const uint16 DemExtendedDataClassRef;

     
    const uint16 DemFreezeFrameClassRef;

    
 
    const uint8 DemMemoryDestinationRef[1u];

     
    const uint8 DemJ1939DTC_J1939NodeRef;

     
    const uint8 DemJ1939ExpandedFreezeFrameClassRef;

     
    const uint8 DemJ1939FreezeFrameClassRef;

     
    const uint8 DemWWHOBDFreezeFrameClassRef;
} Dem_DTCAttributesType;

typedef struct
{
     
    const uint8 DemIndicatorFailureCycleCounterThreshold;

     
    const uint8 DemIndicatorHealingCycleCounterThreshold;

     
    const uint8 DemIndicatorRef;

    






 
    const uint8 DemIndicatorBehaviour;
} Dem_IndicatorAttributeType;



 
 
extern const Dem_IndicatorAttributeType DemIndicatorAttribute[59u];



 
 
typedef struct
{
     
    const uint16 DemDebounceCounterDecrementStepSize;

     
    const uint16 DemDebounceCounterIncrementStepSize;

     
    const sint16 DemDebounceCounterJumpDownValue;

     
    const sint16 DemDebounceCounterJumpUpValue;

     
    const sint16 DemDebounceCounterFailedThreshold;

     
    const sint16 DemDebounceCounterPassedThreshold;

     
    const boolean DemDebounceCounterJumpDown;

     
    const boolean DemDebounceCounterJumpUp;

     
    const boolean DemDebounceCounterStorage;

    



 
    const uint8 DemDebounceBehavior;
} Dem_DebounceCounterBasedClassType;

 
typedef struct
{
     
    const uint32 DemDebounceTimeFailedThreshold;

     
    const uint32 DemDebounceTimePassedThreshold;

    



 
    const uint8 DemDebounceBehavior;
} Dem_DebounceTimeBaseClassType;

 
typedef Std_ReturnType (*Dem_GetFDCFncType)(sint8* FDC);



 

 
typedef Std_ReturnType (*Dem_CallbackInitMForEType)(Dem_InitMonitorReasonType InitMonitorReason);

 
typedef Std_ReturnType (*Dem_CallbackEventDataChangedType)(Dem_EventIdType EventId);

 
typedef Std_ReturnType (*Dem_TriggerOnEventStatusType)(
    Dem_EventIdType EventId,
    Dem_UdsStatusByteType EventStatusByteOld,
    Dem_UdsStatusByteType EventStatusByteNew);


typedef Std_ReturnType (*ClearEventAllowedType)(boolean* Allowed);

 
typedef struct
{
     
    const ClearEventAllowedType ClearEventAllowed;
    



 
    const uint8 DemClearEventAllowedBehavior;
} Dem_CallbackClearEventAllowedType;


typedef Std_ReturnType (
    *pDemComponentFailedCallbackFnc)(Dem_ComponentIdType ComponentId, boolean ComponentFailedStatus);
typedef struct
{
    const pDemComponentFailedCallbackFnc DemComponentFailedCallbackFnc;
    const boolean DemComponentIgnoresPriority; 
 
    const uint16 DemParentComponentRef;         
} DemComponentTypes;

 
typedef struct
{
     
    const Dem_CallbackInitMForEType DemCallbackInitMForE;

     
    const Dem_CallbackEventDataChangedType DemCallbackEventDataChanged;

     
    const Dem_CallbackClearEventAllowedType *
    DemCallbackClearEventAllowed;

     
    const uint16 StatusChangedCbkStartIndex;
    const uint8 StatusChangedCbkNum;

     
    const uint16 DemDTCRef;
     
    const uint16 AlgorithmRef;  
    const uint16 AlgorithmIndex;
    const uint8 AlgorithmType;

     
    const uint16 AttrStartIndex;
    const uint8 AttrNum;

     
    const uint8 DemEventFailureCycleCounterThreshold;
     
    const boolean DemEventAvailable;
     
    const boolean DemFFPrestorageSupported;  

    



 
    const uint8 DemEventKind;

    



 
    const uint8 DemReportBehavior;

     
    const uint8 DemOperationCycleRef;

     
    const uint8 DemEnableConditionGroupRef;

     
    const uint8 DemStorageConditionGroupRef;

     
    const uint16 DemComponentClassRef;

    const uint8 DemComponentPriority;

    
 
    const uint16 DemOBDGroupingAssociativeEventsRef;
} Dem_EventParameterType;



 
 
typedef struct
{
    uint8 RecordNum;  
    uint8 Data[13u];
} Dem_FreezeFrameInfoType;

 
typedef struct
{
    uint8 RecordNum;  
    uint8 Data[13];
} Dem_GlobalFreezeFrameInfoType;

 
typedef struct
{
    uint8 FFNum;
    uint8 LatestFF;
    Dem_FreezeFrameInfoType FFList[1u];
    Dem_GlobalFreezeFrameInfoType GlobalFFList;
    uint8 ExtStatus[(((4u) + 7u) >> 3u)];
    uint8 AbsTime;
    uint8 UdsStatus;
    uint8 AgingCounter;
    uint8 HealingCounter;
    uint8 FailureCounter;
    uint8 OccurrenceCounter;
    uint8 AgedCounter;
     
 
    uint8 EventStatusFlag;
    Dem_EventIdType EventId;
} Dem_EventMemEntryType;

 
typedef struct
{
    Dem_EventMemEntryType* EntryList;
    const uint8 EntryNum;
    const Dem_DTCOriginType ExtId;
} Dem_MemDestConfigType;

extern const Dem_MemDestConfigType DemMemDestCfg[1u];

extern const uint16 DemNvRamBlockId[2];



 
typedef struct
{
    
 
    const uint8 DemOBDCompliancy;

     
    const uint8 DemOBDEngineType;

    
 
    const uint8 DemOBDInputAcceleratorPedalInformation;

     
    const uint8 DemOBDInputAmbientPressure;

     
    const uint8 DemOBDInputAmbientTemperature;

     
    const uint8 DemOBDInputDistanceInformation;

     
    const uint8 DemOBDInputEngineSpeed;

     
    const uint8 DemOBDInputEngineTemperature;

     
    const uint8 DemOBDInputProgrammingEvent;

     
    const uint8 DemOBDInputVehicleSpeed;

     
    const uint8 DemOBDTimeSinceEngineStart;

} DemGeneralOBDType;


typedef struct
{
    const sint16 DemDtrCompuDenominator0;
    const sint16 DemDtrCompuNumerator0;
    const sint16 DemDtrCompuNumerator1;
    const uint16 DemDtrEventRef;
    const uint8 DemDtrMid;
    const uint8 DemDtrTid;
    const uint8 DemDtrUasid;
    const uint8 DemDtrUpdateKind;
} DTRType;

typedef Std_ReturnType (*DemDataElementReadFncType)(uint8* Buffer);

typedef struct
{
    boolean DemInterFlag;
    uint8 DemDataElementDataSize;
    DemDataElementReadFncType DemDataElementReadFnc;
} DemDataElementClassTypes;

typedef struct
{
    const uint8 DemSecondaryFunctionIdRefNum;
    const uint8 DemSecondaryFunctionIdRef[2u];
} DemSecondaryFunctionIdType;

typedef struct
{
    const uint8 DemDiagnosticEventRef;
    const uint8 DemFunctionIdRef;
    const uint8 DemIUMPRDenGroup;
    const uint8 DemIUMPRGroup;  
    const uint8 DemRatioId;
    const uint8 DemRatioKind;
    const DemSecondaryFunctionIdType * DemSecondaryFunctionIdRef;
} DemRatioType;



 

typedef struct
{
    const DemComponentTypes * pDemComponent;
    const Dem_DTCType * DemCfgDTC;
    const uint32 * GroupOfDTC;
    uint16 DemDTCNum;
    const Dem_DTCAttributesType * pDemDTCAttributes;
    const Dem_DebounceCounterBasedClassType * DebounceCounterBasedClass;
    const Dem_DebounceTimeBaseClassType * DebounceTimeBaseClass;
    const DTRType * pDTR;
    const Dem_EventParameterType * pDemEventParameter;
    uint16 DemEventNum;
    const J1939NodeType * pJ1939Node;
    const DemObdDTCType * ObdDTC;
    const Dem_PidClassType * PidClass;
    const Dem_OperationCycleType * OperationCycle;
    uint16 DemOperationCycleNum;
    const DemRatioType * pDemRatio;
    const DemDataElementClassTypes * pDemDataElementClass;
    const Dem_EventIdType * DTCMapping;
} Dem_ConfigType;




 
 




















 
 

 




 



 



 



 
typedef  uint8   Dcm_SecLevelType;



 
typedef  uint8   Dcm_SesCtrlType;



  
typedef  uint8   Dcm_ProtocolType;



 
typedef  uint8   Dcm_NegativeResponseCodeType;
 
typedef  uint8   Dcm_ConfirmationStatusType;

typedef  uint8   Dcm_OpStatusType;

typedef  uint8   Dcm_EcuResetType;

typedef  uint8   Rte_ModeType_DcmEcuReset;

typedef  uint8   Rte_ModeType_DcmControlDTCSetting;





 
extern uint8 DemOperationCycleStatus[(((1u) + 7u) >> 3u)];  


extern Dem_InternalDataType DemInternalData;

extern Dem_EventQueueType DemEventQueue;


 
extern const uint8 DemEnableConditionGroup[3u][(((4u) + 7u) >> 3u)];

 
extern const uint8 DemEnableCondition[(((4u) + 7u) >> 3u)];




extern Dem_IndicatorStatusType DemWIRStatus[1u];

 
extern Dem_DebounceCounterInfoType DemDebounceCounterInfo[59u];




 
 













 
 
extern  Std_ReturnType Dem_InterSetEnableCondition(uint8 EnableConditionID, boolean ConditionFulfilled);

 









 
 
extern  void Dem_SetEnableCondictionProcess(void);

 









 
 
extern  void Dem_SetStorageCondictionProcess(void);

 














 
 
extern  Std_ReturnType
    Dem_InterSetStorageCondition(uint8 StorageConditionID, boolean ConditionFulfilled);

 




 
 
extern  void Dem_InterPreInit(void);

 









 
 
extern  void Dem_InterInit(void);

 












 
 
extern  Std_ReturnType Dem_InterSetEventStatus(Dem_EventIdType* IntId, Dem_EventStatusType EventStatus);

 












 
 
extern  void
    Dem_InterResetEventDebounceStatus(Dem_EventIdType EventId, Dem_DebounceResetStatusType DebounceResetStatus);

 










 
 
extern  Std_ReturnType Dem_InterPrestoreFreezeFrame(Dem_EventIdType IntId);

 










 
 
extern  Std_ReturnType Dem_InterClearPrestoredFreezeFrame(Dem_EventIdType IntId);

 










 
 
extern  Std_ReturnType Dem_InterGetComponentFailed(
    Dem_ComponentIdType ComponentId,
    const boolean * ComponentFailed
);

 









 
 
extern  Std_ReturnType Dem_InterGetIndicatorStatus(
    uint8 IndicatorId,
    Dem_IndicatorStatusType * IndicatorStatus);

 











 
 
extern  Std_ReturnType Dem_InterSetIndicatorStatus(
    uint8 IndicatorId,
    const Dem_IndicatorStatusType * IndicatorStatus);

 


























 
 
extern  Std_ReturnType Dem_InterGetEventFreezeFrameDataEx(
    Dem_EventIdType IntId,
    uint8 RecordNumber,
    uint16 DataId,
    uint8 * DestBuffer,
    uint16 * BufSize);

 

















 
 
extern  Std_ReturnType Dem_InterGetEventExtendedDataRecordEx(
    Dem_EventIdType IntId,
    uint8 RecordNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 









 
 
static inline  uint8 Dem_GetInternalMemDest(Dem_DTCOriginType DTCOrigin)
{
    uint8 iloop;
    uint8 ret = 0xFFu;
    for (iloop = 0; iloop < 1u; iloop++)
    {
        if (DemMemDestCfg[iloop].ExtId == DTCOrigin)
        {
            ret = iloop;
            break;
        }
    }
    return ret;
}

 











 
 
extern  Std_ReturnType
    Dem_InterSetComponentAvailable(Dem_ComponentIdType ComponentId, boolean AvailableStatus);

 









 
 

extern  void Dem_DebounceFreeze(Dem_EventIdType IntId);



 









 
 
extern  void
    Dem_TriggerOnEventStatus(Dem_EventIdType IntId, Dem_UdsStatusByteType OldStatus, Dem_UdsStatusByteType NewStatus);

 









 
 
extern  void Dem_ClearAllDTC(uint8 memDest);

 









 
 
extern  void Dem_ClearGroupDTC(uint8 memDest, uint8 GroupIndex);

 









 
 
extern  void Dem_ClearDTRInfoByEventId(Dem_EventIdType IntId);

 









 
 
extern  void Dem_GetFreezeFrame(Dem_EventIdType IntId, uint8 * pBuffer);

 









 
 
extern  boolean Dem_CheckFreezeFrameIsStorage(Dem_EventIdType IntId, uint8 Trigger);

 









 
 
extern  Std_ReturnType Dem_ExtendedDataGetFromEntry(
    const Dem_EventMemEntryType * pEntry,
    uint8 RecordNum,
    uint8 * pBuffer,
    uint16* BufSize);


 









 
 
extern  boolean Dem_CheckExtendedDataIsStorage(Dem_EventIdType IntId, uint8 Trigger);

 









 
 
extern  void Dem_EventQueueProcessWithDebounce(Dem_EventIdType IntId);

 









 
 
extern  void Dem_EventTestFailedProcessOfComponent(
    const Dem_EventRelateInformationType * pEvent,
    const Dem_EventParameterType * pEventCfg);

 









 
 
extern  uint8 Dem_GetMemDestMaxNumOfDtc(void);

 









 
 
extern  Dem_IndicatorStatusType Dem_GetDemWIRStatus(uint8 DemIndicatorRef);

 









 
 
extern  boolean Dem_CheckWIROn(
    const Dem_EventRelateInformationType * pEvent,
    const Dem_EventParameterType * pEventCfg);

 









 
 
extern  boolean Dem_CheckWIROff(
    const Dem_EventRelateInformationType * pEvent,
    const Dem_EventParameterType * pEventCfg);

 









 
 
extern  void Dem_ResponseOnDtcStatusChange(Dem_EventIdType IntId);

 









 
 
extern  void Dem_InterEventTestPassed(Dem_EventIdType IntId);

 









 
 
extern  void Dem_InterOperationCycleStart(Dem_EventIdType IntId);

 









 
 
extern  void Dem_CallDataChangedOfMemEntryAllocate(Dem_EventIdType IntId);

 









 
 
extern void Dem_ClearEventRelateInformation(Dem_EventRelateInformationType * pEvent);

 









 
 
extern  void Dem_DeleteRelatedData(Dem_EventMemEntryType * pEntry);

 









 
 
extern  void Dem_EventDataStorageTrigger(Dem_EventIdType IntId, uint8 Trigger);

 









 
 
extern  void Dem_DebounceInit(void);

 









 
 
extern  void Dem_DebounceReset(Dem_EventIdType IntId);

 









 
 
extern  Std_ReturnType
    Dem_GetInteralFDC(Dem_EventIdType IntId, sint8 * FaultDetectionCounter);

 









 
 
extern  Dem_EventStatusType Dem_DebounceProcess(Dem_EventDataBufferType pEventBuffer);

 









 
 
extern  void Dem_DebounceTimerMain(void);


 









 
 
extern  void Dem_InterIntReadNvRAM(
    uint16 iloop,
    const Dem_EventRelateInformationStorageType * InformationStorage);

 











 
 
extern  Dem_ReturnSetFilterType Dem_InterDcmSetFreezeFrameRecordFilter(
    Dem_DTCFormatType DTCFormat,
    uint16 * NumberOfFilteredRecords);

 














 
 
extern  Dem_ReturnGetNextFilteredElementType Dem_InterDcmGetNextFilteredRecord(
    uint32 * DTC,
    uint8 * RecordNumber);

 


















 
 
extern  Dem_ReturnGetFreezeFrameDataByDTCType Dem_InterDcmGetFreezeFrameDataByDTC(
    uint32 DTC,
    uint16 memDestAndRecordNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 














 
 
extern  Dem_ReturnGetSizeOfDataByDTCType Dem_InterDcmGetSizeOfFreezeFrameByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 RecordNumber,
    uint16 * SizeOfFreezeFrame);

 









 
 
extern  const Dem_ExtendedDataRecordClassType *
    Dem_GetExtendedDataRecordCfg(uint8 ExtendedDataNumber);

 









 
 
extern  Dem_ReturnGetExtendedDataRecordByDTCType Dem_GetExtendedRecordDataLoop(
    uint32 DTC,
    uint16 memDestAndExtendedDataNumber,
    uint8 * DestBuffer,
    uint16 * BufSize);

 















 
 
extern  Dem_ReturnGetSizeOfDataByDTCType Dem_InterDcmGetSizeOfExtendedDataRecordByDTC(
    uint32 DTC,
    Dem_DTCOriginType DTCOrigin,
    uint8 ExtendedDataNumber,
    uint16 * SizeOfExtendedDataRecord);

 












 
 
extern  Dem_ReturnControlDTCSettingType
    Dem_InterDcmDisableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);

 















 
 
extern  Dem_ReturnControlDTCSettingType
    Dem_InterDcmEnableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);

 









 
 
extern  uint8 Dem_GetDemMalfunctionLampIndicator(void);


 











 
 
extern  void Dem_SubGetLampStatusOfJ1939DcmGetNextDTCwithLampStatus(
    const Dem_IndicatorAttributeType * pWIRAttr,
    const Dem_EventRelateInformationType * pEvent,
    Dem_J1939DcmLampStatusType * LampStatus);



 









 
 
extern  Std_ReturnType Dem_FreezeFrameGetFromEntry(
    Dem_EventMemEntryType * pEntry,
    uint8 RecordNum,
    uint16 Did,
    uint8 * pBuffer,
    uint16 * BufSize);




 



 

extern const Dem_ConfigType DemPbCfg;  


 
 







 
 
extern  void Dem_PreInit(void);
 









 
 
extern  void Dem_Init(const Dem_ConfigType * ConfigPtr);

 









 
 
extern  void Dem_GetVersionInfo(Std_VersionInfoType * versionInfo);

 









 
 
extern  void Dem_Shutdown(void);

 













 
 
extern  void Dem_ReportErrorStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus);

 












 
 
 
extern  Std_ReturnType Dem_SetEventAvailable(Dem_EventIdType EventId, boolean AvailableStatus);

 












 
 
extern  Std_ReturnType Dem_SetEventStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus);

 













 
 
extern  Std_ReturnType
    Dem_ResetEventDebounceStatus(Dem_EventIdType EventId, Dem_DebounceResetStatusType DebounceResetStatus);

 












 
 
extern  Std_ReturnType Dem_ResetEventStatus(Dem_EventIdType EventId);

 











 
 
extern  Std_ReturnType Dem_PrestoreFreezeFrame(Dem_EventIdType EventId);

 











 
 
extern  Std_ReturnType Dem_ClearPrestoredFreezeFrame(Dem_EventIdType EventId);

 














 
 
extern  Std_ReturnType
    Dem_GetComponentFailed(Dem_ComponentIdType ComponentId, boolean * ComponentFailed);

 










 
 
extern  Std_ReturnType
    Dem_GetEventStatus(Dem_EventIdType EventId, Dem_UdsStatusByteType * EventStatusByte);

 










 
 
extern  Std_ReturnType
    Dem_GetEventFailed(Dem_EventIdType EventId, boolean * EventFailed);

 











 
 
extern  Std_ReturnType
    Dem_GetEventTested(Dem_EventIdType EventId, boolean * EventTested);

 












 
 
extern  Std_ReturnType
    Dem_SetOperationCycleState(uint8 OperationCycleId, Dem_OperationCycleStateType CycleState);

 











 
 
extern  Std_ReturnType Dem_GetOperationCycleState(
    uint8 OperationCycleId,
    Dem_OperationCycleStateType * CycleState);

 










 
 
extern  Std_ReturnType Dem_SetAgingCycleState(uint8 OperationCycleId);

 












 
 
extern  Std_ReturnType Dem_SetWIRStatus(Dem_EventIdType EventId, boolean WIRStatus);

 










 
 
extern  Std_ReturnType Dem_GetDebouncingOfEvent(
    Dem_EventIdType EventId,
    Dem_DebouncingStateType * DebouncingState);

 













 
 
extern  Std_ReturnType Dem_GetDTCOfEvent(
    Dem_EventIdType EventId,
    Dem_DTCFormatType DTCFormat,
    uint32 * DTCOfEvent);

 













 
 
extern  Std_ReturnType Dem_SetEnableCondition(uint8 EnableConditionID, boolean ConditionFulfilled);

 














 
 
extern  Std_ReturnType Dem_SetStorageCondition(uint8 StorageConditionID, boolean ConditionFulfilled);

 















 
 
extern  Std_ReturnType
    Dem_GetFaultDetectionCounter(Dem_EventIdType EventId, sint8 * FaultDetectionCounter);

 









 
 
extern  Std_ReturnType
    Dem_GetIndicatorStatus(uint8 IndicatorId, Dem_IndicatorStatusType * IndicatorStatus);

 











 
 
extern  Std_ReturnType Dem_SetIndicatorStatus(
    uint8 IndicatorId,
    const Dem_IndicatorStatusType * IndicatorStatus);

 


























 
 
extern  Std_ReturnType Dem_GetEventFreezeFrameDataEx(
    Dem_EventIdType EventId,
    uint8 RecordNumber,
    uint16 DataId,
    uint8 * DestBuffer,
    uint16* BufSize);

 


















 
 
extern  Dem_ReturnClearDTCType
    Dem_ClearDTC(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin);

 




















 
 
extern  Std_ReturnType Dem_GetEventExtendedDataRecordEx(
    Dem_EventIdType EventId,
    uint8 RecordNumber,
    uint8 * DestBuffer,
    uint16* BufSize);

 












 
 
extern  Std_ReturnType Dem_GetEventMemoryOverflow(
    Dem_DTCOriginType DTCOrigin,
    boolean * OverflowIndication);

 












 
 
extern  Std_ReturnType Dem_GetNumberOfEventMemoryEntries(
    Dem_DTCOriginType DTCOrigin,
    uint8 * NumberOfEventMemoryEntries);

 











 
 
extern  Std_ReturnType
    Dem_SetComponentAvailable(Dem_ComponentIdType ComponentId, boolean AvailableStatus);

 













 
 
extern  Std_ReturnType
    Dem_SetDTCSuppression(uint32 DTC, Dem_DTCFormatType DTCFormat, boolean SuppressionStatus);






 


 


 
 
 



 
 
typedef enum
{
    CANSM_UNINITED,
    CANSM_INITED
} CanSM_StateType;

 
typedef struct
{
     
    uint8 CanSMTransceiverId;
     
    boolean CanSMCanTrcvPnEnabled;
} CanSM_TrcvRefType;

 
typedef struct
{
     
    uint8 NetWorkRefControllerNumber;
     
    const uint8 * CanSMControllerId;
} CanSM_ControllerRefType;

 
typedef struct
{
     
    const Dem_EventIdType* BusOffPara;

     
    Dem_EventIdType* ModeReqTimeoutPara;
} CanSM_DemEventParameterRefType;
 
typedef struct
{
    
 
    uint8 CanSMBorCounterL1ToL2;
    
 
    uint16 CanSMBorTimeL1;
    
 
    uint16 CanSMBorTimeL2;
     
    uint16 CanSMBorTimeTxEnsured;
     
    boolean CanSMEnableBusOffDelay;
     
    NetworkHandleType CanSMComMNetworkHandleRef;
     
    const CanSM_TrcvRefType * TrcvRef;
     
    const CanSM_ControllerRefType * ControllerRef;
     
    const CanSM_DemEventParameterRefType * CanSMDemEventParameterRefs;
} CanSM_ManagerNetworkType;

 
typedef struct
{
     
    uint8 CanSMModeRequestRepetitionMax;
     
    uint16 CanSMModeRequestRepetitionTime;
     
    const CanSM_ManagerNetworkType * CanSMManagerNetworkRef;
} CanSM_ConfigType;

typedef enum
{
    CANSM_BSM_S_NOT_INITIALIZED,
    CANSM_BSM_DEINITPNNOTSUPPORTED,
    CANSM_BSM_S_NOCOM,
    CANSM_BSM_WUVALIDATION,
    CANSM_BSM_S_PRE_FULLCOM,
    CANSM_BSM_S_FULLCOM,
    CANSM_BSM_S_SILENTCOM,
    CANSM_BSM_S_SILENTCOM_BOR
} CanSM_BSM_StateType;


typedef enum
{
    DEINITPNNOT_S_CC_STOPPED,
    DEINITPNNOT_S_CC_STOPPED_WAIT,
    DEINITPNNOT_S_CC_SLEEP,
    DEINITPNNOT_S_CC_SLEEP_WAIT,
    DEINITPNNOT_S_TRCV_NORMAL,
    DEINITPNNOT_S_TRCV_NORMAL_WAIT,
    DEINITPNNOT_S_TRCV_STANDBY,
    DEINITPNNOT_S_TRCV_STANDBY_WAIT
} CanSM_DeinitPnNotSupportedStateType;

typedef enum
{
    WUVALIDATION_S_TRCV_NORMAL,
    WUVALIDATION_S_TRCV_NORMAL_WAIT,
    WUVALIDATION_S_CC_STOPPED,
    WUVALIDATION_S_CC_STOPPED_WAIT,
    WUVALIDATION_S_CC_STARTED,
    WUVALIDATION_S_CC_STARTED_WAIT,
    WUVALIDATION_WAIT_WUVALIDATION_LEAVE
} CanSM_WUValidationStateType;

typedef enum
{
    PREFULLCOM_S_TRCV_NORMAL,
    PREFULLCOM_S_TRCV_NORMAL_WAIT,
    PREFULLCOM_S_CC_STOPPED,
    PREFULLCOM_S_CC_STOPPED_WAIT,
    PREFULLCOM_S_CC_STARTED,
    PREFULLCOM_S_CC_STARTED_WAIT
} CanSM_PreFullComStateType;

typedef enum
{
    FULLCOM_S_BUS_OFF_CHECK,
    FULLCOM_S_NO_BUS_OFF,
    FULLCOM_S_CC_STOPPED,
    FULLCOM_S_CC_STOPPED_WAIT,
    FULLCOM_S_CC_STARTED,
    FULLCOM_S_CC_STARTED_WAIT,
    FULLCOM_S_RESTART_CC,
    FULLCOM_S_RESTART_CC_WAIT,
    FULLCOM_S_TX_OFF
} CanSM_FullComStateType;

typedef enum
{
    CHANGEBR_CHANGE_BR_SYNC,
    CHANGEBR_S_CC_STOPPED,
    CHANGEBR_S_CC_STOPPED_WAIT,
    CHANGEBR_S_CC_STARTED,
    CHANGEBR_S_CC_STARTED_WAIT
} CanSM_ChangeBaudrateStateType;

typedef enum
{
    SILENTBOR_S_RESTART_CC,
    SILENTBOR_S_RESTART_CC_WAIT
} CanSM_SilentComBORStateType;

typedef enum
{
    CANSM_NO_REQUEST,
    CANSM_NO_COMMUNICATION,
    CANSM_SILENT_COMMUNICATION,
    CANSM_FULL_COMMUNICATION
} CanSM_RequestModeType;

typedef enum
{
    T_NO_INDICATED,
    T_TRCV_NORMAL_INDICATED,
    T_TRCV_STANDBY_INDICATED,
} CanSM_CanIfIndicatedType;

typedef struct
{
    uint32 ModeRequestRepetitionTime;
     
    uint32 waitCanIfIndicatedStartTime;
     
    uint32 busOffEventStartTime;
     
    uint32 borTimeTxEnsuredTime;
     
    uint8 busOffCounter;
     
    uint8 repeatCounter;
    boolean busOffEvent;  
     
    CanSM_CanIfIndicatedType canIfIndicated;
     
    CanSM_RequestModeType requestComMode;
     
    ComM_ModeType curComMode;
     
    CanSM_BSM_StateType curBsmState;
     
    CanSM_DeinitPnNotSupportedStateType deinitPnNotSupportedState;
     
    CanSM_WUValidationStateType wuValidationState;
     
    CanSM_PreFullComStateType preFullComState;
     
    CanSM_FullComStateType fullComState;
     
    CanSM_SilentComBORStateType silentComBORState;
} CanSM_NetWorkRunTimeType;


 

extern const CanSM_ConfigType CanSM_Config;



 

 









 
 
 void
CanSM_Init(const CanSM_ConfigType * ConfigPtr);






 
void CanSM_DeInit(void);










 
Std_ReturnType CanSM_RequestComMode(NetworkHandleType network, ComM_ModeType comMMode);










 
Std_ReturnType CanSM_GetCurrentComMode(NetworkHandleType network, ComM_ModeType* comMModePtr);




 










 
 
 Std_ReturnType
CanSM_StartWakeupSource(NetworkHandleType network);

 










 
 
 Std_ReturnType
CanSM_StopWakeupSource(NetworkHandleType network);













 












 































 


 
 




















 
 


 
 

 

 

 

 

 

 

 

 

 


 

 

 

 

 

 
 
 








 






 




















 
 


 

 


 
 
typedef struct {
    Std_ReturnType (*busSm_RequestComMode)(NetworkHandleType network, ComM_ModeType ComM_Mode);
    Std_ReturnType (*busSm_GetCurrentComMode)(NetworkHandleType network, ComM_ModeType* ComM_Mode);
} ComM_BusSmConfigType;

 
typedef struct {
    NetworkHandleType inerChIdx;
    uint32 busType;
    NetworkHandleType busIndex;
    const ComM_BusSmConfigType* busSmCfgType;
    uint8 nmVariant;
    uint8 dcmInReqIdx;
    const uint8* dcmNotifyIdPtr;
    uint8 cfgMask[1];
     
    uint8* requestMask;
    uint8 requestMaskLen;
} ComM_ChannelConfigType;

 
typedef struct ComM_UserConfigSTag{
    ComM_UserHandleType userId;
    const uint8* directChList;
    uint32 directChListNum;
    const uint8* mapAllChList;
    uint32 mapAllChListNum;
    const uint8* userInChIdex;
} ComM_UserConfigType;

typedef struct {
    const ComM_ChannelConfigType* chCfgPtr;
    const ComM_UserConfigType* userCfgPtr;
    uint32 userCfgNum;
}ComM_ConfigType;

 
extern const ComM_ConfigType ComM_Config;



 

 

 


 void
ComM_Init(const ComM_ConfigType * ConfigPtr);

 void ComM_DeInit(void);


 Std_ReturnType
ComM_GetStatus(ComM_InitStatusType* Status);

 Std_ReturnType
ComM_RequestComMode(ComM_UserHandleType User, ComM_ModeType ComMode);

 Std_ReturnType
ComM_GetMaxComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);

 Std_ReturnType
ComM_GetRequestedComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);

 Std_ReturnType
ComM_GetCurrentComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);

 Std_ReturnType
ComM_GetCurrentPNCComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);























 












 

 



























































 
 






































































































 

 



 












 












 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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


 
 




















 
 

 




















 
 




 



 



 











 




 






 
 
 


 
 


 



 

 
 
 
 
 
 
 
 
 



 
 
 
 
 


 




















 
 


 

 




 



 

 
























 



 
 
 
 
 
 





 

typedef uint8 Dcm_SpecificCauseCodeType;

typedef uint8 Dcm_DidSupportedType;

typedef uint8 Dcm_CommunicationModeType;

typedef uint8 Dcm_EcuStartModeType;




 

 


 
 
 
 
 
 
typedef uint8 Dcm_StatusType;
 
typedef uint8 Dcm_ReturnReadMemoryType;
 
typedef uint8 Dcm_ReturnWriteMemoryType;
 
 




 
typedef enum
{
    DCM_P2TIMER_ON = 0,
    DCM_P2TIMER_OFF = 1
} Dcm_P2StateType;

typedef struct
{
    uint32 Dcm_P2CurTimer;
    uint32 Dcm_P2ExpiredTimer;
    uint8 PendingNum;
    Dcm_P2StateType Dcm_P2State;
} Dcm_P2CtrlType;



 
typedef enum
{
    DCM_CH_IDLE = 0,     
    DCM_CH_OCCUPIED = 1  
} Dcm_ChannelStateType;

typedef enum
{
    DCM_PENDING_REQUEST_NONE = 0,     
    DCM_PENDING_REQUEST_RECEIVE = 1,  
    DCM_PENDING_REQUEST_READY = 2,    
    DCM_PENDING_REQUEST_PROCESS = 3   
} Dcm_PendingRequestStateType;

typedef struct
{
    uint8 Dcm_ChannelCfgIndex;
     
    uint32 Dcm_BufferCunrentPosition;
    uint32 Dcm_BufferErasePosition;
    Dcm_ChannelStateType Dcm_ChannelRxState;  
    Dcm_ChannelStateType Dcm_ChannelTxState;  
} Dcm_ChannelCtrlType;


typedef struct
{
    uint8 Dcm_ConnectionCfgIndex;
    boolean Dcm_ConnectionActive;
} Dcm_ConnectionCtrlType;



 
typedef uint8 Dcm_MsgItemType;
typedef Dcm_MsgItemType* Dcm_MsgType;
typedef uint32 Dcm_MsgLenType;
typedef uint8 Dcm_IdContextType;

typedef struct
{
    uint8 ReqType;  
    boolean SuppressPosResponse;
     
    boolean CancelOperation;
     
} Dcm_MsgAddInfoType;

typedef struct
{
    Dcm_MsgType pReqData;       
    Dcm_MsgLenType ReqDataLen;  
     
    Dcm_MsgType pResData;       
    Dcm_MsgLenType ResDataLen;  
    Dcm_MsgAddInfoType MsgAddInfo;
     
    Dcm_MsgLenType ResMaxDataLen;  
    Dcm_IdContextType IdContext;
    PduIdType DcmRxPduId;  
} Dcm_MsgContextType;

typedef enum
{
    DCM_MSG_WAIT = 0,
    DCM_MSG_RECEIVED = 1,
    DCM_MSG_PROCESSED = 2,
    DCM_MSG_TRANSMISSION = 3,
    DCM_MSG_CONFIRMATION = 4
} Dcm_MsgStateType;

typedef enum
{
    DCM_POS_RSP = 0,          
    DCM_NEG_RSP = 1,          
    DCM_POS_RSP_SUPPRESS = 2  
} Dcm_RspType;

typedef struct
{
    uint8 SID;          
    uint8 Subfunction;  
    Dcm_NegativeResponseCodeType NRC;
     
    boolean SendFlag;  
    PduIdType DcmTxPduId;
    uint8 Dcm_RxCtrlChannelIndex;   
    uint8 Dcm_TxCtrlChannelIndex;   
    Dcm_RspType RspStyle;           
    Dcm_MsgContextType MsgContext;  
    Dcm_P2CtrlType Dcm_P2Ctrl;      
    Dcm_MsgStateType Dcm_MsgState;  
    Std_ReturnType Dcm_Ret;
    Dcm_OpStatusType Dcm_OpStatus;
} Dcm_MsgCtrlType;



 
typedef struct
{
    PduLengthType Length;
    uint8 Buffer[(64u)];
    boolean ConcurrentTesterFailed;
} Dcm_FunctionMessageType;

typedef enum
{
    DCM_EQUALS = 0,
    DCM_EQUALS_NOT,
    DCM_GREATER_OR_EQUAL,
    DCM_GREATER_THAN,
    DCM_LESS_OR_EQUAL,
    DCM_LESS_THAN
} Dcm_ConditionType;

typedef struct
{
    Dcm_ConditionType DcmConditionType;
     
} Dcm_ModeConditionCfgType;

typedef enum
{
    DCM_AND = 0,
    DCM_OR
} Dcm_LogicalOperatorType;

typedef struct
{
    Dcm_LogicalOperatorType DcmLogicalOperator;
    uint8 DcmModeRuleNrcValue;
} Dcm_ModeRuleCfgType;

typedef struct
{
    const Dcm_ModeConditionCfgType * DcmModeCondition;
    const Dcm_ModeRuleCfgType * DcmModeRule;
     
} Dcm_ProcessingConditionsCfgType;



 
typedef enum
{
    DCM_BIG_ENDIAN = 0,
    DCM_LITTLE_ENDIAN = 1,
    DCM_OPAQUE = 2
} Dcm_DspEndianType;

 
typedef Std_ReturnType (*Dcm_GetSeedFncType)(
    Dcm_OpStatusType OpStatus,
    uint8* Seed,
    Dcm_NegativeResponseCodeType* ErrorCode);
typedef Std_ReturnType (*Dcm_CompareKeyFncType)(
    const uint8 * key,
    Dcm_OpStatusType OpStatus,
    Dcm_NegativeResponseCodeType* ErrorCode);
typedef Std_ReturnType (*Dcm_GetSecurityAttemptCounterFncType)(
    Dcm_OpStatusType OpStatus,
    uint8* AttemptCounter);
typedef Std_ReturnType (*Dcm_SetSecurityAttemptCounterFncType)(
    Dcm_OpStatusType OpStatus,
    uint8 AttemptCounter);

 
typedef Std_ReturnType (*Dcm_ClearDTCCheckFncType)(
    uint32 GoDTC,
    Dcm_NegativeResponseCodeType* ErrorCode);

typedef struct
{
    Dcm_ClearDTCCheckFncType DcmDsp_ClearDTCCheckFnc;
} Dcm_DspClearDTCType;

 
typedef struct
{
    boolean DcmDspComControlAllChannelUsed;
    NetworkHandleType DcmDspComMChannelId;
} Dcm_DspComControlAllChannelType;

typedef struct
{
    uint8 idle;
} Dcm_DspComControlSettingType;

typedef struct
{
    boolean DcmDspComControlSpecificChannelUsed;
    uint8 DcmDspSubnetNumber;
    NetworkHandleType DcmDspSpecificComMChannelId;
} Dcm_DspComControlSpecificChannelType;

typedef struct
{
    uint16 DcmDspComControlSubNodeId;
    boolean DcmDspComControlSubNodeUsed;
    NetworkHandleType DcmDspComMSubNodeChannelId;
} Dcm_DspComControlSubNodeType;

typedef struct
{
    uint8 DcmDspComControlAllChannelNum;
    const Dcm_DspComControlAllChannelType * DcmDspComControlAllChannel;
    const Dcm_DspComControlSettingType * DcmDspComControlSetting;
    uint8 DcmDspComControlSpecificChannelNum;
    const Dcm_DspComControlSpecificChannelType *
    DcmDspComControlSpecificChannel;
    uint8 DcmDspComControlSubNodeNum;
    const Dcm_DspComControlSubNodeType * DcmDspComControlSubNode;
} Dcm_DspComControlType;

typedef struct
{
    uint8 DcmDspCommonAuthorizationSecurityLevelRefNum;
    const uint8 * DcmDspCommonAuthorizationSecurityLevelRef;
    uint8 DcmDspCommonAuthorizationSessionRefNum;
    const uint8 * DcmDspCommonAuthorizationSessionRef;
} Dcm_DspCommonAuthorizationType;

 
typedef struct
{
    boolean DcmSupportDTCSettingControlOptionRecord;
} Dcm_DspControlDTCSettingType;

typedef struct
{
    uint16 DcmDspDataScalingInfoSize;
} Dcm_DspDataInfoType;

typedef enum
{
    USE_ASYNCH_CLIENT_SERVER,
    USE_ASYNCH_FNC
} Dcm_DspSecurityUsePortType;

 
typedef struct
{
    uint8 DcmDspSecurityLevel;     
    uint8 DcmDspSecuritySeedSize;  
    uint8 DcmDspSecurityKeySize;   
    uint8 DcmDspSecurityADRSize;
     
    boolean DcmDspSecurityAttemptCounterEnabled;
    uint8 DcmDspSecurityNumAttDelay;
     
    uint16 DcmDspSecurityDelayTime;
     
    uint16 DcmDspSecurityDelayTimeOnBoot;  
    Dcm_GetSeedFncType Dcm_GetSeedFnc;
    Dcm_CompareKeyFncType Dcm_CompareKeyFnc;
    Dcm_GetSecurityAttemptCounterFncType Dcm_GetSecurityAttemptCounterFnc;
    Dcm_SetSecurityAttemptCounterFncType Dcm_SetSecurityAttemptCounterFnc;
    Dcm_DspSecurityUsePortType DcmDspSecurityUsePort;
} Dcm_DspSecurityRowType;

 
typedef struct
{
    const Dcm_DspSecurityRowType * pDcm_DspSecurityRow;
     
    uint8 DcmDspSecurityRow_Num;  
} Dcm_DspSecurityType;

typedef enum
{
    DCM_NO_BOOT,
    DCM_OEM_BOOT,
    DCM_OEM_BOOT_RESPAPP,
    DCM_SYS_BOOT,
    DCM_SYS_BOOT_RESPAPP
} Dcm_DspSessionForBootType;

 
 
typedef struct
{
    Dcm_DspSessionForBootType DcmDspSessionForBoot;
    uint8 DcmDspSessionLevel;  
    uint16 DcmDspSessionP2ServerMax;
     
    uint16 DcmDspSessionP2StarServerMax;
     
} Dcm_DspSessionRowType;

 
typedef struct
{
    const Dcm_DspSessionRowType * pDcmDspSessionRow;
     
    uint8 DcmDspSessionRow_Num;  
} Dcm_DspSessionType;

 

typedef enum
{
    DCM_BOOLEAN = 0,
    DCM_SINT16 = 1,
    DCM_SINT16_N = 2,
    DCM_SINT32 = 3,
    DCM_SINT32_N = 4,
    DCM_SINT8 = 5,
    DCM_SINT8_N = 6,
    DCM_UINT16 = 7,
    DCM_UINT16_N = 8,
    DCM_UINT32 = 9,
    DCM_UINT32_N = 10,
    DCM_UINT8 = 11,
    DCM_UINT8_DYN = 12,
    DCM_UINT8_N = 13,
    DCM_VARIABLE_LENGTH = 14  
} Dcm_DspDataEnumType;

typedef enum
{
    USE_BLOCK_ID = 0,
    USE_DATA_ASYNCH_CLIENT_SERVER = 1,
    USE_DATA_ASYNCH_CLIENT_SERVER_ERROR = 2,
    USE_DATA_ASYNCH_FNC = 3,
    USE_DATA_ASYNCH_FNC_ERROR = 4,
    USE_DATA_SENDER_RECEIVER = 5,
    USE_DATA_SENDER_RECEIVER_AS_SERVICE = 6,
    USE_DATA_SYNCH_CLIENT_SERVER = 7,
    USE_DATA_SYNCH_FNC = 8,
    USE_ECU_SIGNAL = 9
} Dcm_DspDataUsePortEnumType;

typedef enum
{
    DCM_CONTROLMASK_EXTERNAL = 0,
    DCM_CONTROLMASK_INTERNAL = 1,
    DCM_CONTROLMASK_NO = 2
} Dcm_DspDidControlMaskEnumType;

typedef struct
{
    uint8 DcmDspDidControlMaskBitPosition;
} Dcm_DspDidControlEnableMaskType;

typedef struct
{
    Dcm_DspDidControlMaskEnumType DcmDspDidControlMask;
    uint8 DcmDspDidControlMaskSize;
    uint8 DcmDspDidControlSecurityLevelRefNum;
     
    const uint8 * pDcmDspDidControlSecurityLevelRow;
     
    uint8 DcmDspDidControlSessionRefNum;
     
    const uint8 * pDcmDspDidControlSessionRow;
    uint8 DcmDspDidControlRoleRef_Num;
     
    const uint8 * DcmDspDidControlRoleRef;
    boolean DcmDspDidFreezeCurrentState;
    
 
    boolean DcmDspDidResetToDefault;
    
 
    boolean DcmDspDidShortTermAdjustement;
    
 
    const Dcm_DspDidControlEnableMaskType * DcmDspDidControlEnableMask;
    
 
} Dcm_DspDidControlType;

typedef struct
{
     
    uint8 DcmDspDidReadSecurityLevelRefNum;  
    const uint8 *
    pDcmDspDidReadSecurityLevelRow;                               
    uint8 DcmDspDidReadSessionRefNum;                             
    const uint8 * pDcmDspDidReadSessionRow;  
    uint8 DcmDspDidReadRoleRef_Num;
    const uint8 * DcmDspDidReadRoleRef;
} Dcm_DspDidReadType;

typedef struct
{
     
    uint8 DcmDspDidWriteSecurityLevelRefNum;  
    const uint8 *
    pDcmDspDidWriteSecurityLevelRow;                               
    uint8 DcmDspDidWriteSessionRefNum;                             
    const uint8 * pDcmDspDidWriteSessionRow;  
    uint8 DcmDspDidWriteRoleRef_Num;
    const uint8 * DcmDspDidWriteRoleRef;
} Dcm_DspDidWriteType;

 
typedef struct
{
    uint8 DcmDspDDDIDMaxElements;
    boolean DcmDspDidDynamicallyDefined;
    
 
    
 
    
 
    const Dcm_DspDidControlType * pDcmDspDidControl;
     
    const Dcm_DspDidReadType * pDcmDspDidRead;
     
    const Dcm_DspDidWriteType * pDcmDspDidWrite;
     
} Dcm_DspDidInfoType;

 
typedef Std_ReturnType (*Dcm_ConditionCheckReadFncType)(
    Dcm_OpStatusType OpStatus,
    Dcm_NegativeResponseCodeType * Nrc);
   
typedef Std_ReturnType (*Dcm_EcuSignalFncType)(uint8 action, uint8 signal);
typedef Std_ReturnType (*Dcm_ReadEcuSignalFncType)(uint8 * signal);
 
typedef Std_ReturnType (*Dcm_GetScalingInformationFncType)(
    uint8 * ScalingInfo,
    Dcm_NegativeResponseCodeType * ErrorCode);
typedef Std_ReturnType (*Dcm_PidReadDataFncType)(uint8 * Data);
typedef Std_ReturnType (*Dcm_ReadDataFncType)(
    Dcm_OpStatusType OpStatus,
    uint8 * Data,
    Dcm_NegativeResponseCodeType* ErrorCode);
typedef Std_ReturnType (*Dcm_ReadDataLengthFncType)(
    Dcm_OpStatusType OpStatus,
    uint16 * DidLength);

typedef Std_ReturnType (*Dcm_FreezeCurrentStateFncType)(
    Dcm_OpStatusType OpStatus,
    const uint8 * ControlEnableMaskRecord,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_ResetToDefaultFncType)(
    Dcm_OpStatusType OpStatus,
    const uint8 * ControlEnableMaskRecord,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_ReturnControlToECUFncType)(
    const uint8 * ControlEnableMaskRecord,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_ShortTermAdjustmentFncType)(
    const uint8 * ControlStateInfo,
    uint16 DataLength,
    Dcm_OpStatusType OpStatus,
    uint8 * ControlMask,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_WriteDataFncType)(
    const uint8 * data,
    uint16 dataLength,
    Dcm_OpStatusType OpStatus,
    Dcm_NegativeResponseCodeType * ErrorCode);
 
typedef Std_ReturnType (*Dcm_ReadDidRangeDataLengthFncType)(
    uint16 DID,
    Dcm_OpStatusType OpStatus,
    uint16 * DataLength);

typedef Std_ReturnType (*Dcm_IsDidAvailableFncType)(
    uint16 DID,
    Dcm_OpStatusType OpStatus,
    Dcm_DidSupportedType * supported);

typedef Std_ReturnType (*Dcm_ReadDidDataFncType)(
    uint16 DID,
    uint8 * Data,
    Dcm_OpStatusType OpStatus,
    uint16 DataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_WriteDidDataFncType)(
    uint16 DID,
    const uint8 * Data,
    Dcm_OpStatusType OpStatus,
    uint16 DataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef enum
{
    LINEAR = 0,
    SCALE_LINEAR_AND_TEXTTABLE = 1,
    TEXTTABLE = 2
} Dcm_DspDataTypeCategoryType;

typedef struct
{
     
    uint8 idle;  
} Dcm_DspAlternativeDataInterfaceType;

typedef struct
{
    uint32 DcmDspDiagnosisRepresentationDataLowerRange;
    uint32 DcmDspDiagnosisRepresentationDataOffset;
    uint32 DcmDspDiagnosisRepresentationDataResolution;
    uint32 DcmDspDiagnosisRepresentationDataUpperRange;
} Dcm_DspLinearScaleType;

typedef struct
{
    uint32 DcmDspDiagnosisRepresentationDataValue;
    uint32 DcmDspInternalDataValue;
} Dcm_DspTextTableMappingType;

typedef struct
{
    const Dcm_DspDataTypeCategoryType * DcmDspDataTypeCategory;
    const Dcm_DspLinearScaleType * DcmDspLinearScale;
    const Dcm_DspTextTableMappingType * DcmDspTextTableMapping;
} Dcm_DspAlternativeDataPropsType;

typedef struct
{
     
    const Dcm_DspTextTableMappingType * DcmDspTextTableMapping;
} Dcm_DspAlternativeDataTypeType;

typedef struct
{
    const Dcm_DspAlternativeDataInterfaceType * DcmDspAlternativeDataInterface;
    const Dcm_DspAlternativeDataPropsType * DcmDspAlternativeDataProps;
    const Dcm_DspAlternativeDataTypeType * DcmDspAlternativeDataType;
} Dcm_DspDiagnosisScalingType;

typedef struct
{
    uint8 idle;
} Dcm_DspExternalSRDataElementClassType;

typedef struct
{
    Dcm_ConditionCheckReadFncType DcmDspDataConditionCheckReadFnc;
    
 
    boolean DcmConditionCheckReadFncUsed;
    Dcm_EcuSignalFncType DcmDspDataEcuSignalFnc;
    Dcm_ReadEcuSignalFncType DcmDspDataReadEcuSignalFnc;
    Dcm_DspEndianType DcmDspDataEndianness;
    Dcm_FreezeCurrentStateFncType DcmDspDataFreezeCurrentStateFnc;
    
 
    Dcm_GetScalingInformationFncType DcmDspDataGetScalingInfoFnc;
    
 
    Dcm_ReadDataLengthFncType DcmDspDataReadDataLengthFnc;
     
    Dcm_ReadDataFncType DcmDspDataReadFnc;
     
    Dcm_ResetToDefaultFncType DcmDspDataResetToDefaultFnc;
     
    Dcm_ReturnControlToECUFncType DcmDspDataReturnControlToECUFnc;
     
    Dcm_ShortTermAdjustmentFncType DcmDspDataShortTermAdjustmentFnc;
     
    Dcm_WriteDataFncType DcmDspDataWriteFnc;
     
    uint16 DcmDspDataSize;
    Dcm_DspDataEnumType DcmDspDataType;
    Dcm_DspDataUsePortEnumType DcmDspDataUsePort;
    uint16 DcmDspDataBlockId;
    uint8 DcmDspDataInfoIndex;
     
     
    const Dcm_DspDiagnosisScalingType * DcmDspDiagnosisScaling;
    const Dcm_DspExternalSRDataElementClassType *
    DcmDspExternalSRDataElementClass;
} Dcm_DspDataType;

typedef struct
{
    uint16 DcmDspDidDataPos;
    const Dcm_DspDataType * pDcmDspDidData;
} Dcm_DspDidSignalType;

typedef struct
{
    boolean DcmDspDidRangeHasGaps;
    uint16 DcmDspDidRangeIdentifierLowerLimit;
    uint16 DcmDspDidRangeIdentifierUpperLimit;
    Dcm_IsDidAvailableFncType DcmDspDidRangeIsDidAvailableFnc;
    Dcm_ReadDidRangeDataLengthFncType DcmDspDidRangeReadDataLengthFnc;
    Dcm_ReadDidDataFncType DcmDspDidRangeReadDidFnc;
    Dcm_WriteDidDataFncType DcmDspDidRangeWriteDidFnc;
    uint16 DcmDspDidRangeMaxDataLength;
    boolean DcmDspDidRangeUsePort;
    uint8 DcmDspDidRangeInfoIndex;
} Dcm_DspDidRangeType;

typedef struct DcmDspDid
{
    uint16 DcmDspDidId;  
    boolean DcmDspDidUsed;
    uint16 DcmDspDidInfoIndex;
     
    uint8 DcmDspRefDidNum;
     
    const uint16 * pDcmDspRefDidIdArray;
     
     
    
 
    uint16 DcmDspDidSignalNum;
    const Dcm_DspDidSignalType * pDcmDspDidSignal;
} Dcm_DspDidType;

 
typedef enum
{
    DCM_SERVICE_01 = 0,
    DCM_SERVICE_01_02 = 1,
    DCM_SERVICE_02 = 2
} Dcm_DspPidServiceEnumType;

typedef struct
{
    uint8 DcmDspPidSupportInfoLen;
    uint8 DcmDspPidSupportInfoPos;
} Dcm_DspPidSupportInfoType;

typedef struct
{
    Dcm_DspEndianType DcmDspPidDataEndianness;
    Dcm_PidReadDataFncType DcmDspPidDataReadFnc;
    Dcm_DspDataEnumType DcmDspPidDataType;
    Dcm_DspDataUsePortEnumType DcmDspPidDataUsePort;
} Dcm_DspPidService01Type;

typedef struct
{
    uint8 idle;
} Dcm_DspPidService02Type;

typedef struct
{
    uint8 DcmDspPidDataSupportInfoBit;
    const Dcm_DspPidSupportInfoType * DcmDspPidDataSupportInfoRef;
} Dcm_DspPidDataSupportInfoType;

typedef struct
{
    uint16 DcmDspPidDataPos; 

 
    uint16 DcmDspPidDataSize;
    const Dcm_DspPidDataSupportInfoType * pDcmDspPidDataSupportInfo;
    const Dcm_DspPidService01Type * DcmDspPidService01;
    const Dcm_DspPidService02Type * DcmDspPidService02;
} Dcm_DspPidDataType;

 
typedef struct
{
    uint8 DcmDspPidIdentifier;  
    Dcm_DspPidServiceEnumType DcmDspPidService;
    uint8 DcmDspPidSize;  
    boolean DcmDspPidUsed;
    uint8 DcmDspPidSupportInfoNum;
    const Dcm_DspPidSupportInfoType * DcmDspPidSupportInfo;
    uint8 pDcmDspPidDataNum;
    const Dcm_DspPidDataType * pDcmDspPidData;
} Dcm_DspPidType;

 
typedef struct
{
    uint8 DcmDspSupportedAddressAndLengthFormatIdentifier;
} Dcm_DspAddressAndLengthFormatIdentifierType;

typedef struct
{
    uint32 DcmDspReadMemoryRangeHigh;
    uint32 DcmDspReadMemoryRangeLow;
     
    uint8 DcmDspReadMemoryRangeSessionLevelRefNum;  
    const uint8 * pDcmDspReadMemoryRangeSessionLevelRow;
     
    uint8 DcmDspReadMemorySecurityLevelRefNum;  
    const uint8 * pDcmDspReadMemorySecurityLevelRow;
     
} Dcm_DspReadMemoryRangeInfoType;

typedef struct
{
    uint32 DcmDspWriteMemoryRangeHigh;
    uint32 DcmDspWriteMemoryRangeLow;
     
    uint8 DcmDspWriteMemoryRangeSessionLevelRefNum;  
    const uint8 * pDcmDspWriteMemoryRangeSessionLevelRow;
     
    uint8 DcmDspWriteMemorySecurityLevelRefNum;  
    const uint8 * pDcmDspWriteMemorySecurityLevelRow;
     
} Dcm_DspWriteMemoryRangeInfoType;

typedef struct
{
    uint8 DcmDspMemoryIdValue;
    uint8 DcmDspReadMemoryRangeInfoNum;
    const Dcm_DspReadMemoryRangeInfoType * DcmDspReadMemoryRangeInfo;
    uint8 DcmDspWriteMemoryRangeInfoNum;
    const Dcm_DspWriteMemoryRangeInfoType * DcmDspWriteMemoryRangeInfo;
} Dcm_DspMemoryIdInfoType;

typedef struct
{
    uint8 DcmDspAddressAndLengthFormatIdentifierNum;
    const Dcm_DspAddressAndLengthFormatIdentifierType *
    DcmDspAddressAndLengthFormatIdentifier;
    uint8 DcmDspMemoryIdInfoNum;
    const Dcm_DspMemoryIdInfoType * DcmDspMemoryIdInfo;
} Dcm_DspMemoryType;

 
 
typedef struct
{
    uint8 DcmDspRequestControlInBufferSize;
    uint8 DcmDspRequestControlOutBufferSize;
    uint8 DcmDspRequestControlTestId;  
} Dcm_DspRequestControlType;

typedef struct
{
    uint8 DcmRequestFileTransferFileSizeParameterLength;
    uint8 DcmRequestFileTransferLengthFormatIdentifier;
} Dcm_DspRequestFileTransferType;

 
typedef Std_ReturnType (*Dcm_StartRoutineFncType)(
    const uint8 * InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 * OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_StopRoutineFncType)(
    const uint8 * InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 * OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_RequestResultsRoutineFncType)(
    const uint8 * InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 * OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef struct
{
    uint8 idle;  
} Dcm_DspAlternativeArgumentDataType;

typedef struct
{
    const Dcm_DspAlternativeArgumentDataType * DcmDspAlternativeArgumentData;
    const Dcm_DspAlternativeDataPropsType * DcmDspAlternativeDataProps;
    const Dcm_DspAlternativeDataTypeType * DcmDspAlternativeDataType;
} Dcm_DspArgumentScalingType;

typedef struct
{
    Dcm_DspEndianType DcmDspRoutineSignalEndianness;
    uint16 DcmDspRoutineSignalLength;
    uint16 DcmDspRoutineSignalPos;
    Dcm_DspDataEnumType DcmDspRoutineSignalType;
    const Dcm_DspArgumentScalingType * DcmDspArgumentScaling;
} Dcm_DspRoutineInOutSignalType;
typedef struct
{
    uint8 RoutineInOutSignalNum;
    const Dcm_DspRoutineInOutSignalType * DcmDspRoutineInOutSignal;
} Dcm_DspRoutineInOutType;
typedef struct
{
    Dcm_RequestResultsRoutineFncType DcmDspRequestResultsRoutineFnc;
     
    const Dcm_DspCommonAuthorizationType *
    DcmDspRequestRoutineResultsCommonAuthorizationRef;
    uint8 DcmDspRequestRoutineResultsRoleRef_Num;
    const uint8 * DcmDspRequestRoutineResultsRoleRef;
    const Dcm_DspRoutineInOutType * DcmDspRequestRoutineResultsIn;
    const Dcm_DspRoutineInOutType * DcmDspRequestRoutineResultsOut;
} Dcm_DspRequestRoutineResultsType;

 
typedef struct
{
    Dcm_StartRoutineFncType DcmDspStartRoutineFnc;
     
    const Dcm_DspCommonAuthorizationType *
    DcmDspStartRoutineCommonAuthorizationRef;
    uint8 DcmDspStartRoutineRoleRef_Num;
    const uint8 * DcmDspStartRoutineRoleRef;
    const Dcm_DspRoutineInOutType * DcmDspStartRoutineIn;
    const Dcm_DspRoutineInOutType * DcmDspStartRoutineOut;
} Dcm_DspStartRoutineType;

typedef struct
{
    Dcm_StopRoutineFncType DcmDspRoutineStopFnc;
     
    const Dcm_DspCommonAuthorizationType *
    DcmDspStopRoutineCommonAuthorizationRef;
    uint8 DcmDspStopRoutineRoleRef_Num;
    const uint8 * DcmDspStopRoutineRoleRef;
    const Dcm_DspRoutineInOutType * DcmDspStopRoutineIn;
    const Dcm_DspRoutineInOutType * DcmDspStopRoutineOut;
} Dcm_DspStopRoutineType;

typedef struct
{
    uint16 DcmDspRoutineId;  
    uint8 DcmDspRoutineInfoByte;
    boolean DcmDspRoutineUsePort;
    boolean DcmDspRoutineUsed;
    const Dcm_DspCommonAuthorizationType * DcmDspCommonAuthorizationRef;
    const Dcm_DspRequestRoutineResultsType * DcmDspRequestRoutineResults;
    const Dcm_DspStartRoutineType * DcmDspStartRoutine;
    const Dcm_DspStopRoutineType * DcmDspStopRoutine;
} Dcm_DspRoutineType;

 
 
typedef Std_ReturnType (*Dcm_GetInfoTypeValueFncType)(Dcm_OpStatusType OpStatus, uint8* DataValueBuffer);
typedef struct
{
    uint8 DcmDspVehInfoDataOrder;
    uint8 DcmDspVehInfoDataSize;  
    boolean DcmDspVehInfoDataUsePort;
    Dcm_GetInfoTypeValueFncType DcmGetInfoTypeValueFnc;
     
} Dcm_DspVehInfoDataType;

typedef struct
{
    uint8 DcmDspVehInfoInfoType;  
    boolean DcmDspVehInfoNODIProvResp;
    

 
    


 
    uint8 DcmDspVehInfoDataNum;
    const Dcm_DspVehInfoDataType * DcmDspVehInfoData;
} Dcm_DspVehInfoType;

typedef enum
{
    AFTER_RESET = 0,
    BEFORE_RESET = 1
} Dcm_RespToEcuResetType;

typedef struct
{
    uint32 DcmDspPeriodicTransmissionFastRate;
    uint32 DcmDspPeriodicTransmissionMediumRate;
    uint32 DcmDspPeriodicTransmissionSlowRate;
} Dcm_DspPeriodicTransmissionTypes;

typedef enum
{
    DCM_ROE_CLEARED = 0,
    DCM_ROE_STOPPED = 1,
    DCM_ROE_STARTED = 2
} Dcm_RoeEventStatesTypes;

typedef struct
{
    uint16 DcmDspRoeDidRef;  
} Dcm_DspRoeOnChangeOfDataIdentifierType;

typedef struct
{
    uint8 DcmDspRoeDTCStatusMask;
} Dcm_DspRoeOnDTCStatusChangeType;

typedef struct
{
    const Dcm_DspRoeOnChangeOfDataIdentifierType * DspRoeOnChangeOfDataIdentifier;
    const Dcm_DspRoeOnDTCStatusChangeType * pDcmDspRoeOnDTCStatusChange;
} Dcm_DspRoeEventPropertiesType;

typedef struct
{
    uint8 DcmDspRoeEventId;
    Dcm_RoeEventStatesTypes DcmDspRoeInitialEventStatus;
    const Dcm_DspRoeEventPropertiesType * DspRoeEventProperties;
} Dcm_DspRoeEventType;

typedef enum
{
    DCM_ROE_EVENT_WINDOW_INFINITE = 2,
    DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE = 3,
    DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE = 4,
} Dcm_DspRoeEventWindowTimeType;

typedef struct
{
    Dcm_DspRoeEventWindowTimeType DspRoeEventWindowTime;
} Dcm_DspRoeEventWindowTimeTypes;

typedef struct
{
    uint16 DcmDspRoeInterMessageTime;
    uint8 DcmDspRoeEventNum;
    const Dcm_DspRoeEventType * DspRoeEvent;
    uint8 DcmDspRoeEventWindowTimeNum;
    const Dcm_DspRoeEventWindowTimeTypes * pDspRoeEventWindowTime;
} Dcm_DspRoeTypes;

typedef struct
{
    uint16 DcmDspAuthenticationEcuChallengeLength;
    uint8 DcmDspAuthenticationConnectionMainConnectionRef;
    uint32 DcmDspAuthenticationCertificatePublicKeyStoreJobRef;  
    uint32 DcmDspAuthenticationClientChallengeSignJobRef;        
    uint16 DcmDspAuthenticationConnectionCertificateRef;         
    const uint16 *
    DcmDspAuthenticationECUCertificateRef;                          
    uint16 DcmDspAuthenticationPublicKeyElementRef;                 
    uint32 DcmDspAuthenticationRandomJobRef;                        
    uint16 DcmDspAuthenticationRoleElementRef;                      
    uint32 DcmDspAuthenticationVerifyProofOfOwnerShipClientJobRef;  
    const uint16 *
    DcmDspAuthenticationWhiteListDIDElementRef;  
    const uint16 *
    DcmDspAuthenticationWhiteListRIDElementRef;              
    uint16 DcmDspAuthenticationWhiteListServicesElementRef;  
} Dcm_DspAuthenticationConnectionTypes;

typedef struct
{
    const uint32 * DcmDspAuthenticationDefaultSessionTimeOut;
    const uint8 * DcmDspAuthenticationGeneralNRC;
    uint8 DcmDspAuthenticationRoleSize;
    const uint8 * DcmDspAuthenticationWhiteListDIDMaxSize;
    const uint8 * DcmDspAuthenticationWhiteListRIDMaxSize;
    const uint8 * DcmDspAuthenticationWhiteListServicesMaxSize;
    const uint8 * DcmDspAuthenticationDeauthenticatedRoleRef;
    uint8 DcmDspAuthenticationDeauthenticatedRoleRefNum;
    const uint16 * DcmDspAuthenticationPersistRef;
    uint8 DcmDspAuthenticationConnectionNum;
    const Dcm_DspAuthenticationConnectionTypes *
    DcmDspAuthenticationConnection;
} Dcm_DspAuthenticationTypes;

typedef struct
{
    const boolean * DcmDspDDDIDcheckPerSourceDID;
    Dcm_DspEndianType DcmDspDataDefaultEndianness;
    boolean DcmDspEnableObdMirror;
    uint16 DcmDspMaxDidToRead;
    
 
    uint16 DcmDspMaxPeriodicDidToRead;
    uint8 DcmDspPowerDownTime;
    Dcm_RespToEcuResetType DcmResponseToEcuReset;

    const Dcm_DspClearDTCType * pDcmDspClearDTC;
    const Dcm_DspComControlType * pDcmDspComControl;
    const Dcm_DspCommonAuthorizationType * pDcmDspCommonAuthorization;
    const Dcm_DspControlDTCSettingType * pDcmDspControlDTCSetting;

    const Dcm_DspDataType * pDcmDspData;
    const Dcm_DspDataInfoType * pDcmDspDataInfo;

 
    uint16 DcmDspDidNum;  
    const Dcm_DspDidType * pDcmDspDid;
    uint8 DcmDspDidInfoNum;  
    const Dcm_DspDidInfoType * pDcmDspDidInfo;
    uint8 DcmDspDidRangeNum;
    const Dcm_DspDidRangeType * pDcmDspDidRange;

    const Dcm_DspMemoryType * pDcmDspMemory;

 

 
    const Dcm_DspRequestFileTransferType * DcmDspRequestFileTransfer;

 
    uint8 DcmDspRoutineNum;
    const Dcm_DspRoutineType * pDcmDspRoutine;
     
    const Dcm_DspSecurityType * pDcm_DspSecurity;
     
    const Dcm_DspSessionType * pDcm_DspSession;

 
    uint16 DcmDspMaxPeriodicDidScheduler;
    const Dcm_DspPeriodicTransmissionTypes * DspPeriodicTransmission;
    const Dcm_DspAuthenticationTypes * Dcm_DspAuthentication;
} Dcm_DspCfgType;



 
typedef Std_ReturnType (*Dcm_DiagnosticService)(
    Dcm_OpStatusType OpStatus,
    uint8 ProtocolCtrlId,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Dcm_DiagnosticService_SubService)(
    Dcm_OpStatusType OpStatus,
    const Dcm_MsgContextType * pMsgContext,
    Dcm_NegativeResponseCodeType * ErrorCode);

typedef struct
{
    const Dcm_DiagnosticService_SubService * DcmDsdSubServiceFnc;
    uint8 DcmDsdSubServiceId;
    boolean DcmDsdSubServiceUsed;
    const Dcm_ModeRuleCfgType * DcmDsdSubServiceModeRuleRef;
    const uint8 * DcmDsdSubServiceSecurityLevelRef;
     
    uint8 DcmDsdSubServiceSecurityLevel_Num;  
    const uint8 * DcmDsdSubServiceSessionLevelRef;
    uint8 DcmDsdSubServiceSessionLevel_Num;  
    const uint8 * DcmDsdSubServiceRoleRef;
    uint8 DcmDsdSubServiceRoleRef_Num;
} Dcm_DsdSubServiceCfgType;

typedef enum
{
    DCM_PHYSICAL = 0,
    DCM_FUNCTIONAL = 1,
    DCM_PHYANDFUNC = 2
} Dcm_DslProtocolRxAddrType;

 
typedef struct
{
    boolean DcmDsdServiceUsed;
    Dcm_DiagnosticService DcmDsdSidTabFnc;
    uint8 DcmDsdServiceId;  
    boolean DcmDsdSubfuncAvial;
    boolean DcmDsdSuppressPosRsp;
     
    Dcm_DslProtocolRxAddrType AddressingFormat;
    const Dcm_ModeRuleCfgType * DcmDsdModeRuleRef;
    uint8 DcmDsdSecurityLevel_Num;                               
    const uint8 * pDcmDsdSecurityLevelRef;  
    uint8 DcmDsdSessionLevel_Num;                                
    const uint8 * pDcmDsdSessionLevelRef;
    uint8 DcmDsdSubService_Num;
    const Dcm_DsdSubServiceCfgType * DcmDsdSubService;
    const uint8 * DcmDsdServiceRoleRef;
    uint8 DcmDsdServiceRoleRef_Num;
} Dcm_DsdServiceCfgType;

 
typedef struct
{
    uint8 DcmDsdSidTabId;  
    const Dcm_DsdServiceCfgType *
    pDcmDsdService;                 
    uint8 DcmDsdSidTab_ServiceNum;  
} Dcm_DsdServiceTableCfgType;


 
typedef struct
{
    const Dcm_DsdServiceTableCfgType * pDcmDsdServiceTable;
     
    uint16 DcmDsdServiceTable_Num;  
} Dcm_DsdCfgType;



 
 
typedef struct
{
    uint8 Dcm_DslBufferId;     
    uint32 Dcm_DslBufferSize;  
    uint32 offset;
} Dcm_DslBufferType;

 
 
typedef struct
{
    Std_ReturnType (*StartProtocol)(Dcm_ProtocolType ProtocolID);
    Std_ReturnType (*StopProtocol)(Dcm_ProtocolType ProtocolID);
} Dcm_DslCallbackDCMRequestServiceType;

 
typedef struct
{
    boolean DcmDslDiagRespOnSecondDeclinedRequest;
    
 
    uint8 DcmDslDiagRespMaxNumRespPend; 
 
     
} Dcm_DslDiagRespType;

 
typedef struct
{
    PduIdType DcmDslPeriodicTxConfirmationPduId;
    PduIdType DcmDslTxPduRPduId;
     
} Dcm_DslPeriodicConnectionType;

 
typedef struct
{
    const Dcm_DslPeriodicConnectionType * DcmDslPeriodicConnection;
    uint8 DcmPeriodicTxPduIdNum;
} Dcm_DslPeriodicTransmissionType;

 
typedef struct
{
    PduIdType DcmROETxPduId;
    uint8 DcmROETxPduIdNum;
     
} Dcm_DslResponseOnEventType;

 
typedef struct
{
    uint8 DcmDslParentConnectionCtrlId;  
    Dcm_DslProtocolRxAddrType DcmDslProtocolRxAddrType;
    PduIdType DcmDslProtocolRxPduId;
} Dcm_DslProtocolRxType;

typedef struct
{
    uint8 DcmDslParentConnectionCtrlId;  
    PduIdType DcmDslTxConfirmationPduId;
    PduIdType DcmDslTxPduRPduId;
} Dcm_DslProtocolTxType;

 
typedef struct
{
    uint16 DcmDslProtocolRxTesterSourceAddr;
    const Dcm_DslPeriodicTransmissionType * pDcmDslPeriodicTranmissionConRef;
    NetworkHandleType DcmDslProtocolComMChannelId;  
    const Dcm_DslProtocolTxType * pDcmDslROEConnectionRef;
     
    const Dcm_DslProtocolRxType * pDcmDslProtocolRx;
     
    uint8 DcmDslProtocolRx_Num;
     
    const Dcm_DslProtocolTxType * pDcmDslProtocolTx;
     
    uint8 DcmDslProtocolTx_Num;
     
} Dcm_DslMainConnectionType;
 
typedef struct
{
    uint8 DcmDslParentProtocolRowCtrlId;  
    const Dcm_DslMainConnectionType * pDcmDslMainConnection;
     
    const Dcm_DslPeriodicTransmissionType * pDcmDslPeriodicTransmission;
     
    const Dcm_DslResponseOnEventType * pDcmDslResponseOnEvent;
     
} Dcm_DslConnectionType;

typedef enum
{
    DCM_PROTOCOL_TRAN_TYPE1 = 0x00,
     
    DCM_PROTOCOL_TRAN_TYPE2 = 0x01,  
    DCM_PROTOCAL_TRAN_NOT_VALID = 0x02
} Dcm_DslProtocolTransType;

 
typedef struct
{
    Dcm_ProtocolType DcmDslProtocolID;  
    uint8 DcmDslProtocolPriority;
     
    boolean DcmDslProtocolRowUsed;
    
 
    Dcm_DslProtocolTransType DcmDslProtocolTransType;
     
    boolean DcmSendRespPendOnTransToBoot;
    

 
    uint16 DcmTimStrP2ServerAdjust;
    uint16 DcmTimStrP2StarServerAdjust;
    const Dcm_DslBufferType * DcmDslProtocolRxBufferRef;
    const Dcm_DslBufferType * DcmDslProtocolTxBufferRef;
    uint8 DcmDslServiceTableID;
     
    const Dcm_DslConnectionType * pDcmDslConnection;
    boolean DcmDslProtocolRequestQueued;
} Dcm_DslProtocolRowType;

typedef struct
{
    const Dcm_DslProtocolRowType * pDcmDslProtocolRow;
    uint8 DcmDslProtocolRow_Num;  
} Dcm_DslProtocolType;

 
 
typedef struct
{
    uint8 DcmChannelCfg_Num;                                        
    const Dcm_DslBufferType * pDcmChannelCfg;  
    uint8 DCMCallBackDcmRequest_PortNum;                            
    const Dcm_DslCallbackDCMRequestServiceType *
    pDcmDslCallback_DCMRequestService;
    const Dcm_DslDiagRespType * pDcmDslDiagRespCfg;
     
    const Dcm_DslProtocolType * pDcmDslProtocol;
     
} Dcm_DslCfgType;

typedef struct
{
    uint32 DcmPagedBufferTimeout;
     
} Dcm_PageBufferCfgType;

typedef struct
{
    const Dcm_DslCfgType * pDcmDslCfg;
    const Dcm_DsdCfgType * pDcmDsdCfg;
    const Dcm_DspCfgType * pDcmDspCfg;
    const Dcm_DslProtocolRxType * DslProtocolConnectionRxCfg;
    const Dcm_DslConnectionType * DslProtocolConnectionCfg;
    const Dcm_DslMainConnectionType * DslProtocolMainConnectionCfg;
    const Dcm_DslProtocolTxType * DslProtocolConnectionTxCfg;
    const Dcm_PageBufferCfgType * pDcmPageBufferCfg;
    const Dcm_ProcessingConditionsCfgType * pDcmProcessingConditionsCfg;
} Dcm_CfgType;

typedef struct
{
     
    uint32 DcmTaskTime;
 
    const Dcm_DspDidType * DcmVinRef;

 
} Dcm_GeneralCfgType;

typedef enum
{
    DCM_DSP_ROUTINE_INIT = 0,
    DCM_DSP_ROUTINE_ON = 1,
    DCM_DSP_ROUTINE_OFF = 2
} Dcm_RoutineControlStateType;

typedef enum
{
    DCM_ON = 1,
    DCM_OFF = 0
} Dcm_MkStateType;

typedef struct
{
    Dcm_SesCtrlType Dcm_ActiveSes;        
    Dcm_SecLevelType Dcm_ActiveSec;       
    Dcm_ProtocolType Dcm_ActiveProtocol;  
    uint8 Dcm_ActiveProtocolCfgCtrlId;
    Dcm_MkStateType Dcm_MkState;  
    NetworkHandleType Dcm_ActiveNetwork;
} Dcm_MkCtrlType;

typedef struct
{
    uint16 TesterSourceAddr;      
    uint8 ProtocolId;             
    uint8 Sid;                    
    uint8 SubFncId;               
    boolean ReprogramingRequest;  
    boolean ApplUpdated;          
    boolean ResponseRequired;
     
} Dcm_ProgConditionsType;

typedef struct
{
     
    uint32 address;

     
    uint8 blockId;

     
    uint8 Status;

     
    uint8 MemoryIdInfoIndex;

     
    uint32 BlockLength;

     
    uint32 MemorySize;

    boolean FirstFlag;

    uint8 reqBlockId;

    uint32 DcmLastloadSize;
} Dcm_DspProgramType;

typedef struct
{
    uint8 Subfunction;
    uint32 Data;
    uint16 Size;
} Dcm_DDDidElementsDataTypes;

typedef struct
{
    uint16 Did;
    uint8 SubFunction;
    uint8 Counter;
    uint16 Length;
    uint8 ProtocolCtrlId;
    boolean DDDid;
    uint8 Data[8];
} SchedulerQueueTypes;

typedef struct
{
    PduIdType PduId;
    boolean Transmit;
} SchedulerQueueTransmitTypes;



 
typedef struct
{
    boolean PagedBufferStarted;
    boolean PagedBufferCanceled;
    boolean BufferOverFlowed;
    boolean IsRecord;
    boolean IsFilled;
    boolean IsNextFilled;
    boolean IsBufferOccupied;
    uint8 PagedBuffer[(2048u)];
    uint32 FilledSize;
    uint32 NextFilledSize;
    uint32 TotalSize;
    uint16 IloopOne;
    uint32 ResOffset;
    uint32 ReqOffset;
    boolean TimerStart;
    boolean TimeOut;
    uint32 CurTimer;
    uint32 ExpiredTimer;
} Dcm_PageBufferDataType;

typedef struct
{
    uint8 DcmVIN[17];
    boolean Flag;
} Dcm_VINType;



 
typedef struct
{
    PduLengthType Length;
    uint8 Buffer[(64u)];
} Dcm_OBDMessageType;

typedef enum
{
    DCM_COMM_NO_COMMUNICATION = 0,      
    DCM_COMM_SILENT_COMMUNICATION = 1,  
    DCM_COMM_FULL_COMMUNICATION = 2     
} Dcm_CommStateType;

typedef enum
{
    DCM_COMM_ACTIVE = 0,
    DCM_COMM_NOT_ACTIVE = 1,
} Dcm_ActiveDiagnosticType;

typedef struct
{
    Dcm_CommStateType Dcm_CommState;
    Dcm_ActiveDiagnosticType Dcm_ActiveDiagnostic;
    NetworkHandleType DcmDslProtocolComMChannelId;
} Dcm_CommCtrlType;

 


 
typedef enum
{
    DCM_SECTIMER_ON = 1u,  
    DCM_SECTIMER_OFF = 0u  
} Dcm_SecTimerStateType;

typedef struct
{
    uint32 Dcm_SecCurTimer[(1u)];      
    uint32 Dcm_SecExpiredTimer[(1u)];  
    Dcm_SecTimerStateType Dcm_SecTimerState[(1u)];
} Dcm_SecTimerCtrlType;

typedef enum
{
    DCM_SERVICE_IDLE = 0u,  
    DCM_SERVICE_SEED = 1u,  
    DCM_SERVICE_KEY = 2u    
} Dcm_SecServiceStateType;

typedef struct
{
    uint8 Dcm_SubfunctionForSeed;  
    uint8 Dcm_FalseAcessCount[(1u)];
     
    Dcm_SecLevelType Dcm_ActiveSec;               
    Dcm_SecLevelType Dcm_NewSec;                  
    Dcm_SecServiceStateType Dcm_SecServiceState;  
    Dcm_SecTimerCtrlType Dcm_RunDlyCtrl;
     
    Dcm_OpStatusType Dcm_OpStatus;
    uint8 Dcm_SecFlag;
    uint8 Dcm_SecCfgIndex;
    uint16 Dcm_MaxReadoutTime;
} Dcm_SecCtrlType;


 
typedef enum
{
    DCM_S3TIMER_ON = 0,
    DCM_S3TIMER_OFF = 1
} Dcm_S3StateType;

typedef struct
{
    uint32 Dcm_S3CurTimer;
    uint32 Dcm_S3ExpiredTimer;    
    Dcm_S3StateType Dcm_S3State;  
    uint8 connectionId;
} Dcm_S3CtrlType;

typedef enum
{
    DCM_SESSION_DEFAULT = 0,   
    DCM_SESSION_UNDEFAULT = 1  
} Dcm_SesStateType;

typedef struct
{
    Dcm_SesCtrlType Dcm_ActiveSes;  
    Dcm_SesCtrlType Dcm_NewSes;
     
    Dcm_S3CtrlType Dcm_S3Ctrl;          
    Dcm_SesStateType Dcm_SessionState;  
} Dcm_SesCtrlCBType;



 
typedef enum
{
    DCM_PROTOCOL_VALID = 1,   
    DCM_PROTOCOL_INVALID = 0  
} Dcm_ProtocolStateType;

typedef struct
{
    Dcm_ProtocolType ProtocolId;              
    uint8 ProtocolPri;                        
    uint8 MsgCtrlIndex;                       
    uint32 P2ServerMax;                       
    uint32 P2ServerMin;                       
    uint32 P2StarServerMax;                   
    uint32 P2StarServerMin;                   
    uint32 S3Server;                          
    Dcm_ProtocolStateType Dcm_ProtocolState;  
} Dcm_ProtocolCtrlType;

typedef struct
{
    boolean UDSCall;
    uint8 SID;
    uint8 pid;
} OBD_ReadPidValuesTypes;

 
typedef enum Dcm_LinkControlStatus_t
{
    LINK_CONTROL_IDLE = 0,
    LINK_CONTROL_FBR_VERIFICATION = 1,
    LINK_CONTROL_FBR_TRANSITION = 2,
    LINK_CONTROL_SBR_VERIFICATION = 3,
    LINK_CONTROL_SBR_TRANSITION = 4
} Dcm_LinkControlStatusType;

 
typedef struct Dcm_LinkControlCtrlType_t
{
    Dcm_LinkControlStatusType linkCtrlStatus;
    uint8 fixedBaudrate;
    uint32 specialBaudrate;
} Dcm_LinkControlCtrlType;



 



 



 
extern const Dcm_CfgType Dcm_Cfg;


 











 
 
extern  void Dcm_Init(const Dcm_CfgType * ConfigPtr);

 












 
 
extern  void Dcm_GetVersionInfo(Std_VersionInfoType * VersionInfo);

 












 
 
extern  Std_ReturnType Dcm_GetVin(uint8 * Data);

 














 
 
extern  Std_ReturnType
    Dcm_DemTriggerOnDTCStatus(uint32 DTC, Dem_UdsStatusByteType DTCStatusOld, Dem_UdsStatusByteType DTCStatusNew);
 












 
 
extern  Std_ReturnType Dcm_GetSecurityLevel(Dcm_SecLevelType * SecLevel);

 











 
 
extern  Std_ReturnType Dcm_GetSesCtrlType(Dcm_SesCtrlType * SesType);
 











 
 
extern  Std_ReturnType Dcm_GetActiveProtocol(Dcm_ProtocolType * ActiveProtocol);

 












 
 
extern  Std_ReturnType Dcm_ResetToDefaultSession(void);
 












 
 
extern  Std_ReturnType Dcm_TriggerOnEvent(uint8 RoeEventId);
 













 
 
extern  Std_ReturnType Dcm_SetActiveDiagnostic(boolean active);













 












 



 



 


 


















































































 


 




















 
 



 



 




 

 

 

 

 

 



 
 

 

 

 

 


 

 

 

 

 
















 












 



 



 



 












 












 



 



 


 
 




















 
 




 



 
 
 
 



 

 
typedef uint8 EcuM_ModeType;



 
typedef uint8 EcuM_UserType;


 
typedef uint8 EcuM_ShutdownCauseType;

 
typedef uint16 EcuM_ShutdownModeType;

 
typedef uint32 EcuM_TimeType;

typedef uint8 EcuM_ShutdownTargetType;


 
typedef uint8 EcuM_BootTargetType;


 




















 
 



 




 



 



 
 
typedef struct
{
    const void * bswMPbCfg;
    const void * canPbCfg;
    const void * canIfPbCfg;
    const void * canSMPbCfg;
    const void * pduRPbCfg;
    const void * comPbCfg;
    const void * comMPbCfg;
    const void * nmPbCfg;
    const void * canNmPbCfg;
    const void * canTpPbCfg;
    const void * dcmPbCfg;
    const void * demPbCfg;
} EcuM_GenBSWPbCfgType;



 



 



 


 
 
 
 

 
 
 
 
 
 
 


 


 


 

typedef uint8 EcuM_StateType;

 
typedef uint8 EcuM_RunStatusType;






 
typedef uint32 EcuM_WakeupSourceType;

 
typedef uint8 EcuM_WakeupStatusType;


 
typedef uint8 EcuM_ResetType;


 
typedef uint8 Rte_ModeType_EcuM_Mode;



 



 



 



 



 



 
















 
 void EcuM_SetWakeupEvent(EcuM_WakeupSourceType sources);













 
 void EcuM_ValidateWakeupEvent(EcuM_WakeupSourceType sources);












 
 void EcuM_CheckWakeup(EcuM_WakeupSourceType wakeupSource);





























 
 




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 


 




























 


 




























 


 




























 


 




























 


 

 


 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 


 



 



 



 
   



 



 



 



 



 



 



 



 
 



 
   
 



 



 



 
   



 
   
 



 
 



 



 



 



 



 


 




























 

 


 
 



 



 



 



 


 

























 
 

 

























 


 

 
 

  
  
typedef enum
{
     
    CFG_ALARM_ID_CORE0_BEGIN = 0,
    OsAlarm_1ms = CFG_ALARM_ID_CORE0_BEGIN,
    OsAlarm_5ms,
    OsAlarm_10ms,
    OsAlarm_50ms,
    OsAlarm_100ms,
    CFG_ALARM_ID_CORE0_END,

    INVALID_ALARM = 0xFFFFU,
} Os_AlarmType;
 

 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 



























 


 

 


 

 
typedef enum
{
    OS_BARRIERID_COUNT,
} Os_BarrierIdType;


 

 

 

 


 



























 


 

 

 

 

 

 

 

 
 
   
 

  
 
typedef enum
{
     
    CFG_COUNTER_ID_CORE0_BEGIN = 0,
    SystemTimer_Core_0 = CFG_COUNTER_ID_CORE0_BEGIN,
    CFG_COUNTER_ID_CORE0_END,

    INVALID_COUNTER = 0xFFFFU,
} Os_CounterType;
 


























 


 

 

 

 

 

 

 

 


























 


 

 
 

 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 
 
 


 

  
typedef enum
{
     
    CFG_ISR2_ID_CORE0_BEGIN = 0,
    CFG_SYS_TIMER_CORE0_ID = CFG_ISR2_ID_CORE0_BEGIN,  
    CFG_ISR_RCAN1ERR_IRQ_ID,
    CFG_ISR_RCAN1TRX_IRQ_ID,
    CFG_ISR_RCANGRECC0_IRQ_ID,
    CFG_ISR_ADCA0I1_IRQ_ID,
    CFG_ISR_ADCA1I1_IRQ_ID,
    CFG_ISR_TAUJ0I0_IRQ_ID,
    CFG_ISR_TAUD0I9_IRQ_ID,
    CFG_ISR_TAUB0I12_IRQ_ID,
    CFG_ISR_TAUB0I8_IRQ_ID,
    CFG_ISR_TAUB0I9_IRQ_ID,
    CFG_ISR_P1_IRQ_ID,
    CFG_ISR_P2_IRQ_ID,
    CFG_ISR_P5_IRQ_ID,
    CFG_ISR_P6_IRQ_ID,
    CFG_ISR_P7_IRQ_ID,
    CFG_ISR_P9_IRQ_ID,
    CFG_ISR_P14_IRQ_ID,
    CFG_ISR_RLIN34TX0_IRQ_ID,
    CFG_ISR_RLIN34RX1_IRQ_ID,
    CFG_ISR_RLIN34ERR2_IRQ_ID,
    CFG_ISR_RLIN35TX0_IRQ_ID,
    CFG_ISR_RLIN35RX1_IRQ_ID,
    CFG_ISR_RLIN35ERR2_IRQ_ID,
    CFG_ISR_RIIC0TI_IRQ_ID,
    CFG_ISR_RIIC0EE_IRQ_ID,
    CFG_ISR_RIIC0RI_IRQ_ID,
    CFG_ISR_RIIC0TEI_IRQ_ID,
    CFG_ISR2_ID_CORE0_END,

    INVALID_ISR = 0xFFFFU,
} Os_IsrType;
 


























 


 

 

 

 

 

 

 

 



























 


 

 

 

 

 

 

 

 


























 


 

 
   
 
 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 
 

  
typedef enum
{
    CFG_STD_RESOURCE_ID_CORE0_BEGIN = 0,
    RES_SCHEDULER_CORE0 = CFG_STD_RESOURCE_ID_CORE0_BEGIN,
    CFG_STD_RESOURCE_ID_CORE0_END,
    INVALID_RESOURCE = 0xFFFFU,
}Os_ResourceType;
 


























 


 

 

 

 

 

 

 

 
 
        



























 


 

 

 

 

 

 

 

 



























 


 

 
 
 

 
 

 
  
 
typedef enum
{
     
    CFG_BASIC_TASK_ID_CORE0_BEGIN = 0,
    OsTask_Init = CFG_BASIC_TASK_ID_CORE0_BEGIN,
    OsTask_1ms,
    OsTask_5ms,
    OsTask_10ms,
    OsTask_50ms,
    OsTask_100ms,
    CFG_BASIC_TASK_ID_CORE0_END,
     
    OS_TASK_IDLE_CORE0 = CFG_BASIC_TASK_ID_CORE0_END,

    INVALID_TASK = 0xFFFFU,
} Os_TaskType;
 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 


























 


 

 

 

 

 

 

 

 


























 


 

 



 

 

 

 

 

 

 

 

























 

 

 

























 
 

 
 

 

 

 

 

 

 


























 


 

 
 

 

 

 

 

 

 


























 
 

 

 
 
 

 

 
 

 
 



 

 


 


 

 

 

 

 



 

 


 

 

 


 

 

 

 

 

 

 

 

 
































 
 

 

 


 

 

 

 

 
 
typedef uint32  Os_ArchMsrType;
typedef uint32* Os_ArchMsrRefType;    
typedef uint32  Os_TaskCBExtType;
typedef void (*Os_isrhnd)(void);    
 

 
 
   

 

 
































 


 








 


 










 


 


typedef	int	ptrdiff_t;
typedef	unsigned long	size_t;











 


 


typedef	char	*va_list;



void __builtin_va_start(va_list);




typedef	struct {
	int		mode;	 
	unsigned	handle;
	int		unget_c;
	} FILE;
typedef int	fpos_t;








extern	FILE*	_REL_stdin();
extern	FILE*	_REL_stdout();
extern	FILE*	_REL_stderr();

extern	int fprintf(FILE *, const char *, ...);
extern	int fscanf(FILE *, const char *, ...);
extern	int printf(const char *, ...);
extern	int scanf(const char *, ...);
extern	int sprintf(char *, const char *, ...);
extern	int sscanf(const char *, const char *, ...);
extern	int vfprintf(FILE *, const char *, va_list);
extern	int vprintf(const char *, va_list);
extern	int vsprintf(char *, const char *, va_list);

extern	int fgetc(FILE *);
extern	char *fgets(char *, int, FILE *);
extern	int fputc(int, FILE *);
extern	int fputs(const char *, FILE *);
extern	int getc(FILE *);
extern	int getchar(void);
extern	char *gets(char *);
extern	int putc(int, FILE *);
extern	int putchar(int);
extern	int puts(const char *);
extern	int ungetc(int, FILE *);

extern	size_t fread(void *, size_t, size_t, FILE *);
extern	size_t fwrite(const void *, size_t, size_t,
		      FILE *);

extern	void rewind(FILE *);

extern	void perror(const char *);




 


 


 
   
typedef enum
{
     
    OSServiceId_GetApplicationID = 0x00U,
    OSServiceId_GetISRID = 0x01U,
    OSServiceId_CallTrustedFunction = 0x02U,
    OSServiceId_CheckISRMemoryAccess = 0x03U,
    OSServiceId_CheckTaskMemoryAccess = 0x04U,
    OSServiceId_CheckObjectAccess = 0x05U,
    OSServiceId_CheckObjectOwnership = 0x06U,
    OSServiceId_StartScheduleTableRel = 0x07U,
    OSServiceId_StartScheduleTableAbs = 0x08U,
    OSServiceId_StopScheduleTable = 0x09U,
    OSServiceId_NextScheduleTable = 0x0aU,
    OSServiceId_StartScheduleTableSynchron = 0x0bU,
    OSServiceId_SyncScheduleTable = 0x0cU,
    OSServiceId_SetScheduleTableAsync = 0x0dU,
    OSServiceId_GetScheduleTableStatus = 0x0eU,
    OSServiceId_IncrementCounter = 0x0fU,
    OSServiceId_GetCounterValue = 0x10U,
    OSServiceId_GetElapsedValue = 0x11U,
    OSServiceId_TerminateApplication = 0x12U,
    OSServiceId_AllowAccess = 0x13U,
    OSServiceId_GetApplicationState = 0x14U,
    OSServiceId_GetNumberOfActivatedCores = 0x15U,
    OSServiceId_GetCoreID = 0x16U,
    OSServiceId_StartCore = 0x17U,
    OSServiceId_StartNonAutosarCore = 0x18U,
    OSServiceId_GetSpinlock = 0x19U,
    OSServiceId_ReleaseSpinlock = 0x1aU,
    OSServiceId_TryToGetSpinlock = 0x1bU,
    OSServiceId_ShutdownAllCores = 0x1cU,
    OSServiceId_ControlIdle = 0x1dU,
    OSServiceId_IocSend = 0x1eU,
    OSServiceId_IocWrite = 0x1fU,
    OSServiceId_IocSendGroup = 0x20U,
    OSServiceId_IocWriteGroup = 0x21U,
    OSServiceId_IocReceive = 0x22U,
    OSServiceId_IocRead = 0x23U,
    OSServiceId_IocReceiveGroup = 0x24U,
    OSServiceId_IocReadGroup = 0x25U,
    OSServiceId_IocEmptyQueue = 0x26U,
    OSServiceId_GetCurrentApplicationID = 0x27U,
    OSServiceId_ReadPeripheral8 = 0x28U,
    OSServiceId_ReadPeripheral16 = 0x29U,
    OSServiceId_ReadPeripheral32 = 0x2aU,
    OSServiceId_WritePeripheral8 = 0x2bU,
    OSServiceId_WritePeripheral16 = 0x2cU,
    OSServiceId_WritePeripheral32 = 0x2dU,
    OSServiceId_ModifyPeripheral8 = 0x2eU,
    OSServiceId_ModifyPeripheral32 = 0x2fU,
    OSServiceId_DisableInterruptSource = 0x30U,
    OSServiceId_EnableInterruptSource = 0x31U,
    OSServiceId_ClearPendingInterrupt = 0x32U,
    OSServiceId_ActivateTaskAsyn = 0x33U,
    OSServiceId_SetEventAsyn = 0x34U,
    OSServiceId_ModifyPeripheral16 = 0x35U,

     
    OSServiceId_WaitAllEvents = 0xD7U,
    OSServiceId_IocCallBackNotify = 0xDEU,

     
    OSServiceId_ActivateTask = 0xDFU,
    OSServiceId_TerminateTask = 0xE0U,
    OSServiceId_ChainTask = 0xE1U,
    OSServiceId_Schedule = 0xE2U,
    OSServiceId_GetTaskID = 0xE3U,
    OSServiceId_GetTaskState = 0xE4U,
    OSServiceId_EnableAllInterrupts = 0xE5U,
    OSServiceId_DisableAllInterrupts = 0xE6U,
    OSServiceId_ResumeAllInterrupts = 0xE7U,
    OSServiceId_SuspendAllInterrupts = 0xE8U,
    OSServiceId_ResumeOSInterrupts = 0xE9U,
    OSServiceId_SuspendOSInterrupts = 0xEAU,
    OSServiceId_DeclareResource = 0xEBU,
    OSServiceId_GetResource = 0xECU,
    OSServiceId_ReleaseResource = 0xEDU,
    OSServiceId_DeclareEvent = 0xEEU,
    OSServiceId_SetEvent = 0xEFU,
    OSServiceId_ClearEvent = 0xF0U,
    OSServiceId_GetEvent = 0xF1U,
    OSServiceId_WaitEvent = 0xF2U,
    OSServiceId_GetAlarmBase = 0xF3U,
    OSServiceId_GetAlarm = 0xF4U,
    OSServiceId_SetRelAlarm = 0xF5U,
    OSServiceId_SetAbsAlarm = 0xF6U,
    OSServiceId_CancelAlarm = 0xF7U,
    OSServiceId_GetActiveApplicationMode = 0xF8U,
    OSServiceId_StartOS = 0xF9U,
    OSServiceId_ShutdownOS = 0xFAU,
    OSServiceId_ErrorHook = 0xFBU,
    OSServiceId_PreTaskHook = 0xFCU,
    OSServiceId_PostTaskHook = 0xFDU,
    OSServiceId_StartupHook = 0xFEU,
    OSServiceId_ShutdownHook = 0xFFU
} Os_ServiceIdType;

typedef enum
{
     
    OSApiId_GetApplicationID = 0x02U,
    OSApiId_GetISRID = 0x04U,
    OSApiId_CallTrustedFunction = 0x06U,
    OSApiId_CheckISRMemoryAccess = 0x08U,
    OSApiId_CheckTaskMemoryAccess = 0x0aU,
    OSApiId_CheckObjectAccess = 0x0cU,
    OSApiId_CheckObjectOwnership = 0x0EU,
    OSApiId_StartScheduleTableRel = 0x10U,
    OSApiId_StartScheduleTableAbs = 0x12U,
    OSApiId_StopScheduleTable = 0x14U,
    OSApiId_NextScheduleTable = 0x16U,
    OSApiId_StartScheduleTableSynchron = 0x18U,
    OSApiId_SyncScheduleTable = 0x1AU,
    OSApiId_SetScheduleTableAsync = 0x1CU,
    OSApiId_GetScheduleTableStatus = 0x1EU,
    OSApiId_IncrementCounter = 0x20U,
    OSApiId_GetCounterValue = 0x22U,
    OSApiId_GetElapsedValue = 0x24U,
    OSApiId_TerminateApplication = 0x26U,
    OSApiId_AllowAccess = 0x28U,
    OSApiId_GetApplicationState = 0x2AU,
    OSApiId_GetNumberOfActivatedCores = 0x2CU,
    OSApiId_GetCoreID = 0x2EU,
    OSApiId_StartCore = 0x30U,
    OSApiId_StartNonAutosarCore = 0x32U,
    OSApiId_GetSpinlock = 0x34U,
    OSApiId_ReleaseSpinlock = 0x36U,
    OSApiId_TryToGetSpinlock = 0x38U,
    OSApiId_ShutdownAllCores = 0x3AU,
    OSApiId_ControlIdle = 0x3CU,
    OSApiId_IocSend = 0x3EU,
    OSApiId_IocWrite = 0x40U,
    OSApiId_IocSendGroup = 0x42U,
    OSApiId_IocWriteGroup = 0x44U,
    OSApiId_IocReceive = 0x46U,
    OSApiId_IocRead = 0x48U,
    OSApiId_IocReceiveGroup = 0x4AU,
    OSApiId_IocReadGroup = 0x4CU,
    OSApiId_IocEmptyQueue = 0x4EU,
    OSApiId_GetCurrentApplicationID = 0x50U,
    OSApiId_ReadPeripheral8 = 0x52U,
    OSApiId_ReadPeripheral16 = 0x54U,
    OSApiId_ReadPeripheral32 = 0x56U,
    OSApiId_WritePeripheral8 = 0x58U,
    OSApiId_WritePeripheral16 = 0x5AU,
    OSApiId_WritePeripheral32 = 0x5CU,
    OSApiId_ModifyPeripheral8 = 0x5EU,
    OSApiId_ModifyPeripheral32 = 0x60U,
    OSApiId_DisableInterruptSource = 0x62U,
    OSApiId_EnableInterruptSource = 0x64U,
    OSApiId_ClearPendingInterrupt = 0x66U,
    OSApiId_ActivateTaskAsyn = 0x68U,
    OSApiId_SetEventAsyn = 0x6AU,
    OSApiId_ModifyPeripheral16 = 0x6CU,
     
    OSApiId_WaitAllEvents = 0x6EU,
    OSApiId_IocCallBackNotify = 0x70U,
     
    OSApiId_ActivateTask = 0x72U,
    OSApiId_TerminateTask = 0x74U,
    OSApiId_ChainTask = 0x76U,
    OSApiId_Schedule = 0x78U,
    OSApiId_GetTaskID = 0x7AU,
    OSApiId_GetTaskState = 0x7CU,
    OSApiId_EnableAllInterrupts = 0x7EU,
    OSApiId_DisableAllInterrupts = 0x80U,
    OSApiId_ResumeAllInterrupts = 0x82U,
    OSApiId_SuspendAllInterrupts = 0x84U,
    OSApiId_ResumeOSInterrupts = 0x86U,
    OSApiId_SuspendOSInterrupts = 0x88U,
    OSApiId_GetResource = 0x8AU,
    OSApiId_ReleaseResource = 0x8CU,
    OSApiId_SetEvent = 0x8EU,
    OSApiId_ClearEvent = 0x90U,
    OSApiId_GetEvent = 0x92U,
    OSApiId_WaitEvent = 0x94U,
    OSApiId_GetAlarmBase = 0x96U,
    OSApiId_GetAlarm = 0x98U,
    OSApiId_SetRelAlarm = 0x9AU,
    OSApiId_SetAbsAlarm = 0x9CU,
    OSApiId_CancelAlarm = 0x9EU,
    OSApiId_GetActiveApplicationMode = 0xA0U,
    OSApiId_StartOS = 0xA2U,
    OSApiId_ShutdownOS = 0xA4U,
    OSApiId_BarrierSynchronize = 0xA6U
} Os_TraceApiIdType;
 



 
typedef enum
{
    OS_LEVEL_MAIN = 0,
    OS_LEVEL_PROTECTIONHOOK = 1,
    OS_LEVEL_ALARMCALLBACK = 2,
    OS_LEVEL_SHUTDOWNHOOK = 3,
    OS_LEVEL_STARTUPHOOK = 4,
    OS_LEVEL_POSTTASKHOOK = 5,
    OS_LEVEL_PRETASKHOOK = 6,
    OS_LEVEL_ERRORHOOK = 7,
    OS_LEVEL_ISR2 = 8,
    OS_LEVEL_ISR1 = 9,
    OS_LEVEL_TASK = 10,
    OS_LEVEL_ERRORHOOK_APP = 11,
    OS_LEVEL_STANDARD_RESOURCE = 12,
    OS_LEVEL_INTERNAL_RESOURCE = 13
} Os_CallLevelType;



 
typedef uint16 Os_AppModeType;
typedef Os_AppModeType AppModeType;



 
typedef uint8 Os_LockerType;



 
typedef uint32 Os_StackDataType;



 
typedef uint32 *Os_StackPtrType;



 
typedef struct
{
    Os_StackPtrType StackTop;
    Os_StackPtrType StackBottom;
} Os_StackType;



 
typedef enum
{
    OS_OBJECT_TASK = 0,
    OS_OBJECT_ISR = 1,
    OS_OBJECT_ALARM = 2,
    OS_OBJECT_COUNTER = 3,
    OS_OBJECT_SCHEDULETABLE = 4,
    OS_OBJECT_APP = 5,

    OS_OBJECT_RESOURCE = 6,
    OS_OBJECT_SPINLOCK = 7,
    OS_OBJECT_MAX = 8,  
       
    OS_OBJECT_INVALID = 0xFFU  
     
} Os_ObjectTypeType;



 
typedef Os_ObjectTypeType ObjectTypeType;



 
typedef uint16 Os_CoreIdType;



 
typedef Os_CoreIdType *Os_CoreIdRefType;




 
typedef Os_CoreIdType CoreIdType;
typedef Os_CoreIdType *CoreIdRefType;



 
typedef uint16 Os_ApplicationType;
typedef Os_ApplicationType ApplicationType;



 
typedef enum
{
    OS_SHUTDOWN_OS = 0,
    OS_SHUTDOWN_ALL_OS = 1
} Os_ShutdownAction;

 


 
typedef enum
{
    OS_TASK_STATE_WAITING = 0,
    OS_TASK_STATE_READY = 1,
    OS_TASK_STATE_SUSPENDED = 2,
    OS_TASK_STATE_RUNNING = 3,
     
    OS_TASK_STATE_START = 4
} Os_TaskStateType;



 
typedef Os_TaskStateType TaskStateType;
typedef Os_TaskStateType *TaskStateRefType;
typedef Os_TaskStateType *Os_TaskStateRefType;



 
typedef Os_TaskType *Os_TaskRefType;
typedef Os_TaskType TaskType;
typedef Os_TaskType *TaskRefType;



 
typedef uint8 Os_TaskScheduleType;



 
typedef uint16 Os_PriorityType;



 
typedef void (*Os_TaskEntry)(void);



 
typedef struct
{
    const ApplicationType* AccAppRef;  
    ApplicationType        HostApp;           
    ApplicationType        AccAppRefNodeCnt;  
} Os_ObjectAppCfgType;

 


 
typedef uint32       Os_TickType;
typedef Os_TickType* Os_TickRefType;
typedef Os_TickType  TickType;
typedef TickType *   TickRefType;



 
typedef enum
{
    OS_ALARM_AUTOSTART_ABSOLUTE = 0,
    OS_ALARM_AUTOSTART_RELATIVE = 1
} Os_AlarmAutostartType;



 
typedef Os_AlarmType* Os_AlarmRefType;
typedef Os_AlarmType  AlarmType;
typedef Os_AlarmType* AlarmRefType;



 
typedef void (*Os_AlarmCallbackType)(void);



 
typedef struct
{
    Os_TickType MaxAllowedValue;
    Os_TickType TicksPerBase;
    Os_TickType MinCycle;
} Os_AlarmBaseType;



 
typedef Os_AlarmBaseType  AlarmBaseType;
typedef Os_AlarmBaseType* Os_AlarmBaseRefType;
typedef Os_AlarmBaseType* AlarmBaseRefType;



 
typedef struct
{
    Os_TickType AlarmStartTime;
    Os_TickType AlarmCycleTime;
    Os_AppModeType AlarmAppMode;
    Os_AlarmAutostartType AlarmAutostartType;
} Os_AlarmAutostartCfgType;



 
typedef struct
{
    const Os_AlarmAutostartCfgType *AlarmAutostartRef;
    Os_AlarmCallbackType AlarmCallback;

    Os_CoreIdType HostCore;  
    Os_CounterType AlarmCounter;
} Os_AlarmCfgType;



 
typedef struct
{
    Os_TickType  AlarmStart;
    Os_TickType  AlarmCycle;
    Os_AlarmType AlarmNext;
} Os_ACBType;



 
typedef struct
{
    Os_AlarmType Start;
    Os_AlarmType End;
} Os_AlarmIndexType;



 
typedef enum
{
    OS_ACCESS = 0,
    OS_NO_ACCESS = 1
} Os_ObjectAccessType;



 
typedef Os_ObjectAccessType ObjectAccessType;



 
typedef enum
{
    OS_RESTART = 0,
    OS_NO_RESTART = 1
} Os_RestartType;



 
typedef Os_RestartType RestartType;



 
typedef enum
{
    OS_APPLICATION_ACCESSIBLE = 0,
    OS_APPLICATION_RESTARTING = 1,
    OS_APPLICATION_TERMINATED = 2
} Os_ApplicationStateType;



 
typedef Os_ApplicationStateType *Os_ApplicationStateRefType;
typedef Os_ApplicationStateType ApplicationStateType;



 
typedef Os_ApplicationStateType *ApplicationStateRefType;



 
typedef uint16 Os_AppObjectIdType;



 
typedef uint16             Os_AppObjectType;
typedef Os_AppObjectType * Os_AppObjectRefType;



 
typedef void (*Os_ApplErrorHookType)(StatusType error);



 
typedef void (*Os_ApplShutdownHookType)(StatusType fatalerror);



 
typedef void (*Os_ApplStartupHookType)(void);



 
typedef struct
{
    Os_ApplicationStateType AppState;
} Os_AppCBType;





 
typedef struct
{
    Os_ApplErrorHookType    AppErrorHook;
    Os_ApplShutdownHookType AppShutdownHook;
    Os_ApplStartupHookType  AppStartupHook;
} Os_AppHookCfgType;



 
typedef uint16 Os_AppObjectId;
typedef Os_AppObjectId AppObjectId;




 
typedef enum
{
    OS_IDLE_NO_HALT = 0,
    OS_RUN = 1,
    OS_CORE_STATUS_INVALID = 2
} Os_IdleModeType;



 
typedef Os_IdleModeType IdleModeType;



 
typedef enum
{
    OS_CPUMODE_USER0 = 0,
    OS_CPUMODE_USER1 = 1,
    OS_CPUMODE_SUPERVISOR = 2
} Os_CpuModeType;



 
typedef struct
{
    Os_CoreIdType   CoreStateActive;
    Os_CoreIdType   CoreStateSynPoint[4U][(1U)];
    Os_AppModeType  AppMode[(1U)];
    Os_IdleModeType CoreStatus[(1U)];    
} Os_CoreCBType;



 
typedef enum
{
    OS_COUNTER_HARDWARE = 0,
    OS_COUNTER_SOFTWARE = 1
} Os_CounterPropertyType;




 
typedef Os_CounterType CounterType;



 
typedef struct
{
     
    Os_TickType CounterCurVal;
    Os_TickType CounterLastVal;
    Os_AlarmType CounterAlmQue;
} Os_CCBType;



 
typedef struct
{
    Os_TickType CounterMaxAllowedValue;
    Os_TickType CounterMinCycle;
    Os_TickType CounterTicksPerBase;
     
    Os_TickType SecondsPerTick;
    Os_CoreIdType HostCore;  
    Os_CounterPropertyType CounterProperty;
} Os_CounterCfgType;



 
typedef Os_CounterCfgType *Os_CounterCfgRefType;

typedef struct
{
    Os_CounterType start;
    Os_CounterType end;
}Os_CounterRangeType;



 
typedef uint64 Os_EventType;
typedef Os_EventType EventType;



 
typedef uint64 Os_EventMaskType;
typedef Os_EventMaskType *Os_EventMaskRefType;
typedef Os_EventMaskType EventMaskType;
typedef EventMaskType *EventMaskRefType;



 
typedef struct
{
    Os_EventMaskType SetEventMask;
    Os_EventMaskType WaitEventMask;
    boolean IsWaitAllEvents;
} Os_ECBType;




 
typedef enum
{
    OS_ISR_CATEGORY1 = 0,
    OS_ISR_CATEGORY2 = 1
} Os_IsrCategoryType;



 
typedef enum
{
    OS_ISR_DISABLED = 0,
    OS_ISR_ENABLED = 1
} Os_IsrStateType;



 
typedef uint16 Os_IPLType;



 
typedef Os_IsrType ISRType;



 
typedef enum
{
    OS_ISR_ENABLE = 0,
    OS_ISR_DISABLE = 1
} Os_IsrDescriptionType;



 
typedef struct
{


    Os_ResourceType *IsrC2ResourceStack;  
    Os_ResourceType  IsrC2ResCount;
 
    uint16 Isr2CriticalZoneCount;
    uint16 IsrCurrentSpinlockOccupyLevel;
    uint16 Isr2CriticalZoneStack[1U];
       
    Os_ObjectTypeType Isr2CriticalZoneType[1U];
     

 


} Os_ICBType;



 
typedef struct
{

    uint32 IsrSrc;      
    uint32 IsrSrcType;  
    Os_CoreIdType HostCore;  
    Os_IsrCategoryType IsrCatType;
    boolean NestedEnable;
} Os_IsrCfgType;



 
typedef struct
{
    Os_IsrType IsrStart;
    Os_IsrType IsrEnd;
} Os_IsrRangeType;



 
typedef struct
{
    Os_IsrRangeType AllIsr;
    Os_IsrRangeType Isr1;
    Os_IsrRangeType Isr2;
} Os_IsrPropertyType;




 
typedef struct
{
    uint8 *AppAddrStart;
    uint8 *AppAddrEnd;
} Os_AppAddrType;



 
typedef struct
{
    uint8 *IsrAddrStart;
    uint8 *IsrAddrEnd;
} Os_IsrAddrType;



 
typedef struct
{
    uint8 *TaskAddrStart;
    uint8 *TaskAddrEnd;
} Os_TaskAddrType;



 
typedef struct
{
    uint8 *RodataAddrStart;
    uint8 *RodataAddrEnd;
} Os_RodataAddrType;



 
typedef uint16 AreaIdType;



 
typedef struct
{
    uint32 PeriAreaStartAddr;
    uint32 PeriAreaEndAddr;
} Os_PeripheralAreaCfgType;



 
typedef enum
{
    PRO_IGNORE = 0,
    PRO_TERMINATETASKISR = 1,
    PRO_TERMINATEAPPL = 2,
    PRO_TERMINATEAPPL_RESTART = 3,
    PRO_SHUTDOWN = 4,
    PRO_RESUME = 5,
} Os_ProtectionReturnType;




 
typedef Os_ProtectionReturnType ProtectionReturnType;



 
typedef struct
{
    uint32 QueueHead;
    uint32 QueueTail;
} Os_ReadyQueueType;



 
typedef struct
{
    Os_ReadyQueueType *Mark;
    const uint32 *QueueSize;
    const Os_TaskRefType *Queue;
    Os_PriorityType *Map;
    uint8 PriorityMax;
} Os_ReadyQueueManageType;



 
typedef Os_ResourceType ResourceType;



 
typedef enum
{
    OS_RES_OCCUPIED_BY_TASK = 0,               
    OS_RES_OCCUPIED_BY_INTERRUPT = 1,          
    OS_RES_OCCUPIED_BY_TASK_OR_INTERRUPT = 2  
} Os_ResourceOccupyType;



 
typedef struct
{
    
 
    Os_PriorityType SavePrio;
    uint8           SaveCount;
    Os_CallLevelType SaveLevel;
} Os_RCBType;



 
typedef struct
{
    Os_CoreIdType HostCore;  
    Os_PriorityType Ceiling;
    Os_ResourceOccupyType ResourceOccupyType;
} Os_ResourceCfgType;



 
typedef struct
{
    Os_ResourceType StdResStart;
    Os_ResourceType StdResEnd;
} Os_ResourceRangeType;




 
typedef uint32 Os_SpinlockType;



 
typedef Os_SpinlockType *Os_SpinlockRefType;






 
typedef struct
{
    Os_EventMaskType    EventAccessMask;    
    Os_TaskEntry        TaskEntry;            
 
    Os_StackType        TaskStack;
    uint16              TaskActivation;      
 
    uint16              TaskPriority;         
    Os_AppModeType      TaskAutoStartMode; 


 
    Os_TaskScheduleType TaskSchedule;         
    uint8               Rsv;
    Os_CoreIdType       HostCore;  
} Os_TaskCfgType;



 
typedef struct
{
    Os_StackPtrType  TaskStackTop;
    Os_StackPtrType  TaskStackBottom;


 
    uint16            TaskCriticalZoneStack[1U];
    uint16            TaskCriticalZoneCount;
    uint16 volatile   TaskCurrentSpinlockOccupyLevel;
    Os_ObjectTypeType TaskCriticalZoneType[1U];

    Os_ResourceType * TaskResourceStack;  
    uint8             TaskResCount;

    uint16           TaskRunPrio;
    Os_TaskStateType TaskState;

    uint8            TaskActCount;

 

    
} Os_TCBType;



 
typedef struct
{
    Os_TaskType Start;
    Os_TaskType End;
} Os_TaskRangeType;



 
typedef struct
{
    Os_TaskRangeType AllTask;
    Os_TaskRangeType ExtendTask;
    Os_TaskRangeType BasicTask;
} Os_TaskPropertyType;



 
typedef uint16 Os_TrustedFunctionIndexType;



 
typedef Os_TrustedFunctionIndexType TrustedFunctionIndexType;



 
typedef void *TrustedFunctionParameterRefType;



 
typedef void (*Os_AppTrustedFunc)(TrustedFunctionIndexType index, TrustedFunctionParameterRefType ref);



 




 



 



 


 
typedef enum
{
    OS_RPC_SYNC = 0,
    OS_RPC_ASYNC = 1
} Os_RpcSyncType;



 
typedef enum
{
    OS_RPC_FREE = 0,
    OS_RPC_START = 1,
    OS_RPC_WORK = 2,
    OS_RPC_DONE = 3
} Os_RpcServiceState;



 
typedef StatusType (*Os_RpcActionFn)(uint32 *inPara);



 
typedef struct
{
    Os_RpcActionFn ActionFn;
    uint32         SrvPara[6];   
    uint32         InPara[(5U)];
    Os_CoreIdType  RemoteCoreId;
    Os_RpcSyncType RpcSync;
} Os_RpcInputType;



 
typedef Os_RpcInputType *Os_RpcInputRefType;



 
typedef uint8 Os_RpcNodeIdType;



 
typedef struct
{
    Os_RpcNodeIdType Head;
    Os_RpcNodeIdType Tail;
} Os_LinkQueType;



 
typedef Os_LinkQueType *LinkQueRefType;



 
typedef struct
{
    Os_RpcActionFn              ActionFn;
    uint32                      InPara[(5U)];
    Os_CoreIdType               SourceCoreId;
    Os_RpcSyncType              RpcSync;
    Os_RpcNodeIdType            NextNode;
    volatile Os_RpcServiceState ProcState;
    StatusType                  RetValue;
} Os_RpcServiceNodeType;



 
typedef Os_RpcServiceNodeType *Os_RpcServiceNodeRefType;



 
typedef struct
{
    Os_RpcServiceNodeType ServiceStation[(10U)];
    Os_LinkQueType FreeQue;
    Os_LinkQueType WorkQue;
} Os_RpcCoreType;

typedef enum
{
	BARRIER_WATING,
	BARRIER_RELEASED
}Os_BarrierStatusType;

typedef uint8   Os_BarrierTicketType;

typedef struct
{
     
    Os_BarrierTicketType  ticket;
    Os_BarrierStatusType  status;   
}Os_BarrierCBType;

   
typedef struct _Os_BarrierCfgType  Os_BarrierCfgType;
 
struct _Os_BarrierCfgType
{
    volatile Os_BarrierCBType  *       BarrierCB;         
    const Os_BarrierCfgType * const *  Participant;       
     
    const Os_BarrierCfgType * const *  OwnBarriers; 
     
    uint8                              ParticipantCount;
     
    uint8                              OwnBarriersCount;
     
    TaskType                           OwnerTask;
};



 
typedef uint16 ObjectType;    



 
typedef struct
{
    const Os_AppHookCfgType             ApplicationHooks;
    const Os_AppObjectRefType *         AppObjectRef;
    const Os_TrustedFunctionIndexType * AppTrustedFuncRef;
    uint16  HostCore;  
    uint16  AppTaskCnt;
    uint16  AppIsrRefCnt;
    uint16  AppAlarmRefCnt;
    uint16  AppCounterRefCnt;
    uint16  AppScheduleTableCnt;
    uint16  AppTrustedFuncCnt;  
    const Os_TaskType RestartTask;
    boolean           Trusted;  
    
 
    boolean           TrustedApplicationDelayTimingViolationCall;
    
 
    boolean           TrustedAppWithProtection;
} Os_ApplicationCfgType;



 
typedef struct
{
    Os_EventMaskType                EventMask;
    uint8 *                         Address8;
    uint8 *                         Value8;
    uint16 *                        Address16;
    uint16 *                        Value16;
    uint32 *                        Address32;
    uint32 *                        Value32;
    StatusType *                    Status;


    Os_EventMaskRefType             EventRef;
    Os_TaskRefType                  TaskRef;
    Os_TaskStateRefType             TaskState;
    TrustedFunctionParameterRefType FunctionParams;
    Os_TickRefType                  CounterValue;
    Os_TickRefType                  CounterElapsedValue;
    
    uint32                          Clearmask32;
    uint32                          Setmask32;
    uint32                          IocValue;
            
    TickType                        Offset;
    TickType                        Start;

    Os_AlarmBaseRefType             AlarmBaseRef;
    Os_TickRefType                  AlarmTickRef;
    Os_TickType                     AlarmTime;
    Os_TickType                     AlarmCycle;


    uint16                          Clearmask16;
    uint16                          Setmask16;
    uint16                          Area;
    uint16                          SpinlockId;
    TrustedFunctionIndexType        FunctionIndex; 
    uint16                          DataLenth;
    CoreIdType                      CoreID;
    Os_TaskType                     TaskId;
    CounterType                     CounterId;
    Os_IsrType                      ISRID;



    Os_AlarmType                    AlarmId;
    Os_ResourceType                 ResourceId;

    uint8                           Clearmask8;
    uint8                           Setmask8;
    StatusType                      ShutdownError;
    IdleModeType                    IdleMode;
    boolean                         ClearPending;
} Os_RunTimeSrvPrarmType;






typedef enum
{
    OS_PROTECTION_TERMINATE_INVALID = 0,
    OS_PROTECTION_TERMINATE_TASK = 1,
    OS_PROTECTION_TERMINATE_TPROT_ISR = 2,
    OS_PROTECTION_TERMINATE_NESTED_ISR = 3,
} Os_ProtectionTerminateObjType;



 
typedef struct
{
     
    const Os_ReadyQueueManageType * QueueMg;
    Os_TCBType *              SysRunningTCB;
    const Os_StackType *      SystemStack;

    Os_IsrType *              SysIsrNestQueue;
    uint32                    LastUnhandledIrq;
    uint32                    LastUnhandledExc;

    Os_ArchMsrType            SaveAllInt;
    Os_ArchMsrType            SaveAllIntNested;

    Os_AppModeType            SysActiveAppMode;
    Os_PriorityType           SysHighPrio;
    uint16                    SysTaskMax;
    Os_CoreIdType             SysCore;  
    uint16                    PriorityNum;  
    Os_ResourceType           ScheduleResId;

     
    uint16                    SaveOsIntNested;
    uint16                    CfgIsrMax;
    uint16                    CfgIsr2Max;
    uint16                    TaskIdle;
    Os_TaskType               SysHighTaskId;
    Os_TaskType               SysRunningTaskId;
    Os_TaskType               SysPrevTaskID;
     
    Os_AlarmType              SysAlarmMax;
    Os_IsrType                SysRunningIsrCat2Id;  
    boolean                   SysInIsrCat2;
    Os_LockerType             SysDispatchLocker;
    Os_CallLevelType          SysOsLevel;
    uint8                     SuspendAllCount;
    uint8                     SuspendOsCount;
    Os_CallLevelType          SaveLevel;
    uint8                     IntNestISR1;
    Os_CallLevelType          SaveLevelISR1;
    uint8                     IntNestISR2;
    boolean                   UnhandledIrqReported;
    boolean                   UnhandledExcReported;



    Os_ProtectionTerminateObjType ProtectionTerminateObj;






} Os_SCBType;


 




























 


 

 



 

 








 







 







 
  
 






 






 






 

 










 
extern void Os_CallShutdownHook(Os_SCBType *pScb, StatusType error);




 




























 


 

























 


 

 

 

 

 

 

 

 


 








 
extern void Os_ExceptionHandler(const void *errMsg, StatusType errType);


 



 

 


 

 


 
 

 



 



 

 

 


























 

   


 





 
















 
extern StatusType ActivateTask(TaskType TaskID);    








 
extern void ActivateTaskAsyn(TaskType TaskID);    











 
extern StatusType TerminateTask(void);    



















 
extern StatusType ChainTask(TaskType TaskID);    













 
extern StatusType Schedule(void);    














 
extern StatusType GetTaskID(TaskRefType TaskID);    


















 
extern StatusType GetTaskState(TaskType TaskID, TaskStateRefType State);    
















 
extern StatusType GetResource(ResourceType ResID);    

















 
extern StatusType ReleaseResource(ResourceType ResID);    



















 
extern StatusType GetAlarm(AlarmType AlarmID, TickRefType Tick);    



















 
extern StatusType GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info);    

 











 
 














 
extern StatusType CancelAlarm(AlarmType AlarmID);    



















 
extern StatusType SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle);    



















 
extern StatusType SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle);    














 
extern StatusType IncrementCounter(CounterType CounterID);    



















 
extern StatusType GetCounterValue(CounterType CounterID, TickRefType Value);    



















 
extern StatusType GetElapsedValue(CounterType CounterID, TickRefType Value, TickRefType ElapsedValue);    








 
extern AppModeType GetActiveApplicationMode(void);    







 
extern void DisableAllInterrupts(void);    







 
extern void EnableAllInterrupts(void);    






 
extern void ResumeAllInterrupts(void);    







 
extern void SuspendAllInterrupts(void);    






 
extern void ResumeOSInterrupts(void);    







 
extern void SuspendOSInterrupts(void);    















 
extern StatusType EnableInterruptSource(ISRType ISRID, boolean ClearPending);    













 
extern StatusType DisableInterruptSource(ISRType ISRID);    












 
extern StatusType ClearPendingInterrupt(ISRType ISRID);    








 
extern void StartOS(AppModeType Mode);    









 
extern void ShutdownOS(StatusType Error);    







 
extern ISRType GetISRID(void);    










 










 
extern void ShutdownHook(StatusType Error);    
















 
extern void StartCore(CoreIdType CoreID, StatusType *Status);    










 
extern void StartNonAutosarCore(CoreIdType CoreID, StatusType *Status);    













 
extern StatusType ControlIdle(CoreIdType CoreID, IdleModeType IdleMode);    








 
extern uint32 GetNumberOfActivatedCores(void);    







 
extern CoreIdType GetCoreID(void);    








 
extern void ShutdownAllCores(StatusType Error);    


































 

   


 


 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 

































































 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 



















































 
 



 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 






















 
 



 


 



 





 




 



 
 

 




 








 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 




 

 

 

 

 




 

 

 





 
 

 

 

 

 

 









 






 




 



 


 




 


 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
typedef uint8 Mcu_ClockType;

 
 
 
 
typedef uint32 Mcu_RawResetType;

 
 
 
 
typedef uint8 Mcu_ModeType;

 
 
typedef uint8 Mcu_SeqType;

 
 
 
 
typedef uint8 Mcu_RamSectionType;

 
 
 
 
 
 
 

 
typedef struct STag_Mcu_ConfigType
{
   
  uint32 ulStartOfDbToc;
   
  uint32 ulMainClockStabCount;
   
  uint32 ulLVIindicationReg;
   
  const void * pClockDomainOffset;
  uint8 ucClockSettingOffset;
  uint8 ucModeSettingOffset;
   
  const void * pPortGroupSetting;
  uint8 ucPortGroupSettingOffset;
   
  uint32 * pPortRamArea;
  uint8 ucPortRamAreaNum;

  uint8 ucNumOfPortGroup;

   

} Mcu_ConfigType;

 
 
 
 
typedef enum ETag_Mcu_PllStatusType
{
  MCU_PLL_LOCKED = 0,
  MCU_PLL_UNLOCKED,
  MCU_PLL_STATUS_UNDEFINED
} Mcu_PllStatusType;

 
 
 
 
 
typedef enum ETag_Mcu_ResetType
{
  MCU_SW_RESET = 1,
  MCU_WATCHDOG0_RESET,
  MCU_WATCHDOG1_RESET,
  MCU_CLM0_RESET,
  MCU_CLM1_RESET,
   
  MCU_CLM2_RESET,
  MCU_LVI_RESET,
  MCU_CVM_RESET,
  MCU_TERMINAL_RESET,
  MCU_POWER_ON_RESET,
  MCU_ISO_RESET,
  MCU_RESF11_RESET,
  MCU_RESF12_RESET,
  MCU_RESF13_RESET,
  MCU_CLM3_RESET,
  MCU_RESET_UNDEFINED,
  MCU_MULTIPLE_RESETS_OCCURED,
  MCU_RESET_UNKNOWN
} Mcu_ResetType;


 


 
 
typedef enum ETag_Mcu_SeqOperationType
{
  MCU_DIGITAL_INPUT = 1,
  MCU_ANALOG_INPUT,
  MCU_MIXED_INPUT
} Mcu_SeqOperationType;


 
typedef enum ETag_Mcu_RamWriteSizeType
{
  MCU_8BIT_SIZE = 1,
  MCU_16BIT_SIZE,
  MCU_32BIT_SIZE
} Mcu_RamWriteSizeType;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 
































































 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 




































































































































































 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


































 
 



 


 



 





 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 









































































 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


typedef struct Stag_PortRegisters
{
    uint16       usP;                        

    uint8        ucDummy1[254];              

    uint32       ulPSR;                      

    uint8        ucDummy2[252];              

    uint16       usPPR;                      

    uint8        ucDummy3[254];              

    uint16       usPM;                       

    uint8        ucDummy4[254];              

    uint16       usPMC;                      

    uint8        ucDummy5[254];              

    uint16       usPFC;                      

    uint8        ucDummy6[254];              

    uint16       usPFCE;                     

    uint8        ucDummy7[254];              

    uint16       usPNOT;                     

    uint8        ucDummy8[254];              

    uint32       ulPMSR;                     

    uint8        ucDummy9[252];              

    uint32       ulPMCSR;                    

    uint8        ucDummy10[252];             

    uint16       usPFCAE;                    

    uint8        ucDummy11[13822];           

    uint16       usPIBC;                     

    uint8        ucDummy12[254];             

    uint16       usPBDC;                     

    uint8        ucDummy13[254];             

    uint16       usPIPC;                     

    uint8        ucDummy14[254];             

    uint16       usPU;                       

    uint8        ucDummy15[254];             

    uint16       usPD;                       

    uint8        ucDummy16[254];             

    uint32       ulPODC;                     

    uint8        ucDummy17[252];             

    uint32       ulPDSC;                     

    uint8        ucDummy18[252];             

    uint16       usPIS;                      

    uint8        ucDummy19[1022];            

    uint32       ulPPROTS;                   

    uint8        ucDummy20[252];             

    uint32       ulPPCMD;                    
}PortReg;

typedef struct STag_IPortRegisters
{                                                      
    uint16       usIPPR;                     

    uint8        ucDummy21[15870];           

    uint16       usIPIBC;                    
}IPortReg;

typedef struct STag_JPortRegisters
{
    uint8        ucJP;                       

    uint8        ucDummy22[15];              

    uint32       ulJPSR;                     

    uint8        ucDummy23[12];              

    uint8        ucJPPR;                     

    uint8        ucDummy24[15];              

    uint8        ucJPM;                      

    uint8        ucDummy25[15];              

    uint8        ucJPMC;                     

    uint8        ucDummy26[15];              

    uint8        ucJPFC;                     

    uint8        ucDummy27[15];              

    uint8        ucJPFCE;                    

    uint8        ucDummy28[15];              

    uint8        ucJPNOT;                    

    uint8        ucDummy29[15];              

    uint32       ulJPMSR;                    

    uint8        ucDummy30[9];               

    uint32       ulJPMCSR;                   

    uint8        ucDummy31[876];             

    uint8        ucJPIBC;                    

    uint8        ucDummy32[15];              

    uint8        ucJPBDC;                    

    uint8        ucDummy33[31];              

    uint8        ucJPU;                      

    uint8        ucDummy34[15];              

    uint8        ucJPD;                      

    uint8        ucDummy35[15];              

    uint32       ulJPODC;                    

    uint8        ucDummy36[12];              

    uint32       ulJPDSC;                    

    uint8        ucDummy37[12];              

    uint8        ucJPIS;                     

    uint8        ucDummy38[47];              

    uint8        ucJPISA;                    

    uint8        ucDummy39[15];              

    uint32       ulJPPROTS;                  

    uint8        ucDummy40[12];              

    uint32       ulJPPCMD;                   
}JPortReg;

typedef struct Stag_AnalogPortReg
{
    uint16       usAP;                       

    uint8        ucDummy41[254];             

    uint32       ulAPSR;                     

    uint8        ucDummy42[252];             

    uint16       usAPPR;                     

    uint8        ucDummy43[254];             

    uint16       usAPM;                      

    uint8        ucDummy44[1022];            

    uint16       usAPNOT;                    

    uint8        ucDummy45[254];             

    uint32       ulAPMSR;                    

    uint8        ucDummy46[14332];           

    uint16       usAPIBC;                    

    uint8        ucDummy47[254];             

    uint16       usAPBDC;                    
}APortReg;

typedef struct Stag_FCLA0_Registers
{
    uint8         ucCTLn_SIG[137];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}FCLAReg;

typedef struct Stag_DNFA_Registers
{
    uint8        ucCTL;                      

    uint8        ucDummy70[3];               

    uint16       usEN;                       
}DNFAReg;

typedef struct Stag_RESF_Registers
{                                                      
    const uint32 ulRESF;                     

    uint8        ucDummy90[4];               

    uint32       ulRESFC;                    

    uint8        ucDummy91[244];             

    const uint32 ulRESFR;                    

    uint8        ucDummy92[4];               

    uint32       ulRESFCR;                   

    uint8        ucDummy93[408];             

    uint32       ulSWRESA;                   

    uint8        ucDummy94[11256];           

    uint32       ulCYCRBASE;                 
} RESFReg;

typedef struct Stag_LVI_Registers
{                                                      
    const uint32 ulVLVF;                     

    uint8        ucDummy95[4];               

    uint32       ulVLVFC;                    

    uint8        ucDummy96[116];             

    uint32       ulLVICNT;                   

    uint8        ucDummy97[9980];            

    uint32       ulCVMF;                     

    const uint32 ulCVMDE;                    

    uint8        ucDummy98[12];              

    uint32       ulCVMDIAG;                  

    uint8        ucDummy99[232];             

    uint32       ulPROTCMDCVM;               

    const uint32 ulPROTSCVM;                 
} LVIReg;
 
typedef struct Stag_ClkCntl_Registers
{                                                      

    uint32       ulROSCE;                    

    const uint32 ulROSCS;                    

    uint8        ucDummy100[16];             

    uint32       ulROSCSTPM;                 

    uint32       ulROSCUT;                   

    uint8        ucDummy101[224];            

    uint32       ulMOSCE;                    

    const uint32 ulMOSCS;                    

    uint32       ulMOSCC;                    

    uint32       ulMOSCST;                   

    uint8        ucDummy102[8];              

    uint32       ulMOSCSTPM;                 

    uint32       ulMOSCM;                    

    uint8        ucDummy103[224];            

    uint32       ulSOSCE;                    

    const uint32 ulSOSCS;                    

    uint8        ucDummy104[4];              

    uint32       ulSOSCST;                   

    uint8        ucDummy105[3568];           

    uint32       ulCKSC_AWDTAD_CTL;          

    uint8        ucDummy106[4];              

    const uint32 ulCKSC_AWDTAD_ACT;          

    uint8        ucDummy107[12];             

    uint32       ulCKSC_AWDTAD_STPM;         

    uint8        ucDummy108[228];            

    uint32       ulCKSC_ATAUJS_CTL;          

    uint8        ucDummy109[4];              

    const uint32 ulCKSC_ATAUJS_ACT;          

    uint8        ucDummy110[244];            

    uint32       ulCKSC_ATAUJD_CTL;          

    uint8        ucDummy111[4];              

    const uint32 ulCKSC_ATAUJD_ACT;          

    uint8        ucDummy112[12];             

    uint32       ulCKSC_ATAUJD_STPM;         

    uint8        ucDummy113[228];            

    uint32       ulCKSC_ARTCAS_CTL;          

    uint8        ucDummy114[4];              

    const uint32 ulCKSC_ARTCAS_ACT;          

    uint8        ucDummy115[244];            

    uint32       ulCKSC_ARTCAD_CTL;          

    uint8        ucDummy116[4];              

    const uint32 ulCKSC_ARTCAD_ACT;          

    uint8        ucDummy117[12];             

    uint32       ulCKSC_ARTCAD_STPM;         

    uint8        ucDummy118[228];            

    uint32       ulCKSC_AADCAS_CTL;          

    uint8        ucDummy119[4];              

    const uint32 ulCKSC_AADCAS_ACT;          

    uint8        ucDummy120[244];            

    uint32       ulCKSC_AADCAD_CTL;          

    uint8        ucDummy121[4];              

    const uint32 ulCKSC_AADCAD_ACT;          

    uint8        ucDummy122[12];             

    uint32       ulCKSC_AADCAD_STPM;         

    uint8        ucDummy123[228];            

    uint32       ulCKSC_AFOUTS_CTL;          

    uint8        ucDummy124[4];              

    const uint32 ulCKSC_AFOUTS_ACT;          

    uint8        ucDummy125[12];             

    uint32       ulCKSC_AFOUTS_STPM;         

    uint8        ucDummy126[228];            

    uint32       ulFOUTDIV;                  

    const uint32 ulFOUTSTAT;                 

    uint8        ucDummy127[26616];          

    uint32       ulPLLE;                     

    const uint32 ulPLLS;                     

    uint32       ulPLLC;                     

    uint8        ucDummy128[4084];           

    uint32       ulCKSC_CPUCLKS_CTL;         

    uint8        ucDummy129[4];              

    const uint32 ulCKSC_CPUCLKS_ACT;         

    uint8        ucDummy130[4];              

    uint32       ulCKSC_PPLLCLKS_CTL;        

    uint8        ucDummy131[4];              

    const uint32 ulCKSC_PPLLCLKS_ACT;        

    uint8        ucDummy132[228];            

    uint32       ulCKSC_CPUCLKD_CTL;         

    uint8        ucDummy133[4];              

    const uint32 ulCKSC_CPUCLKD_ACT;         

    uint8        ucDummy134[244];            

    uint32       ulCKSC_IPERI1S_CTL;         

    uint8        ucDummy135[4];              

    const uint32 ulCKSC_IPERI1S_ACT;         

    uint8        ucDummy136[244];            

    uint32       ulCKSC_IPERI2S_CTL;         

    uint8        ucDummy137[4];              

    const uint32 ulCKSC_IPERI2S_ACT;         

    uint8        ucDummy138[244];            

    uint32       ulCKSC_ILINS_CTL;           

    uint8        ucDummy139[4];              

    const uint32 ulCKSC_ILINS_ACT;           

    uint8        ucDummy140[244];            

    uint32       ulCKSC_IADCAS_CTL;          

    uint8        ucDummy141[4];              

    const uint32 ulCKSC_IADCAS_ACT;          

    uint8        ucDummy142[244];            

    uint32       ulCKSC_IADCAD_CTL;          

    uint8        ucDummy143[4];              

    const uint32 ulCKSC_IADCAD_ACT;          

    uint8        ucDummy144[244];            

    uint32       ulCKSC_PLLIS_CTL;           

    uint8        ucDummy145[4];              

    const uint32 ulCKSC_PLLIS_ACT;           

    uint8        ucDummy146[244];            

    uint32       ulCKSC_ILIND_CTL;           

    uint8        ucDummy147[4];              

    const uint32 ulCKSC_ILIND_ACT;           

    uint8        ucDummy148[12];             

    uint32       ulCKSC_ILIND_STPM;          

    uint8        ucDummy149[228];            

    uint32       ulCKSC_ICANS_CTL;           

    uint8        ucDummy150[4];              

    const uint32 ulCKSC_ICANS_ACT;           

    uint8        ucDummy151[12];             

    uint32       ulCKSC_ICANS_STPM;          

    uint8        ucDummy152[228];            

    uint32       ulCKSC_ICANOSCD_CTL;        

    uint8        ucDummy153[4];              

    const uint32 ulCKSC_ICANOSCD_ACT;        

    uint8        ucDummy154[12];             

    uint32       ulCKSC_ICANOSCD_STPM;       

    uint8        ucDummy155[228];            

    uint32       ulCKSC_ICSIS_CTL;           

    uint8        ucDummy156[4];              

    const uint32 ulCKSC_ICSIS_ACT;           

    uint8        ucDummy157[244];            

    uint32       ulCKSC_IIICS_CTL;           

    uint8        ucDummy158[4];              

    const uint32 ulCKSC_IIICS_ACT;           
} ClkCntlReg;
 
typedef struct Stag_ClkMntr_Register
{                                                      
    uint8        ucCTL0;                     

    uint8        ucDummy159[7];              

    uint16       usCMPL;                     

    uint8        ucDummy160[2];              

    uint16       usCMPH;                     

    uint8        ucDummy161[2];              

    uint8        ucPCMD;                     

    uint8        ucDummy162[3];              

    const uint8  ucPS;                       

    uint8        ucDummy163[3];              

    uint8        ucEMU0;                     
} ClkMntrReg;

typedef struct Stag_CmnClkMntr_Register
{                                                      
    uint32       ulTEST;                     

    const uint32 ulTESTS;                    

    uint8        ucDummy164[248];            

    uint32       ulPROTCMDCLMA;              

    const uint32 ulPROTSCLMA;                
} CmnClkMntrReg;

typedef struct Stag_STBC0_Registers
{                                                      
    uint32       ulPSC;                      

    uint8        ucDummy165[12];             

    uint32       ulSTPT;                     
} STBC0Reg;

typedef struct Stag_WUF_Registers
{                                                      
    const uint32 ulWUF0;                     

    uint32       ulWUFMSK0;                  

    uint32       ulWUFC0;                    
} WUFReg;

typedef struct Stag_LPS_Registers                      
{
    uint32       ulSCTLR;                    

    uint32       ulEVFR;                     

    uint32       ulDPSELR0;                  

    uint32       ulDPSELRM;                  

    uint32       ulDPSELRH;                  

    uint32       ulDPDSR0;                   

    uint32       ulDPDSRM;                   

    uint32       ulDPDSRH;                   

    const uint32 ulDPDIMR0;                  

    const uint8  ucDPDIMR1;                  

    uint8        ucDummy166[3];              

    const uint8  ucDPDIMR2;                  

    uint8        ucDummy167[3];              

    const uint8  ucDPDIMR3;                  

    uint8        ucDummy168[3];              

    const uint8  ucDPDIMR4;                  

    uint8        ucDummy169[3];              

    const uint8  ucDPDIMR5;                  

    uint8        ucDummy170[3];              

    const uint8  ucDPDIMR6;                  

    uint8        ucDummy171[3];              

    const uint8  ucDPDIMR7;                  

    uint8        ucDummy172[3];              

    uint16       usCNTVAL;                   

    uint8        ucDummy173[2];              

    const uint8  ucSOSTR;                    
} LPSReg;

typedef struct Stag_WriteProt_Registers
{                                                      
    uint32       ulPROTCMD0;                 

    const uint32 ulPROTS0;                   

    uint8        ucDummy174[32760];          

    uint32       ulPROTCMD1;                 

    const uint32 ulPROTS1;                   
} WPROTReg;

typedef struct Stag_CANController_Registers
{
    uint32       ulGCFG;                     

    uint32       ulGCTR;                     

    uint32       ulGSTS;                     

    uint32       ulGERFL;                    

    uint32       ulGTSC;                     

    uint32       ulGAFLECTR;                 

    uint32       ulGAFLCFG0;                 

    uint32       ulGAFLCFG1;                 

    uint32       ulRMNB;                     

    uint8        ucdummy175[952];            

    uint32       ulGTINTSTS0;                

    uint32       ulGTINTSTS1;                

    uint32       ulGTSTCFG;                  

    uint32       ulGTSTCTR;                  

    uint8        ucdummy289[4];              

    uint32       ulGFDCFG;                   

    uint8        ucdummy290[4];              

    uint32       ulGLOCKK;                   

    uint8        ucdummy291[124];            

    uint32       ulGRMCFG;                   

}CANGblReg;

typedef struct Stag_CANChannel_Registers
{
    uint32       ulCFG;                      

    uint32       ulCTR;                      

    uint32       ulSTS;                      

    uint32       ulERFL;                     
}CANChReg;

typedef struct Stag_CANTXQ_Registers
{
    uint32       ulTXQCC;                    

    uint8        ucdummy178[28];             

    uint32       ulTXQSTS;                   

    uint8        ucdummy179[28];             

    uint32       ulTXQPCTR;                  
}CANTxqReg;

typedef struct Stag_CANTHL_Registers
{
    uint32       ulTHLCC;                    

    uint8        ucdummy181[28];             

    uint32       ulTHLSTS;                   

    uint8        ucdummy182[28];             

    uint32       ulTHLPCTR;                  

    uint8        ucdummy183[5052];           

    uint32       ulTHLACC;                   

    uint8        ucdummy184[18428];          

    uint32       ulFDTHLACC;                 
}CANThlReg;


typedef struct Stag_CAN_ReceiveRule
{
    uint32       ulGAFLID;                   

    uint32       ulGAFLM;                    

    uint32       ulGAFLP0;                   

    uint32       ulGAFLP1;                   
}CANRRuleReg;

typedef struct Stag_CAN_ComFIFO1
{
    uint32       ulCFCC;                     

    uint8        ucdummy184[92];             

    uint32       ulCFSTS;                    

    uint8        ucdummy185[92];             

    uint32       ulCFPCTR;                   
}CANCFIFOReg1;

typedef struct Stag_CAN_ComFIFO2
{
    uint32       ulCFID;                     

    uint32       ulCFPTR;                    

    uint32       ulCFDF0;                    

    uint32       ulCFDF1;                    
}CANCFIFOReg2;

 
typedef struct Stag_CAN_FIFOStatus
{
    uint32       ulFESTS;                    

    uint32       ulFFSTS;                    

    uint32       ulFMSTS;                    

    uint32       ulRFISTS;                   

    uint32       ulCFRISTS;                  

    uint32       ulCFTISTS;                  
}CANFIFOStatusReg;

typedef struct Stag_CAN_HrhFIFO
{
    uint32       ulRFCC;                     

    uint8        ucdummy287[28];             

    uint32       ulRFSTS;                    

    uint8        ucdummy288[28];             

    uint32       ulRFPCTR;                   


}CANHRTFIFOReg1;

typedef struct Stag_CAN_HrhFIFO2
{
    uint32       ulRFID;                     

    uint32       ulRFPTR;                    

    uint32       ulRFDF0;                    

    uint32       ulRFDF1;                    

}CANHRTFIFOReg2;


typedef struct Stag_CAN_FIFODMA
{
    uint32       ulCDTCT;                    
    uint32       ulCDTSTS;                   
}CANFIFIODMAReg;

typedef struct Stag_CAN_TransmitBuffControl
{
    uint32       TMTRSTS;                    

    uint32       TMTARSTS;                   

    uint32       TMTCSTS;                    

    uint32       TMTASTS;                    
}CANTransmitBuffControlReg;

typedef struct STag_CAN_Hrh
{
    uint32       ulRMID;                     

    uint32       ulRMPTR;                    

    uint32       ulRMDF0;                    

    uint32       ulRMDF1;                    
}CANHrhReg;

typedef struct STag_CAN_Hth1
{
    uint8        ucTMC;                      

    uint8        ucdummy190[127];            

    uint8        ucTMSTS;                    
}CANHthReg1;

typedef struct STag_CAN_Hth2
{
    uint32       ulTMID;                     

    uint32       ulTMPTR;                    

    uint32       ulTMDF0;                    
}CANHthReg2;

 

typedef struct STag_CAN_FDChannel
{
    uint32        ulDCFG;

    uint32        ulFDCFG;

    uint32        ulFDCTR;

    uint32        ulFDSTS;

    uint32        ulFDCRC;
}CANFDChReg;

typedef struct STag_CANRamTstReg
{
    uint32       ulRPGACC[64];               
}CANRamTstReg;

typedef struct Stag_CANFD_ReceiveRule
{
    uint32       ulFDGAFLID;                 

    uint32       ulFDGAFLM;                  

    uint32       ulFDGAFLP0;                 

    uint32       ulFDGAFLP1;                 
}CANFDRRuleReg;

typedef struct STag_CANFD_Hrh
{
    uint32       ulFDRMID;                   

    uint32       ulFDRMPTR;                  

    uint32       ulFDRMSTS;                  

    uint32       ulFDRMDF0;                  

    uint32       ulFDRMDF1;                  

    uint32       ulFDRMDF2;                  

    uint32       ulFDRMDF3;                  

    uint32       ulFDRMDF4;                  
}CANFDHrhReg;

typedef struct Stag_CANFD_HrhFIFO
{
    uint32       ulFDRFID;                   

    uint32       ulFDRFPTR;                  

    uint32       ulRFFDSTS;                  

    uint32       ulFDRFDF0;                  

    uint32       ulFDRFDF1;                  

    uint32       ulFDRFDF2;                  

    uint32       ulFDRFDF3;                  

    uint32       ulFDRFDF4;                  

    uint32       ulFDRFDF5;                  

    uint32       ulFDRFDF6;                  

    uint32       ulFDRFDF7;                  

    uint32       ulFDRFDF8;                  

    uint32       ulFDRFDF9;                  

    uint32       ulFDRFDF10;                 

    uint32       ulFDRFDF11;                 

    uint32       ulFDRFDF12;                 

    uint32       ulFDRFDF13;                 

    uint32       ulFDRFDF14;                 

    uint32       ulFDRFDF15;                 
}CANFDHRTFIFOReg;

typedef struct Stag_CANFD_ComFIFO
{
    uint32       ulFDCFID;                   

    uint32       ulFDCFPTR;                  

    uint32       ulFDCSTS;                   

    uint32       ulFDCFDF0;                  

    uint32       ulFDCFDF1;                  

    uint32       ulFDCFDF2;                  

    uint32       ulFDCFDF3;                  

    uint32       ulFDCFDF4;                  

    uint32       ulFDCFDF5;                  

    uint32       ulFDCFDF6;                  

    uint32       ulFDCFDF7;                  

    uint32       ulFDCFDF8;                  

    uint32       ulFDCFDF9;                  

    uint32       ulFDCFDF10;                 

    uint32       ulFDCFDF11;                 

    uint32       ulFDCFDF12;                 

    uint32       ulFDCFDF13;                 

    uint32       ulFDCFDF14;                 

    uint32       ulFDCFDF15;                 
}CANFDCFIFOReg;

typedef struct STag_CANFD_Hth
{
    uint32       ulFDTMID;                   

    uint32       ulFDTMPTR;                  

    uint32       ulTMFDCTR;                  

    uint32       ulFDTMDF0;                  

    uint32       ulFDTMDF1;                  

    uint32       ulFDTMDF2;                  

    uint32       ulFDTMDF3;                  

    uint32       ulFDTMDF4;                  
}CANFDHthReg;

typedef struct STag_TAUDBUnitUserReg
{
    uint16       usTOL;                      

    uint8        ucdummy192[2];              

    uint16       usRDT;                      

    uint8        ucdummy193[2];              

    uint16       usRSF;                      

    uint8        ucdummy272[2];              

    uint16       usTRO;                      

    uint8        ucdummy194[2];              

    uint16       usTME;                      

    uint8        ucdummy195[2];              

    uint16       usTDL;                      

    uint8        ucdummy196[2];              

    uint16       usTO;                       

    uint8        ucdummy197[2];              

    uint16       usTOE;                      

    uint8        ucdummy198[354];            

    uint16       usTE;                       

    uint8        ucdummy199[2];              

    uint16       usTS;                       

    uint8        ucdummy200[2];              

    uint16       usTT;                       

}TAUDBUserReg;

typedef struct STag_TAUDBUnitOsReg
{
    uint16       usTPS;                      

    uint8        ucdummy201[2];              

    uint8        ucBRS;                      

    uint8        ucdummy202[3];              

    uint16       usTOM;                      

    uint8        ucdummy203[2];              

    uint16       usTOC;                      

    uint8        ucdummy204[2];              

    uint16       usTDE;                      

    uint8        ucdummy205[2];              

    uint16       usTDM;                      

    uint8        ucdummy206[2];              

    uint16       usTRE;                      

    uint8        ucdummy207[2];              

    uint16       usTRC;                      

    uint8        ucdummy208[2];              

    uint16       usRDE;                      

    uint8        ucdummy209[2];              

    uint16       usRDM;                      

    uint8        ucdummy210[2];              

    uint16       usRDS;                      

    uint8        ucdummy211[2];              

    uint16       usRDC;                      
}TAUDBOsReg;

typedef struct STag_TAUJUnitUserReg
{
    uint8        ucTE;                       

    uint8        ucdummy212[3];              

    uint8        ucTS;                       

    uint8        ucdummy213[3];              

    uint8        ucTT;                       

    uint8        ucdummy214[3];              

    uint8        ucTO;                       

    uint8        ucdummy215[3];              

    uint8        ucTOE;                      

    uint8        ucdummy216[3];              

    uint8        ucTOL;                      

    uint8        ucdummy217[3];              

    uint8        ucRDT;                      

    uint8        ucdummy267[3];              

    uint8        ucRSF;                      

    uint8        ucdummy275[16];             

}TAUJUserReg;

typedef struct STag_TAUJUnitOsRegs
{
    uint16       usTPS;                      

    uint8        ucdummy218[2];              

    uint8        ucBRS;                      

    uint8        ucdummy219[3];              

    uint8        ucTOM;                      

    uint8        ucdummy220[3];              

    uint8        ucTOC;                      

    uint8        ucdummy221[3];              

    uint8        ucRDE;                      

    uint8        ucdummy222[3];              

    uint8        ucRDM;                      
}TAUJOsReg;

typedef struct STag_TAUDBUserReg
{
    uint16       usCDR;                      

    uint16       usDummy223[63];             

    uint16       usCNT;                      

    uint16       usDummy224[31];             

    uint8        ucCMUR;                     

    uint8        ucdummy225[127];            

    uint8        ucCSR;                      

    uint8        ucdummy270[63];             

    uint8        ucCSC;                      

    uint8        ucdummy268[127];            

    uint16       usCMOR;                     

}TAUDBChReg;

typedef struct STag_TAUJUserReg
{
    uint32       ulCDR;                      

    uint8        ucdummy226[12];             

    uint32       ulCNT;                      

    uint8        ucdummy227[12];             

    uint8        ucCMUR;                     

    uint8        ucdummy269[15];             

    uint8        ucCSR;                      

    uint8        ucdummy271[15];             

    uint8        ucCSC;                      

    uint8        ucdummy228[63];             

    uint16       usCMOR;                     
}TAUJChReg;

typedef struct STag_OSTMUnitUserRegs
{
    uint32       ulCMP;                      

    uint32       ulCNT;                      

    uint8        ucdummy229[8];              

    uint8        ucTE;                       

    uint8        ucdummy230[3];              

    uint8        ucTS;                       

    uint8        ucdummy231[3];              

    uint8        ucTT;                       

    uint8        ucdummy232[7];              

    uint8        ucCTL;                      

    uint8        ucdummy233[3];              

    uint8        ucEMU;                      
} OSTMReg;

typedef struct STag_Pwm_DiagClockDivRegs
{
    uint16       usBRS0;                     

    uint8        ucdummy232[2];              

    uint16       usBRS1;                     

    uint8        ucdummy233[2];              

    uint16       usBRS2;                     

    uint8        ucdummy234[2];              

    uint16       usBRS3;                     

    uint8        ucdummy235[2];              

    uint8        ucTE;                       

    uint8        ucdummy236[3];              

    uint8        ucTS;                       

    uint8        ucdummy237[3];              

    uint8        ucTT;                       
}PWBAReg;

typedef struct STag_Pwm_DiagGeneratorRegs
{
    uint16       usCSDR;                     

    uint8        ucdummy238[2];              

    uint16       usCRDR;                     

    uint8        ucdummy239[2];              

    uint16       usCTDR;                     

    uint8        ucdummy240[2];              

    uint8        ucRDT;                      

    uint8        ucdummy241[3];              

    uint8        ucRSF;                      

    uint8        ucdummy242[3];              

    uint16       usCNT;                      

    uint8        ucdummy243[10];             

    uint8        ucCTL;                      

    uint8        ucdummy244[3];              

    uint16       usCSBR;                     

    uint8        ucdummy245[2];              

    uint16       usCRBR;                     

    uint8        ucdummy246[2];              

    uint16       usCTBR;                     
}PWGAReg;

typedef struct STag_Pwm_PWSAReg
{
    uint8        ucCTL;                      

    uint8        ucdummy268[3];              

    uint8        ucSTR;                      

    uint8        ucdummy269[59];             

    uint32       ulPVCR[36];                 
}PWSAReg;

typedef struct STag_Pwm_SLPWGAReg
{
    uint32       ulSLPWGA0;                  

    uint32       ulSLPWGA1;                  

    uint32       ulSLPWGA2;                  
}SLPWGAReg;

typedef struct STag_RLin2_GblRegs
{
    uint8        ucGLWBR;                    

    uint8        ucGLBRP0;                   

    uint8        ucGLBRP1;                   

    uint8        ucGLSTC;                    
} Lin2GblReg;

typedef struct STag_RLin2_ChannelRegs
{
    uint8        ucLiMD;                     

    uint8        ucLiBFC;                    

    uint8        ucLiSC;                     

    uint8        ucLiWUP;                    

    uint8        ucLiIE;                     

    uint8        ucLiEDE;                    

    uint8        ucLiCUC;                    

    uint8        ucdummy247[1];              

    uint8        ucLiTRC;                    

    uint8        ucLiMST;                    

    uint8        ucLiST;                     

    uint8        ucLiEST;                    

    uint8        ucLiDFC;                    

    uint8        ucLiIDB;                    

    uint8        ucLiCBR;                    

    uint8        ucdummy248[1];              

    uint8        ucLiDBR[8];                 
} Lin2ChReg;

typedef struct STag_RLin3_UartRegs
{
    uint8        ucLWBR;                     

    uint8        ucLBRP0;                    

    uint8        ucLBRP1;                    

    uint8        ucLSTC;                     

    uint8        ucdummy249[3];              

    uint8        ucLMD;                      

    uint8        ucLBFC;                     

    uint8        ucLSC;                      

    uint8        ucLWUP;                     

    uint8        ucLIE;                      

    uint8        ucLEDE;                     

    uint8        ucLCUC;                     

    uint8        ucdummy250[1];              

    uint8        ucLTRC;                     

    uint8        ucLMST;                     

    uint8        ucLST;                      

    uint8        ucLEST;                     

    uint8        ucLDFC;                     

    uint8        ucLDB;                      

    uint8        ucLCBR;                     

    uint8        ucdummy251[1];              

    uint8        ucLDBR[8];                  
} Lin3UartReg;


typedef struct Stag_WDTA_Registers
{
    uint8        ucWDTE;                     

    uint8        ucdummy252[3];              

    uint8        ucEVAC;                     

    uint8        ucdummy253[3];              

    uint8        ucREF;                      

    uint8        ucdummy254[3];              

    uint8        ucMD;                       
}WDTAReg;

typedef struct STag_AdcConfigRegisters
{
    uint32       ulPWDVCR;                   

    uint8        ucdummy255[508];            

    uint32       ulPWDDIR;                   

    uint8        ucdummy256[8];              

    uint32       ulADHALTR;                  

    uint32       ulADCR;                     

    uint32       ulSGSTR;                    

    uint32       ulMPXCURR;                  

    uint8        ucdummy257[4];              

    uint32       ulTHSMPSTCR;                

    uint32       ulTHCR;                     

    uint32       ulTHAHLDSTCR;               

    uint32       ulTHBHLDSTCR;               

    uint32       ulTHACR;                    

    uint32       ulTHBCR;                    

    uint32       ulTHER;                     

    uint32       ulTHGSR;                    

    uint32       ulSFTCR;                    

    uint32       ulULLMTBR[3];               

    uint32       ulECR;                      

    uint32       ulULER;                     

    uint32       ulOWER;                     

    uint32       ulDGCTL0;                   

    uint32       ulDGCTL1;                   

    uint32       ulPDCTL1;                   

    uint32       ulPDCTL2;                   

    uint8        ucdummy258[32];             

    uint32       ulSMPCR;                    

    uint8        ucdummy259[388];            

    uint32       ulPWDSGCR;                  

    uint8        ucdummy260[12];             

    uint32       ulPWDSGSEFCR;               
}AdcConfReg;

typedef struct STag_DmaAddrRegs
{
    uint32       ulDSA;                      

    uint32       ulDDA;                      

    uint32       ulDTC;                      

    uint32       ulDTCT;                     

    uint32       ulDRSA;                     

    uint32       ulDRDA;                     

    uint32       ulDRTC;                     

    uint8        ucdummy261[4];              

    uint32       ulDCEN;                     

    uint32       ulDCST;                     

    uint32       ulDCSTS;                    

    uint32       ulDCSTC;                    

    uint32       ulDTFR;                     

    uint32       ulDTFRRQ;                   

    uint32       ulDTFRRQC;                  
}DmaReg;

typedef struct STag_DmaGlobalRegs
{

    uint32       ulDMACTL;                   

    uint8        ucdummy287[28];             

    uint32       ulDMACER;                   

    uint8        ucdummy288[12];             

    uint32       ulDM0CMV;                   
 
    uint32       ulDM1CMV;                   
 

    uint8        ucdummy289[4];              

    uint32       ulCMVC;                     
 

    uint8        ucdummy290[192];            

    uint32       ulDM00CM;                   

    uint32       ulDM01CM;                   

    uint32       ulDM02CM;                   

    uint32       ulDM03CM;                   

    uint32       ulDM04CM;                   

    uint32       ulDM05CM;                   

    uint32       ulDM06CM;                   

    uint32       ulDM07CM;                   

    uint32       ulDM10CM;                   

    uint32       ulDM11CM;                   

    uint32       ulDM12CM;                   

    uint32       ulDM13CM;                   

    uint32       ulDM14CM;                   

    uint32       ulDM15CM;                   

    uint32       ulDM16CM;                   

    uint32       ulDM17CM;                   

}DmaGlobalReg;
typedef struct STag_Adc_VirtualChReg
{
    uint32       ulVCR[50];                  

    uint8        ucdummy262[56];             

    uint16       usDR[50];                   

    uint8        ucdummy263[154];            

    uint32       ulDIR[50];                  
}AdcVirChReg;

typedef struct STag_Adc_ScanGroupReg
{
    uint32       ulSGSTCR;                   

    uint8        ucdummy264[4];              

    uint32       ulSGCR;                     

    uint32       ulSGVCSP;                   

    uint32       ulSGVCEP;                   

    uint32       ulSGMCYCR;                  

    uint32       ulSGSEFCR;                  

    uint32       ulSGTSEL;                   
}AdcSGReg;

typedef struct STag_Spi_MainReg
{
    uint8        ucCTL0;                     

    uint8        ucdummy280[3];              

    uint32       ulSTR0;                     

    uint16       usSTCR0;                    

    uint8        ucdummy265[6];              

    uint32       ulCTL1;                     

    uint16       usCTL2;                     
}SpiMainReg;

typedef struct STag_Spi_BRSReg
{
    uint16       usBRS;                      

    uint8        ucdummy[2];                 
}SpiBRSReg;

typedef struct STag_Spi_CSIHReg
{
    uint32       ulMCTL1;                    

    uint32       ulMCTL2;                    

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy281[2];              

    uint32       ulRX0W;                     

    uint16       usRX0H;                     

    uint8        ucdummy282[2];              

    uint32       ulMRWP0;                    

    uint8        ucdummy266[36];             

    uint16       usMCTL0;                    

    uint8        ucdummy283[2];              

    uint32       ulCFG[8];                   

    uint8        ucdummy267[4];              

    SpiBRSReg      stBRS[4];                 
}SpiCSIHReg;

typedef struct STag_Spi_ECCCSIHnTRC
{
    uint8         ucErdb;


    uint8         ucEcrd;

    uint8         ucHord;

    uint8         ucSynd;

}Spi_EccTrcReg;

typedef struct STag_Spi_CSIHECCReg
{
    uint16        usEccCTL;

    uint8         ucdummy[2];

    uint16        usEccTmc;

Spi_EccTrcReg stEccTrc;

    uint32        ulEccTed;

}SpiCSIHECCReg;

typedef struct STag_Spi_SELBREADTEST
{
    uint16        usSelfReadTest;

}SpiSelfReadTestReg;

typedef struct STag_Spi_CSIGReg
{
    uint8        ucBCTL0;                    

    uint8        ucdummy284[3];              

    uint32       ulTX0W;                     

    uint16       usTX0H;                     

    uint8        ucdummy285[2];              

    uint16       usRX0;                      

    uint8        ucdummy286[2];              

    uint32       ulCFG0;                     
}SpiCSIGReg;

typedef struct STag_Fls_Reg
{
    uint32       DCNT;                       

    uint32       DPCMD;                      

    uint32       DPS;                        
}FlsReg;

typedef struct STag_FEINTReg
{                                                          
    const uint32 F;                          
    uint32       FMSK;                       
    uint32       FC;                         
} FEINTReg;

typedef uint16       CANnTMIECReg;
typedef uint32       CANnRMNDReg;

typedef struct STag_Fcu_Registers
{
    uint8         ucReserved1[16];

    uint8         ucFASTAT;

    uint8         ucReserved2[31];

    uint32        ulFSADDR;

    uint32        ulFEADDR;

    uint8         ucReserved3[28];

    uint16        usFCURAME;

    uint8         ucReserved4[42];

    uint32        ulFSTATR;

    uint16        usFENTRYR;

    uint8         ucReserved5[78];

    uint8         ucFBCSTAT;

    uint8         ucReserved6[3];

    uint32        ulFPSADDR;

    uint8         ucReserved7[8];

    uint16        usFPCKAR;

}FlsFACIReg;


typedef struct STag_Fcu_ECCReg
{
    uint16        usDFECCCTL;

    uint8         ucReserved8[2];

    uint8         ucDFERSTR;

    uint8         ucReserved9[3];

    uint8         ucDFERSTC;

    uint8         ucReserved10[11];

    uint8         ucDFERRINT;

    uint8         ucReserved11[7];

    uint16        usDFTSTCTL;
}FlsECCReg;





 
 

 




 
 
 
 
 
 
 
 
 
 


 

 




















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
extern volatile WPROTReg* const Mcu_WriteProtReg_BaseAddress; 

 
extern volatile LVIReg* const LviReg_BaseAddress; 

 
 

 
extern volatile unsigned long * const Mcu_IoHoldRegister_BaseAddress;

 
extern volatile RESFReg * const Mcu_ResfRegister_BaseAddress;

 
extern volatile ClkMntrReg* const Clma0Reg_BaseAddress;

 
extern volatile ClkMntrReg* const Clma1Reg_BaseAddress;

 
extern volatile ClkMntrReg* const Clma2Reg_BaseAddress;

 
 

 
extern volatile STBC0Reg * const Mcu_Stbc0Register_BaseAddress;

 
extern volatile WUFReg* const WufReg_BaseAddress;
extern volatile WUFReg* const WufIsoReg_BaseAddress;

 
extern volatile FEINTReg* const FEIntMsk_BaseAddress;
 
 
 
 

 
 
extern volatile ClkCntlReg* const Mcu_ClkCtrlReg_BaseAddress;

 
extern volatile unsigned short* const Mcu_ICCWEND_IMRAddress; 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 


 




 


 

 




 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




 
 
 

 

 





 
 
 





























 

 

 

 

 

 

 

 



 




 



 










































 

 
 






 



 
 



 

 
 
 
 
typedef struct STag_Mcu_ClockSetting
{
   
  const void * pCkscSel;
  uint8 ucCkscSelOffset;
   
  uint32 ulPLLControlValue;
   
  uint32 ulMainOscStabTime;
   
  uint16 usFoutDivReg;
   
  uint8 ucSelectedSrcClock;
   
  uint8 ucMosccRegValue;
   
  uint8 ucSelectedSTPMK;
   
  uint8 ucNoOfIsoCkscReg;
   
  uint8 ucNoOfAwoCkscReg;
   
  uint8 ucNoOfPllIsoCkscReg;
   
  uint8 ucNoOfPllAwoCkscReg;
   
  uint8 ucCkscPllIndexOffset;
   
  uint8 ucPllSelectedSrcClock;
   
  boolean blPllActCheck;
   
  uint16 usCLMA0CMPL;
   
  uint16 usCLMA0CMPH;
   
  uint16 usCLMA1CMPL;
   
  uint16 usCLMA1CMPH;
   
  uint16 usCLMA2CMPL;
   
  uint16 usCLMA2CMPH;
} Mcu_ClockSetting;

 
 
typedef struct STag_Mcu_CkscSetting
{
   
  uint8 ucCkscSourceSelRegNum;
   
  uint8 ucCkscDividerSelRegNum;
   
  uint16 usCkscStpmskSelRegNum;
   
  uint8 ucCkscSourceSelRegValue;
   
  uint8 ucCkscDividerSelRegValue;
   
  uint8 ucCkscControlval;

} Mcu_CkscSetting;



 

 
typedef struct STag_Mcu_PortGroupAddress
{
   
  volatile uint32 * pPortGroupAddress;
} Mcu_PortGroupAddress;



 

 
 
 
typedef struct STag_Mcu_ModeSetting
{
   
  uint32 ulPowerDownWakeupType0;
   
  uint32 ulPowerDownWakeupTypeISO0;
   
   
  uint8 ucModeType;
   
  boolean blModeTransitionReq;
   
  boolean blMcuMainOscOperation;
} Mcu_ModeSetting;

 
 
 
typedef struct STag_Mcu_TAUJUnitUserRegs
{
  uint8  volatile ucTAUJnTS;
 
  uint8  volatile aaReserved1[3];
 
  uint8  volatile ucTAUJnTT;
} Mcu_TAUJUnitUserRegs;

 
 
typedef struct STag_Mcu_TAUJUnitOsRegs
{
  uint16 volatile usTAUJnTPS;
  uint16 volatile usReserved1;
  uint8  volatile ucTAUJnBRS;
} Mcu_TAUJUnitOsRegs;

 
 
typedef struct STag_Mcu_TAUJUserRegs
{
  uint32 volatile ulTAUJnCDRm;
 
  uint32 volatile aaReserved1[3];
 
} Mcu_TAUJChannelUserRegs;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 

 
 
extern const Mcu_CkscSetting Mcu_GstCkscSetting[];
 
 
 
extern const Mcu_ClockSetting Mcu_GstClockSetting[];
 
 
 
extern const Mcu_ModeSetting Mcu_GstModeSetting[];
 
 
 
extern const Mcu_PortGroupAddress
                     Mcu_GaaPortGroup[0x1U + 0x0U];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_8"




 
 



 
 
 
extern const uint8 Mcu_GaaClockOffset[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section sbss=".MCU_CFG_BURAM_NO_INIT_32"




 
 



 
 
 
 
extern uint32 Mcu_GaaRamPortGroup[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section sbss=default
     #pragma ghs endsda





 
 



 
 



 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 


 

















































 
 




 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 


 
 

 
 
 



















 




















 


















 
 


















 


 
 
 



















 
 



















 
 


















 
 


















 
 


















 
 

 
 


 




 



 



 
 


 



 
 

 
 
 
 
 
 
 
 
 
 
 
 



 



 



 

 
typedef enum ETag_Mcu_HWConsistencyCheckType
{
  MCU_HW_CONSIST_CHECK_STATIC,
  MCU_HW_CONSIST_CHECK_DYNAMIC
} Mcu_HWConsistencyCheckType;

typedef struct STag_Mcu_LPSRegMirror
{
  unsigned long ulSCTLR;                                 
  unsigned long ulDPSELR0;                               
  unsigned long ulDPSELRM;                               
  unsigned long ulDPSELRH;                               
  unsigned long ulDPDSR0;                                
  unsigned long ulDPDSRM;                                
  unsigned long ulDPDSRH;                                
  unsigned short usCNTVAL;                               
}Mcu_LPSRegMirror;

typedef struct STag_Mcu_ClkMntrReg0Mirror
  {
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg0Mirror;

typedef struct STag_Mcu_ClkMntrReg1Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg1Mirror;

typedef struct STag_Mcu_ClkMntrReg2Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg2Mirror;

typedef struct STag_Mcu_ClkMntrReg3Mirror
{
  unsigned char  ucCTL0;                                 
  unsigned short usCMPL;                                 
  unsigned short usCMPH;                                 
}Mcu_ClkMntrReg3Mirror;

typedef struct STag_Mcu_TAUJOsRegMirror
{
  unsigned short usTPS;                                  
  unsigned char ucBRS;                                   
}Mcu_TAUJOsRegMirror;

typedef struct STag_TAUJChRegMirror
{
  unsigned long ulCDR;                                   
  unsigned short usCMOR;                                 
}Mcu_TAUJChRegMirror;

typedef struct Stag_Mcu_ClkCntlRegMirror
{
  unsigned long ulROSCS;                                 
  unsigned long ulROSCSTPM;                              
  unsigned long ulMOSCE;                                 
  unsigned long ulMOSCC;                                 
  unsigned long ulMOSCST;                                
  unsigned long ulMOSCSTPM;                              
  unsigned long ulSOSCE;                                 
  unsigned long ulSOSCST;                                
  unsigned long ulCKSC_AWDTAD_CTL;                       
  unsigned long ulCKSC_AWDTAD_STPM;                      
  unsigned long ulCKSC_ATAUJS_CTL;                       
  unsigned long ulCKSC_ATAUJD_CTL;                       
  unsigned long ulCKSC_ATAUJD_STPM;                      
  unsigned long ulCKSC_ARTCAS_CTL;                       
  unsigned long ulCKSC_ARTCAD_CTL;                       
  unsigned long ulCKSC_ARTCAD_STPM;                      
  unsigned long ulCKSC_AADCAS_CTL;                       
  unsigned long ulCKSC_AADCAD_CTL;                       
  unsigned long ulCKSC_AADCAD_STPM;                      
  unsigned long ulCKSC_AFOUTS_CTL;                       
  unsigned long ulCKSC_AFOUTS_STPM;                      
  unsigned long ulFOUTDIV;                               
  unsigned long ulPLLE;                                  
  unsigned long ulPLLC;                                  
  unsigned long ulPLL0C;                                 
  unsigned long ulCKSC_CPUCLKS_CTL;                      
  unsigned long ulCKSC_PPLLCLKS_CTL;                     
  unsigned long ulCKSC_CPUCLKD_CTL;                      
  unsigned long ulCKSC_IPERI1S_CTL;                      
  unsigned long ulCKSC_IPERI2S_CTL;                      
  unsigned long ulCKSC_ILINS_CTL;                        
  unsigned long ulCKSC_IADCAS_CTL;                       
  unsigned long ulCKSC_IADCAD_CTL;                       
  unsigned long ulCKSC_PLL0IS_CTL;                       
  unsigned long ulCKSC_PLLIS_CTL;                        
  unsigned long ulCKSC_ILIND_CTL;                        
  unsigned long ulCKSC_ILIND_STPM;                       
  unsigned long ulCKSC_ICANS_CTL;                        
  unsigned long ulCKSC_ICANS_STPM;                       
  unsigned long ulCKSC_ICANOSCD_CTL;                     
  unsigned long ulCKSC_ICANOSCD_STPM;                    
  unsigned long ulCKSC_ICSIS_CTL;                        
  unsigned long ulCKSC_IIICS_CTL;                        
}Mcu_ClkCntlRegMirror;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"



 
 

 
extern const Mcu_ConfigType * Mcu_GpConfigPtr;

 
extern const Mcu_ClockSetting *
                                                             Mcu_GpClockSetting;

 
extern const Mcu_CkscSetting *
                                                             Mcu_GpCkscSetting;


 
extern Mcu_LPSRegMirror Mcu_GddLpsRegRamMirror;
extern Mcu_ClkMntrReg0Mirror Mcu_GddClkMntrReg0RamMirror;
extern Mcu_ClkMntrReg1Mirror Mcu_GddClkMntrReg1RamMirror;
extern Mcu_ClkMntrReg2Mirror Mcu_GddClkMntrReg2RamMirror;
extern Mcu_ClkMntrReg3Mirror Mcu_GddClkMntrReg3RamMirror;
extern Mcu_TAUJOsRegMirror Mcu_GddTaujOsRegRamMirror;
extern Mcu_TAUJChRegMirror Mcu_GddTaujChRegRamMirror;
extern Mcu_ClkCntlRegMirror Mcu_GddClkCntlRegRamMirror;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sbss=default
   #pragma ghs endsda

 
 
 



 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 




 
 
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_1BIT"



 
 

 
extern boolean Mcu_GblDriverStatus;
 
extern boolean Mcu_GblWakeUpPreparation;

extern boolean Mcu_GblResetFlag;

 
extern boolean Mcu_GblPllActCheck;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section sdata=default
   #pragma ghs endsda




 
 



 




 



 
 


 


 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 


 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 

 

 

 

 

 

 



 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 
 
 

 
 
 

 
 
 

 
 
 

 
 
 
 

 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"




 
 



 
 

extern void MCU_FEINT_ENTRY(void);
extern void MCU_FEINT_LEAVE(void);

extern  void Mcu_Init
(const Mcu_ConfigType * ConfigPtr);

extern  Std_ReturnType Mcu_InitRamSection
(Mcu_RamSectionType RamSection);

 

extern  Std_ReturnType Mcu_InitClock
(Mcu_ClockType ClockSetting);


 

extern  Std_ReturnType Mcu_DistributePllClock (void);


extern  Mcu_PllStatusType Mcu_GetPllStatus (void);

extern  Mcu_ResetType Mcu_GetResetReason (void);

extern  Mcu_RawResetType Mcu_GetResetRawValue (void);

 
extern  void Mcu_PerformReset (void);

extern  void Mcu_SetMode (Mcu_ModeType McuMode);
extern  void Mcu_WakeUpFactor_Preparation
                                               (Mcu_ModeType McuMode);
 
 
 
extern  void Mcu_GetVersionInfo
       (Std_VersionInfoType * versioninfo);
 


 




extern  Std_ReturnType Mcu_CheckHWConsistency(
                            const Mcu_HWConsistencyCheckType CheckType);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section text=default

 
 
 



 



 




 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"




 
 



 
 
 
 
 
extern const Mcu_ConfigType Mcu_GstConfiguration[];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 




















































 
 



 



 


 



 



 



 



 






 





 
 
   #pragma ghs section rosdata=default
   #pragma ghs endsda
 
 
 



 
 
 


 



 




 

 

 

 

 

 

 

 


 
 
 
typedef struct
{
    uint32 configConsistencyHash;               
 
    AppModeType defaultAppMode;                  
    EcuM_ShutdownTargetType defaultShutdownTgt;  
    EcuM_ShutdownModeType defaultShutdownMode;  
 
    const EcuM_GenBSWPbCfgType* modulePBCfg;     
} EcuM_ConfigType;


 
extern const uint32 EcuM_ConfigConsistencyHash;


 














 
 Std_ReturnType EcuM_GoDownHaltPoll(uint16 caller);











 
 void
EcuM_Init(void);










 
 void
EcuM_StartupTwo(void);











 
 void EcuM_Shutdown(void);










 
 void EcuM_SetState(EcuM_StateType state);
















 
 Std_ReturnType
EcuM_SelectShutdownTarget(EcuM_ShutdownTargetType shutdownTarget, EcuM_ShutdownModeType shutdownMode);



















 
 Std_ReturnType
EcuM_GetShutdownTarget(
    EcuM_ShutdownTargetType * shutdownTarget,
    EcuM_ShutdownModeType * shutdownMode);



















 
 Std_ReturnType
EcuM_GetLastShutdownTarget(
    EcuM_ShutdownTargetType * shutdownTarget,
    EcuM_ShutdownModeType * shutdownMode);












 
 Std_ReturnType EcuM_SelectShutdownCause(EcuM_ShutdownCauseType cause);












 
 Std_ReturnType
EcuM_GetShutdownCause(EcuM_ShutdownCauseType * shutdownCause);










 
 EcuM_WakeupSourceType EcuM_GetPendingWakeupEvents(void);










 
 void EcuM_ClearWakeupEvent(EcuM_WakeupSourceType sources);










 
 EcuM_WakeupSourceType EcuM_GetValidatedWakeupEvents(void);












 
 EcuM_WakeupSourceType EcuM_GetExpiredWakeupEvents(void);














 
   
 Std_ReturnType EcuM_SetRelWakeupAlarm(EcuM_UserType user, EcuM_TimeType time);
   
















 
   
 Std_ReturnType EcuM_SetAbsWakeupAlarm(EcuM_UserType user, EcuM_TimeType time);
   













 
 Std_ReturnType EcuM_AbortWakeupAlarm(EcuM_UserType user);












 
   
 Std_ReturnType EcuM_GetCurrentTime(EcuM_TimeType * time);
   














 
   
 Std_ReturnType EcuM_GetWakeupTime(EcuM_TimeType * time);
   














 
   
 Std_ReturnType EcuM_SetClock(EcuM_UserType user, EcuM_TimeType time);
   












 
 Std_ReturnType EcuM_SelectBootTarget(EcuM_BootTargetType target);











 
 Std_ReturnType EcuM_GetBootTarget(EcuM_BootTargetType * target);

 void
EcuM_AL_DriverInitBswM(uint8 drvInitIdx);












 












 


 












































 

 











































































 



 












 












 



 
 




















 
 



 



 
 



 

























































 


 











 
 




















 
 



 



 
 



 


 









































































 


 



 
 



 
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




 





 








extern uint8 EcuShutdownFlag;

void Communication_ON(void);

void Communication_OFF(void);

void BswM_AllowECU_Sleep(void);
void BswM_NotAllowECU_Sleep(void);

void BswM_CanTrcv_ModeShift(void);
void WakeupSource_Disable(void);
void WakeupSource_Enable(void);

void GenericSwitch_CanSmBusOff_NoCom_CanChannel_0(void);

void GenericSwitch_CanSmBusOff_BusOffSilent_CanChannel_0(void);


void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN(void);
void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_Local(void);

void BSW_User_Shutdown(void);

void BswM_EcuM_RequestRun(void);

void BswM_EcuM_ReleaseRun(void);

void BswM_EcuM_RequestPostRun(void);

void BswM_EcuM_ReleasePostRun(void);

void ECUMode_Normal_Notification(void);

void ECUNet_Repeat_Req(void);

void Act_Bsw_Allow_GoDown_Function(void);

void WakeupSource_Validated(void);

extern void BswM_WakeupSourcePending(void);
extern uint8 CAN_transceiver_OK;



 
 



 

 

 

 

 



 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 

 



































 
typedef uint8 BswM_TimerIdxType;

typedef uint8 BswM_EventRqstPortIdxType;

typedef uint8 BswM_RuleIndexType;

typedef uint8 BswM_ActionListIndexType;

typedef uint8 BswM_ComIpduGruType;

typedef uint8 BswM_ModeGroupType;



 



 
   
   
extern void User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN(void);
extern void Act_Bsw_Allow_GoDown_Function(void);
extern void WakeupSource_Validated(void);

   
 




















 
 




 



 



 



 

 


 
 
typedef enum
{
    BSWM_UNINITED,
    BSWM_INITED
} BswM_InitStatusType;

 
typedef enum
{
    BSWM_DEFERRED = 0u,
    BSWM_IMMEDIATE
} BswM_RqstPortProcessType;

 
typedef enum
{
    BSWM_FALSE = 0u,
    BSWM_TRUE,
    BSWM_UNDEFINED
} BswM_RuleStateType;

 
typedef enum
{
    BSWM_CONDITION = 0u,
    BSWM_TRIGGER
} BswM_ActionListExecutionType;

 
typedef enum
{
    BSWM_CLEAR_EVENT_REQST = 0,
    BSWM_COMM_ALLOW_COM,
    BSWM_COMM_MODE_LIMITATION,
    BSWM_COMM_MODE_SWITCH,
    BSWM_CORE_HALT_MODE,
    BSWM_DEADLINE_MONITOR_CONTROL,
    BSWM_ECUM_GO_DOWN_HALT_POLL,
    BSWM_ECUM_DRIVER_INIT_BSWM,
    BSWM_ECUM_SELECT_SHUTDOWN_TARGET,
    BSWM_ECUM_STATE_SWITCH,
    BSWM_ETHIF_SWITCH_PORT_GROUP,
    BSWM_FRSM_ALL_SLOTS,
    BSWM_J1939DCM_STATE_SWITCH,
    BSWM_J1939RM_STATE_SWITCH,
    BSWM_LIN_SCHEDULE_SWITCH,
    BSWM_NM_CONTROL,
    BSWM_PDU_GROUP_SWITCH,
    BSWM_PDU_ROUTER_CONTROL,
    BSWM_RTE_MODE_REQUEST,
    BSWM_RTE_START,
    BSWM_RTE_STOP,
    BSWM_RTE_SWITCH,
    BSWM_SCHM_SWITCH,
    BSWM_SD_CLIENT_SERVICE_MODE_REQUEST,
    BSWM_SD_CONSUMED_EVENT_GROUP_MODE_REQUEST,
    BSWM_SD_SERVER_SERVICE_MODE_REQUEST,
    BSWM_SWITCH_IPDU_MODE,
    BSWM_TIMER_CONTROL,
    BSWM_TRIGGER_IPDU_SEND,
    BSWM_USER_CALLOUT
} BswM_ActionEnumType;

 
typedef enum
{
    BSWM_ACTIONITEM_ACTION = 0u,
    BSWM_ACTIONITEM_ACTIONLIST,
    BSWM_ACTIONITEM_RULE
} BswM_ActionListItemEnumType;

 
typedef enum
{
    BSWM_TIMER_START = 0u,
    BSWM_TIMER_STOP,
    BSWM_TIMER_EXPIRED
} BswM_TimerEnumType;


 



 




 

 


 
 
 
 
 
 
 
 
 


 
typedef uint16 BswM_UserType;

 
typedef struct
{
    const BswM_RuleIndexType * belongToRlue;
    BswM_RuleIndexType belongToRlueNum;
    BswM_RqstPortProcessType process;
} BswM_RqstPortLcCfgType;

typedef struct
{
    const BswM_RqstPortLcCfgType * comMInitReset;

    const BswM_RqstPortLcCfgType * dcmAppUpdate;


    const BswM_RqstPortLcCfgType * nmWakeUpInd;
    const NetworkHandleType * nmWkChRef;


    const BswM_RqstPortLcCfgType * wdgMRqstParReset;
    const ApplicationType * wdgAppRef;

} BswM_EventRqstPortLCfgType;
typedef struct
{

    const BswM_RqstPortLcCfgType * cansmInd;
    const NetworkHandleType * cansmIndChRef;

    const BswM_RqstPortLcCfgType * comMInd;
    const NetworkHandleType * comMIndChRef;

    const BswM_RqstPortLcCfgType * dcmComModeRqst;
    const NetworkHandleType * dcmChRef;

    const BswM_RqstPortLcCfgType * ecuMState;
    const BswM_RqstPortLcCfgType * ecuMWkSrc;
    const EcuM_WakeupSourceType * ecuMWkSrcRef;
     
    const BswM_RqstPortLcCfgType * ecuMRqstIndSrc;
    const EcuM_StateType * ecuMRqstIndSrcRef;




    const BswM_RqstPortLcCfgType * genericRqst;
    const BswM_UserType * genRqstUserRef;








} BswM_ModeRqstPortLCfgType;

 
typedef struct
{
     
    BswM_RuleStateType (*modeArbitraFunc)(void);
     
    BswM_RuleStateType ruleInitState;
     
    boolean isNestExe;
     
    const BswM_ActionListIndexType * falseActList;
     
    const BswM_ActionListIndexType * trueActList;
} BswM_RuleLcCfgType;

typedef struct
{
    BswM_ActionEnumType avbActType;
    uint8 refActIdx;
} BswM_ActionType;

typedef struct
{
    const BswM_ActionListIndexType * actListRefIdx;  
    const BswM_RuleIndexType * ruleRefIdx;           
    const BswM_ActionType * avActType;               
} BswM_ActionListItemRefType;

 
typedef struct
{
    uint8 actionItemIdx;                                                 
    boolean abortOnFail;                                                 
    const uint8 * runtimeErrId;                    
    BswM_ActionListItemEnumType actionItemType;                          
    const BswM_ActionListItemRefType * actionRef;  
} BswM_ActionListItemType;

 
typedef struct
{
    BswM_ActionListExecutionType executeType;
     
    const uint8 * actListPrior;
     
    uint8 numOfActionItem;
    const BswM_ActionListItemType * actionItems;
} BswM_ActionListLCfgType;

 
 
typedef struct
{
    boolean comAllowed;
    NetworkHandleType channel;  
} BswM_ActionComMAllowComLCfgType;


 
typedef struct
{
    ComM_ModeType comMode;     
    ComM_UserHandleType user;  
} BswM_ActionComMModeSwitchLCfgType;




 
typedef struct
{
    const BswM_ComIpduGruType * enableRecDmGruId;
    BswM_ComIpduGruType numOfEnableRecDmGru;
    const BswM_ComIpduGruType * disableRecDmGruId;
    BswM_ComIpduGruType numOfDisableRecDmGru;
} BswM_ActionDMControlLCfgType;



 
typedef struct
{
    boolean initialize;  
    const BswM_ComIpduGruType * enableIpduGruId;
    BswM_ComIpduGruType numOfEnableIpduGru;
    const BswM_ComIpduGruType * disableIpduGruId;
    BswM_ComIpduGruType numOfDisableIpduGru;
} BswM_ActionPduGrpSwitchLCfgType;



 
typedef struct
{
    uint8 ecumDrvInitList;  
} BswM_ActionEcuMDrvInitLCfgType;

 
typedef struct
{
    uint16 goDownUser;  
} BswM_ActionEcuMGoDownLCfgType;


 
typedef struct
{
    EcuM_ShutdownTargetType ecuMState;  
} BswM_ActionEcuMStateSwitchLCfgType;






 
typedef enum
{
    BSWM_NM_DISABLE,
    BSWM_NM_ENABLE
} BswM_NmControlType;

typedef struct
{
    BswM_NmControlType action;    
    NetworkHandleType nmChannel;  
} BswM_ActionNMControlLCfgType;

 
 
typedef enum
{
    BSWM_PDUR_DISABLE,
    BSWM_PDUR_ENABLE
} BswM_PduRControlType;

typedef struct
{
    BswM_PduRControlType action;                       
    const boolean * initialize;  
    uint8 numOfPathGrp;
    const PduR_RoutingPathGroupIdType *
    ids;  
} BswM_ActionPduRCtrlLCfgType;








 
typedef struct
{
    void (*userCalloutFctPtr)(void);
} BswM_ActionUserCalloutLCfgType;

 
typedef struct
{

    const BswM_ActionComMAllowComLCfgType *
    comMAllowComActions;  


    const BswM_ActionComMModeSwitchLCfgType *
    comMModeSwitchActions;  


    const BswM_ActionDMControlLCfgType *
    dmCtrlActionLCfgs;  

    const BswM_ActionPduGrpSwitchLCfgType *
    pduGrpSwitchActionLCfgs;  



    const BswM_ActionEcuMDrvInitLCfgType *
    ecuMDrvInitListActions;  

    const BswM_ActionEcuMGoDownLCfgType *
    ecuMGoDownHaltPollActions;  


    const BswM_ActionEcuMStateSwitchLCfgType *
    ecuMStateSwitchActions;  






    const BswM_ActionNMControlLCfgType *
    nmControlActions;  

    const BswM_ActionPduRCtrlLCfgType *
    pdurCtrlActionLCfgs;  








    const BswM_ActionUserCalloutLCfgType *
    userCalloutActions;  
} BswM_ActionItemsLCfgType;

typedef struct
{
    BswM_RuleStateType ruleStatus;  
    boolean ruleNeedArbitrate;      
} BswM_RuleRunTimeType;

 
typedef struct
{
    const BswM_EventRqstPortLCfgType * evRqstLCfg;
    const BswM_ModeRqstPortLCfgType * modeRqstLCfg;
    BswM_RuleIndexType numOfRules;
    const BswM_RuleLcCfgType * ruleLCfg;
    BswM_RuleIndexType numOfDefRules;
    const BswM_RuleIndexType * defRuleRefLCfg;
    uint8 numOfActionList;
    const BswM_ActionListLCfgType * acListLCfg;
    const BswM_ActionItemsLCfgType * acItemsLCfg;
     
    BswM_RuleRunTimeType * ruleRutTimeStatus;
} BswM_PartitionLCfgType;

 
typedef struct
{
    const BswM_PartitionLCfgType * bswmPartLCfgs;
} BswM_LCfgType;




 
typedef struct
{
    uint8 reserved;
} BswM_ConfigType;


 

extern const BswM_LCfgType * const BswM_CoreLinkCfg;



 










 
 void
BswM_Init(const BswM_ConfigType * ConfigPtr);












 
 void BswM_Deinit(void);













 


 void
BswM_RequestMode(BswM_UserType requestingUser, uint16 requestedMode);






















 



 



 



 



 



 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   









 
extern void BswM_MainFunction(void);












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 






 
 
typedef struct
{
    const BswM_EventRqstPortIdxType * comMInitRstIdxPtr;

    const BswM_EventRqstPortIdxType * dcmAppUpdateIndIdxPtr;


     
    NetworkHandleType numOfNmWkCh;
    const BswM_EventRqstPortIdxType * nmWkEvPortIdxPtr;


    uint8 numOfWdgmRstEv;
    const BswM_EventRqstPortIdxType * wdgmRqstParRstEvIdxPtr;

} BswM_EvRqstPortPCCfgType;

 
typedef struct
{

    NetworkHandleType numOfCanSMInd;                            
    const CanSM_BswMCurrentStateType * canSMInitState;

    NetworkHandleType numOfComMInd;  
    const ComM_ModeType * comMInitMode;

    NetworkHandleType numOfDcmComModeReq;  
    const Dcm_CommunicationModeType * dcmInitMode;

    EcuM_WakeupSourceType numOfEcuMWakeupSource;  
    const EcuM_WakeupStatusType * ecumWkInitstate;
    uint8 numOfEcuMRunRqstSource;  
    const EcuM_RunStatusType * ecumRunRqstInitstate;




    BswM_UserType numOfGenericReq;  
    const uint16 * genRqstInitMode;








    BswM_TimerIdxType numOfBswMTimer;

} BswM_ModeRqstPortPCCfgType;

 
typedef struct
{

     
    CanSM_BswMCurrentStateType * canSMIndiStatus;

     
    ComM_ModeType * comMIndiStatus;

     
    Dcm_CommunicationModeType * dcmComModeReqStatus;

     
    EcuM_WakeupStatusType * ecuMWakeupSrcStatus;
     
    EcuM_RunStatusType * ecuMRunRqstStatus;




     
    uint16 * genericReqStatus;








    BswM_TimerEnumType * timerStatus;
    uint32 * timerCycle;
} BswM_ModeRqstPortRuntimeType;

 
typedef uint8 BswM_EventRquestPortRuntimeType;

 
typedef struct
{
    BswM_EventRqstPortIdxType evRqstSrcNum;
    const BswM_EvRqstPortPCCfgType * evRqstPCCfg;
    const BswM_ModeRqstPortPCCfgType * modeRqstPCCfg;
    BswM_EventRquestPortRuntimeType * eventRqstPortRunPtr;
    BswM_ModeRqstPortRuntimeType * modeRqstPortRunPtr;
    Com_IpduGroupVector * comRxDmIpduGroupVector;
    Com_IpduGroupVector * ipduGroupReinitVecotr;
    Com_IpduGroupVector * ipduGroupAllVecotr;
} BswM_PartitionPCCfgType;

 
typedef struct
{
    uint8 numOfPartitions;  
    const BswM_PartitionPCCfgType * bswmPartPCCfgs;
} BswM_PCCfgType;

 
typedef struct
{
    uint8 numOfPartitions;
    BswM_InitStatusType bswmInitState;
    const BswM_PartitionPCCfgType * bswmPartPCCfgs;
    const BswM_PartitionLCfgType * bswmPartLCfgs;
    EcuM_StateType ecumState;
} BswM_RuntimeStatusType;


 

extern const BswM_PCCfgType * const BswM_CorePCCfg;


 
extern volatile BswM_RuntimeStatusType BswM_RuntimeStatus;



 

 
 Std_ReturnType
BswM_ChkBswMInitStatus(uint8 sid);


 Std_ReturnType
BswM_DetChkCanSMInd(CanSM_BswMCurrentStateType CurrentState);


 Std_ReturnType
BswM_DetChkComMInd(ComM_ModeType RequestedMode);


 Std_ReturnType
BswM_DetChkComMInitRst(void);

 Std_ReturnType
BswM_DetChkDcmUpdate(void);

 Std_ReturnType
BswM_DetChkDcmModeCurState(Dcm_CommunicationModeType RequestedMode);

 Std_ReturnType
BswM_DetChkEcuMCurWakeUp(EcuM_WakeupStatusType state);

 Std_ReturnType
BswM_DetChkRequestedState(EcuM_StateType State, EcuM_RunStatusType CurrentStatus);

 Std_ReturnType
BswM_DetChkEcuMCurState(void);








 Std_ReturnType
BswM_DetChkNmCarWkUp(void);


 Std_ReturnType
BswM_DetChkGenericRqst(BswM_UserType requestingUser);


 Std_ReturnType
BswM_DetChkWgmParRst(void);

 
 boolean
BswM_GetPartitionIdx(ApplicationType * partitionIdx);


 

 
 CanSM_BswMCurrentStateType
BswM_GetCanSmIndStatus(NetworkHandleType cansmChIdx);

 
 void
BswM_InitCanSMRequestPorts(void);

 
 
 void
BswM_InitComMRequestPorts(void);

 
 BswM_EventRquestPortRuntimeType
BswM_GetComMResetInitStatus(void);


 
 ComM_ModeType
BswM_GetComMIndStatus(NetworkHandleType comChIdx);

 
 
 void
BswM_InitDcmRequestPorts(void);

 
 BswM_EventRquestPortRuntimeType
BswM_GetDcmAppUpdatedStatus(void);

 
 Dcm_CommunicationModeType
BswM_GetDcmCurModeStatus(NetworkHandleType dcmChIdx);

 
 
 void
BswM_InitEcuMRequestPorts(void);

 
 EcuM_WakeupStatusType
BswM_GetEcuMWakeSrcStatus(EcuM_WakeupSourceType wkSrcIdx);

 EcuM_RunStatusType
BswM_GetEcuMRunRqstStatus(EcuM_StateType rqstIdx);

 EcuM_StateType
BswM_GetEcuMState(void);






 
 
 void
BswM_InitGenericRequestPorts(void);

 
 uint16
BswM_GetGeneRqstStatus(BswM_UserType userIdx);






 
 
 BswM_EventRquestPortRuntimeType
BswM_GetNmWkInd(NetworkHandleType nmIdx);


 
 BswM_EventRquestPortRuntimeType
BswM_GetWgmParReset(uint8 wdgIdx);

 
 void BswM_InitBswMTimer(void);

 BswM_TimerEnumType BswM_GerTimerStatus(BswM_TimerIdxType timerIdx);

 
 void
BswM_ArbitrateRule(BswM_RuleIndexType ruleIdx, ApplicationType partIdx);

 

 
 Std_ReturnType
BswM_DoComMAllowCom(ApplicationType partIdx, uint8 actionIdx);


 
 Std_ReturnType
BswM_DoComMModeSwitch(ApplicationType partIdx, uint8 actionIdx);

 
 Std_ReturnType
BswM_DoEcuMGoDownHaltPoll(ApplicationType partIdx, uint8 actionIdx);

 
 Std_ReturnType
BswM_DoEcuMInitBswM(ApplicationType partIdx, uint8 actionIdx);


 
 Std_ReturnType
BswM_DoEcuMStateSwitch(ApplicationType partIdx, uint8 actionIdx);








 
 Std_ReturnType
BswM_DoNMControl(ApplicationType partIdx, uint8 actionIdx);

 
 Std_ReturnType
BswM_DoDMControl(ApplicationType partIdx, uint8 actionIdx);

 
 Std_ReturnType
BswM_DoPduGrpSwitch(ApplicationType partIdx, uint8 actionIdx);




 
 Std_ReturnType
BswM_DoPduRouterControl(ApplicationType partIdx, uint8 actionIdx);


 
 Std_ReturnType
BswM_DoUserCallout(ApplicationType partIdx, uint8 actionIdx);









 



 



 



 











 
 void
BswM_EcuM_CurrentWakeup(EcuM_WakeupSourceType source, EcuM_WakeupStatusType state);

 












 
 void
BswM_EcuM_RequestedState(EcuM_StateType State, EcuM_RunStatusType CurrentStatus);










 
 void
BswM_EcuM_CurrentState(EcuM_StateType CurrentState);



 



 



 



 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
 
 void
BswM_InitEcuMRequestPorts(void)
{
    const BswM_ModeRqstPortPCCfgType * modeRqstPCfgPtr;
    const BswM_ModeRqstPortRuntimeType * modeRqstPtr;
    ApplicationType partIdx;
    boolean result;
    EcuM_WakeupSourceType numOfEcuMWakeupSrc;
    EcuM_WakeupSourceType wkSrcIdx;

    uint8 numOfEcuMRunRqstSource;
    uint8 runRqstIdx;

    result = BswM_GetPartitionIdx(&partIdx);
    if ((boolean)1u == result)
    {
        modeRqstPCfgPtr = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPCCfg;
        modeRqstPtr = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPortRunPtr;
        numOfEcuMWakeupSrc = modeRqstPCfgPtr->numOfEcuMWakeupSource;
        for (wkSrcIdx = 0u; wkSrcIdx < numOfEcuMWakeupSrc; wkSrcIdx++)
        {
            if (((void *)0) != modeRqstPCfgPtr->ecumWkInitstate)
            {
                modeRqstPtr->ecuMWakeupSrcStatus[wkSrcIdx] = *(modeRqstPCfgPtr->ecumWkInitstate);
            }
            else
            {
                break;
            }
        }

        numOfEcuMRunRqstSource = modeRqstPCfgPtr->numOfEcuMRunRqstSource;
        for (runRqstIdx = 0u; runRqstIdx < numOfEcuMRunRqstSource; runRqstIdx++)
        {
            if (((void *)0) != modeRqstPCfgPtr->ecumRunRqstInitstate)
            {
                modeRqstPtr->ecuMRunRqstStatus[runRqstIdx] = *(modeRqstPCfgPtr->ecumRunRqstInitstate);
            }
            else
            {
                break;
            }
        }
    }
    else
    {
        (void)Det_ReportError(42, 0, 0, 0x08);
    }
}











 
 void
BswM_EcuM_CurrentWakeup(EcuM_WakeupSourceType source, EcuM_WakeupStatusType state)
{
    const BswM_ModeRqstPortPCCfgType * modeRqstPCfgPtr;
    const BswM_ModeRqstPortLCfgType * modeRqstLCfgPtr;
    const BswM_ModeRqstPortRuntimeType * modeRqstPtr;
    const BswM_RuleLcCfgType * ruleLCfgPtr;
    BswM_RuleIndexType numOfRules;
    BswM_RuleIndexType idx;
    BswM_RuleIndexType ruleIdx;
    ApplicationType partIdx;
    boolean result;
    EcuM_WakeupSourceType numOfWakeSrc;
    EcuM_WakeupSourceType wkSrcIdx;

    if ((Std_ReturnType)0U == BswM_DetChkEcuMCurWakeUp(state))
    {
        result = BswM_GetPartitionIdx(&partIdx);
        if ((boolean)1u == result)
        {
            modeRqstPCfgPtr = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPCCfg;
            modeRqstLCfgPtr = BswM_RuntimeStatus.bswmPartLCfgs[partIdx].modeRqstLCfg;
            numOfWakeSrc = modeRqstPCfgPtr->numOfEcuMWakeupSource;
            for (wkSrcIdx = 0u; wkSrcIdx < numOfWakeSrc; wkSrcIdx++)
            {
                if ((source & modeRqstLCfgPtr->ecuMWkSrcRef[wkSrcIdx]) != 0u)
                {
                    modeRqstPtr = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPortRunPtr;
                    modeRqstPtr->ecuMWakeupSrcStatus[wkSrcIdx] = state;
                    if (BSWM_IMMEDIATE == modeRqstLCfgPtr->ecuMWkSrc[wkSrcIdx].process)
                    {
                        numOfRules = modeRqstLCfgPtr->ecuMWkSrc[wkSrcIdx].belongToRlueNum;
                        ruleLCfgPtr = BswM_RuntimeStatus.bswmPartLCfgs[partIdx].ruleLCfg;
                        for (idx = 0u; idx < numOfRules; idx++)
                        {
                            ruleIdx = modeRqstLCfgPtr->ecuMWkSrc[wkSrcIdx].belongToRlue[idx];
                            if ((boolean)0u == ruleLCfgPtr[ruleIdx].isNestExe)
                            {
                                 
                                BswM_ArbitrateRule(ruleIdx, partIdx);
                            }
                        }
                    }
                    break;
                }
            }
        }
    }
}

 
 EcuM_WakeupStatusType
BswM_GetEcuMWakeSrcStatus(EcuM_WakeupSourceType wkSrcIdx)
{
    EcuM_WakeupStatusType wkStatus = (uint8)(0xffU);
    ApplicationType partIdx;
    boolean result;

    result = BswM_GetPartitionIdx(&partIdx);
    if ((boolean)1u == result)
    {
        wkStatus = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPortRunPtr->ecuMWakeupSrcStatus[wkSrcIdx];
    }
    return wkStatus;
}

 












 
 void
BswM_EcuM_RequestedState(EcuM_StateType State, EcuM_RunStatusType CurrentStatus)
{
    const BswM_ModeRqstPortPCCfgType * modeRqstPCfgPtr;
    const BswM_ModeRqstPortLCfgType * modeRqstLCfgPtr;
    const BswM_ModeRqstPortRuntimeType * modeRqstPtr;
    const BswM_RuleLcCfgType * ruleLCfgPtr;
    BswM_RuleIndexType numOfRules;
    BswM_RuleIndexType idx;
    BswM_RuleIndexType ruleIdx;
    ApplicationType partIdx;
    boolean result;
    uint8 numOfEcuMRunRqstSource;
    uint8 runRqstIdx;

    if ((Std_ReturnType)0U == BswM_DetChkRequestedState(State, CurrentStatus))
    {
        result = BswM_GetPartitionIdx(&partIdx);
        if ((boolean)1u == result)
        {
            modeRqstPCfgPtr = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPCCfg;
            modeRqstLCfgPtr = BswM_RuntimeStatus.bswmPartLCfgs[partIdx].modeRqstLCfg;
            numOfEcuMRunRqstSource = modeRqstPCfgPtr->numOfEcuMRunRqstSource;
            for (runRqstIdx = 0u; runRqstIdx < numOfEcuMRunRqstSource; runRqstIdx++)
            {
                if (State == modeRqstLCfgPtr->ecuMRqstIndSrcRef[runRqstIdx])
                {
                    modeRqstPtr = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPortRunPtr;
                    modeRqstPtr->ecuMRunRqstStatus[runRqstIdx] = CurrentStatus;
                    if (BSWM_IMMEDIATE == modeRqstLCfgPtr->ecuMRqstIndSrc[runRqstIdx].process)
                    {
                        numOfRules = modeRqstLCfgPtr->ecuMRqstIndSrc[runRqstIdx].belongToRlueNum;
                        ruleLCfgPtr = BswM_RuntimeStatus.bswmPartLCfgs[partIdx].ruleLCfg;
                        for (idx = 0u; idx < numOfRules; idx++)
                        {
                            ruleIdx = modeRqstLCfgPtr->ecuMRqstIndSrc[runRqstIdx].belongToRlue[idx];
                            if ((boolean)0u == ruleLCfgPtr[ruleIdx].isNestExe)
                            {
                                 
                                BswM_ArbitrateRule(ruleIdx, partIdx);
                            }
                        }
                    }
                }
            }
        }
    }
}

 EcuM_RunStatusType
BswM_GetEcuMRunRqstStatus(EcuM_StateType rqstIdx)
{
    EcuM_RunStatusType rqstStatus = (uint8)(0xffU);
    ApplicationType partIdx;
    boolean result;

    result = BswM_GetPartitionIdx(&partIdx);
    if ((boolean)1u == result)
    {
        rqstStatus = BswM_RuntimeStatus.bswmPartPCCfgs[partIdx].modeRqstPortRunPtr->ecuMRunRqstStatus[rqstIdx];
    }
    return rqstStatus;
}









 
 void
BswM_EcuM_CurrentState(EcuM_StateType CurrentState)
{
    const BswM_ModeRqstPortLCfgType * modeRqstLCfgPtr;
    const BswM_RuleLcCfgType * ruleLCfgPtr;
    BswM_RuleIndexType numOfRules;
    BswM_RuleIndexType idx;
    BswM_RuleIndexType ruleIdx;
    ApplicationType partIdx;
    boolean result;

    if ((Std_ReturnType)0U == BswM_DetChkEcuMCurState())
    {
        result = BswM_GetPartitionIdx(&partIdx);
        if ((boolean)1u == result)
        {
            BswM_RuntimeStatus.ecumState = CurrentState;
            modeRqstLCfgPtr = BswM_RuntimeStatus.bswmPartLCfgs[partIdx].modeRqstLCfg;
            if (BSWM_IMMEDIATE == modeRqstLCfgPtr->ecuMState->process)
            {
                numOfRules = modeRqstLCfgPtr->ecuMState->belongToRlueNum;
                ruleLCfgPtr = BswM_RuntimeStatus.bswmPartLCfgs[partIdx].ruleLCfg;
                for (idx = 0u; idx < numOfRules; idx++)
                {
                    ruleIdx = modeRqstLCfgPtr->ecuMState->belongToRlue[idx];
                    if ((boolean)0u == ruleLCfgPtr[ruleIdx].isNestExe)
                    {
                         
                        BswM_ArbitrateRule(ruleIdx, partIdx);
                    }
                }
            }
        }
    }
}

 EcuM_StateType
BswM_GetEcuMState(void)
{
    return BswM_RuntimeStatus.ecumState;
}













 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   


 

