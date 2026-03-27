 




















 
 



 
 




















 
 




 




 








 

 














 



 


 

 




 



 

 

 

 



 




 




 





 

 

 

 

 




 


 

 

 

 



 

 



 

 

 

 

 

 






 



 

 

 




 



 
 

 

 

 
 

 
 

 

 

 

 



 




 



 

 

 

 

 

 

 

 

 

 



 



 













 












 




 
 




















 
 

 




 



 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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

 




















 
 



extern Std_ReturnType  Rte_ReadData_0112( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_E101( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_010B( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_E010( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_D002( uint8* Buffer );
extern Std_ReturnType  Rte_ReadData_BE80( uint8* Buffer );


   


 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   
static Std_ReturnType DemReadOccctr(uint8* Buffer)
{
    *Buffer = DemInternalData.Occctr;
    return 0U;
}
static Std_ReturnType DemReadAgingUpCnt(uint8* Buffer)
{
    *Buffer = DemInternalData.AgingUpCnt;
    return 0U;
}
static Std_ReturnType DemReadFaultPendingCounter(uint8* Buffer)
{
    *Buffer = DemInternalData.FaultPendingCounter;
    return 0U;
}
static Std_ReturnType DemReadAgedCounter(uint8* Buffer)
{
    *Buffer = DemInternalData.AgedCounter;
    return 0U;
}












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const DemDataElementClassTypes DemDataElementClass[10] =
{
    {
        0u,
        1u, 
        Rte_ReadData_0112, 
    },
    {
        0u,
        3u, 
        Rte_ReadData_E101, 
    },
    {
        0u,
        6u, 
        Rte_ReadData_010B, 
    },
    {
        0u,
        2u, 
        Rte_ReadData_E010, 
    },
    {
        0u,
        1u, 
        Rte_ReadData_D002, 
    },
    {
        0u,
        7u, 
        Rte_ReadData_BE80, 
    },
    {
        1u,
        1u, 
        DemReadAgingUpCnt, 
    },
    {
        1u,
        1u, 
        DemReadOccctr, 
    },
    {
        1u,
        1u, 
        DemReadAgedCounter, 
    },
    {
        1u,
        1u, 
        DemReadFaultPendingCounter, 
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static const Dem_OperationCycleType DemOperationCycle[1u] =
{
    {  
        0u,
        1u,
        0u
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
const uint8 DemEnableCondition[(((4u) + 7u) >> 3u)] =
{
    0xfu,

};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
const uint8 DemEnableConditionGroup[3u][(((4u) + 7u) >> 3u)] =
{
    {0xbu,},
    {0xfu,},
    {0x8u,}
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
const Dem_DidClassType DemDidClass[6u] =
{
    {  
        0x112u,
        0u,
        1u,
        1u,
    },
    {  
        0xe101u,
        1u,
        1u,
        3u,
    },
    {  
        0x10bu,
        2u,
        1u,
        6u,
    },
    {  
        0xe010u,
        3u,
        1u,
        2u,
    },
    {  
        0xd002u,
        4u,
        1u,
        1u,
    },
    {  
        0xbe80u,
        5u,
        1u,
        7u,
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const uint16 DemDidClassRef[6u] =
{
     
    0x0u,
    0x1u,
    0x2u,
    0x3u,
    0x4u,
     
    0x5u
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const Dem_FreezeFrameClassType DemFreezeFrameClass[2u] =
{
    {  
        13u,
        0u,
        5u
    },
    {  
        7u,
        5u,
        1u
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
const Dem_FreezeFrameRecordClassType DemFreezeFrameRecordClass[1u] =
{
    {  
        2u,                        
        0x05u,    
        0u        
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const uint8 DemFreezeFrameRecordClassRef[1u] =
{
     
    0x0u
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const Dem_FreezeFrameRecNumClassType DemFreezeFrameRecNumClass[1u] =
{
    {  
        0u,
        1u,
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
const Dem_ExtendedDataRecordClassType DemExtendedDataRecordClass[4u] =
{
    {  
        0x4u,
        0x00u, 
        1u, 
        6u, 
        1u, 
        1u,
    },
    {  
        0x1u,
        0x00u, 
        1u, 
        7u, 
        1u, 
        1u,
    },
    {  
        0x3u,
        0x00u, 
        1u, 
        8u, 
        1u, 
        1u,
    },
    {  
        0x2u,
        0x00u, 
        1u, 
        9u, 
        1u, 
        1u,
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const uint8 DemExtendedDataRecordClassRef[4u] =
{
     
    0x1u,
    0x3u,
    0x2u,
    0x0u
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const Dem_ExtendedDataClassType DemExtendedDataClass[1u] =
{
    {  
        0u,
        4u
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static const Dem_EventIdType DemDTCMapping[59] =
{
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51,
    52,
    53,
    54,
    55,
    56,
    57,
    58,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static const Dem_DTCType DemDTC[59u] =
{
    {  
        0x951171u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        0,
    },
    {  
        0x951512u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        1,
    },
    {  
        0x952111u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        2,
    },
    {  
        0x952113u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        3,
    },
    {  
        0x953111u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        4,
    },
    {  
        0x953113u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        5,
    },
    {  
        0x953311u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        6,
    },
    {  
        0x953312u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        7,
    },
    {  
        0x953313u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        8,
    },
    {  
        0x953411u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        9,
    },
    {  
        0x953412u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        10,
    },
    {  
        0x953413u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        11,
    },
    {  
        0x953512u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        12,
    },
    {  
        0x954100u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        13,
    },
    {  
        0x954200u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        14,
    },
    {  
        0x955011u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        15,
    },
    {  
        0x955013u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        16,
    },
    {  
        0x955016u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        17,
    },
    {  
        0x955017u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        18,
    },
    {  
        0x955201u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        19,
    },
    {  
        0x957111u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        20,
    },
    {  
        0x957113u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        21,
    },
    {  
        0x95a011u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        22,
    },
    {  
        0x95a013u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        23,
    },
    {  
        0x95a111u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        24,
    },
    {  
        0x95a113u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        25,
    },
    {  
        0x95a211u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        26,
    },
    {  
        0x95a213u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        27,
    },
    {  
        0x95a311u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        28,
    },
    {  
        0x95a313u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        29,
    },
    {  
        0x95a411u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        30,
    },
    {  
        0x95a413u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        31,
    },
    {  
        0x95a511u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        32,
    },
    {  
        0x95a513u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        33,
    },
    {  
        0x95a711u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        34,
    },
    {  
        0x95a713u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        35,
    },
    {  
        0x95a809u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        36,
    },
    {  
        0x95a909u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        37,
    },
    {  
        0x95aa09u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        38,
    },
    {  
        0x95ad09u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        39,
    },
    {  
        0x95ae09u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        40,
    },
    {  
        0xc07388u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        41,
    },
    {  
        0xc07488u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        42,
    },
    {  
        0xc14687u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        43,
    },
    {  
        0xd56217u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        44,
    },
    {  
        0xd56316u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        45,
    },
    {  
        0xd60087u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        46,
    },
    {  
        0xe00142u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        47,
    },
    {  
        0xe00444u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        48,
    },
    {  
        0xe26200u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        49,
    },
    {  
        0xe28000u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        50,
    },
    {  
        0xe28200u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        51,
    },
    {  
        0xe29887u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        52,
    },
    {  
        0xe298f0u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        53,
    },
    {  
        0xe298f1u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        54,
    },
    {  
        0xe2a287u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        55,
    },
    {  
        0xe2a2f0u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        56,
    },
    {  
        0xe2a2f1u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        57,
    },
    {  
        0x951511u,  
        0u,  
        0xFFFFu,  
        0x01u,
        0xffu,  
        0x40u,  
        0xFFu,  
        0u, 
        1,
        58,
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
 
static const Dem_DTCAttributesType DemDTCAttributes[1u] =
{
    {  
        1u,  
        0u,  
        40u,  
        0u,  
        0u,  
        0u,  
        0u,  
        0u,  
        1u,  
        0u,  
        1u,  
        { 0u},  
        0xFFu, 
        0xFFu, 
        0xFFu, 
        0xFFu, 
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const Dem_IndicatorAttributeType DemIndicatorAttribute[59u] =
{
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
    {  
        0u,  
        0u,  
        0u,  
        0x02u,  
    },
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dem_DebounceCounterBasedClassType DemDebounceCounterBasedClass[1u] =
{
    {  
        128u,  
        13u,  
        0,  
        0,  
        127,  
        -128,  
        0u,  
        1u,  
        0u,  
        1u,  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
static const Dem_EventParameterType DemEventParameter[59u] =
{
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        0u,  
        0u,  
        0u,  
        0u,  
        0u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        1u,  
        0u,  
        1u,  
        0u,  
        1u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        2u,  
        0u,  
        2u,  
        0u,  
        2u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        3u,  
        0u,  
        3u,  
        0u,  
        3u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        4u,  
        0u,  
        4u,  
        0u,  
        4u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        5u,  
        0u,  
        5u,  
        0u,  
        5u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        6u,  
        0u,  
        6u,  
        0u,  
        6u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        7u,  
        0u,  
        7u,  
        0u,  
        7u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        8u,  
        0u,  
        8u,  
        0u,  
        8u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        9u,  
        0u,  
        9u,  
        0u,  
        9u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        10u,  
        0u,  
        10u,  
        0u,  
        10u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        11u,  
        0u,  
        11u,  
        0u,  
        11u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        12u,  
        0u,  
        12u,  
        0u,  
        12u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        13u,  
        0u,  
        13u,  
        0u,  
        13u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        14u,  
        0u,  
        14u,  
        0u,  
        14u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        15u,  
        0u,  
        15u,  
        0u,  
        15u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        16u,  
        0u,  
        16u,  
        0u,  
        16u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        17u,  
        0u,  
        17u,  
        0u,  
        17u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        18u,  
        0u,  
        18u,  
        0u,  
        18u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        19u,  
        0u,  
        19u,  
        0u,  
        19u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        20u,  
        0u,  
        20u,  
        0u,  
        20u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        21u,  
        0u,  
        21u,  
        0u,  
        21u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        22u,  
        0u,  
        22u,  
        0u,  
        22u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        23u,  
        0u,  
        23u,  
        0u,  
        23u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        24u,  
        0u,  
        24u,  
        0u,  
        24u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        25u,  
        0u,  
        25u,  
        0u,  
        25u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        26u,  
        0u,  
        26u,  
        0u,  
        26u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        27u,  
        0u,  
        27u,  
        0u,  
        27u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        28u,  
        0u,  
        28u,  
        0u,  
        28u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        29u,  
        0u,  
        29u,  
        0u,  
        29u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        30u,  
        0u,  
        30u,  
        0u,  
        30u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        31u,  
        0u,  
        31u,  
        0u,  
        31u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        32u,  
        0u,  
        32u,  
        0u,  
        32u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        33u,  
        0u,  
        33u,  
        0u,  
        33u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        34u,  
        0u,  
        34u,  
        0u,  
        34u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        35u,  
        0u,  
        35u,  
        0u,  
        35u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        36u,  
        0u,  
        36u,  
        0u,  
        36u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        37u,  
        0u,  
        37u,  
        0u,  
        37u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        38u,  
        0u,  
        38u,  
        0u,  
        38u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        39u,  
        0u,  
        39u,  
        0u,  
        39u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        40u,  
        0u,  
        40u,  
        0u,  
        40u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        41u,  
        0u,  
        41u,  
        0u,  
        41u,  
        1u,  
        0u, 
        1u, 
        0u,   
        0u,  
        0u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        42u,  
        0u,  
        42u,  
        0u,  
        42u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        43u,  
        0u,  
        43u,  
        0u,  
        43u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        44u,  
        0u,  
        44u,  
        0u,  
        44u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        2u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        45u,  
        0u,  
        45u,  
        0u,  
        45u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        2u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        46u,  
        0u,  
        46u,  
        0u,  
        46u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        47u,  
        0u,  
        47u,  
        0u,  
        47u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        48u,  
        0u,  
        48u,  
        0u,  
        48u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        49u,  
        0u,  
        49u,  
        0u,  
        49u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        50u,  
        0u,  
        50u,  
        0u,  
        50u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        51u,  
        0u,  
        51u,  
        0u,  
        51u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        52u,  
        0u,  
        52u,  
        0u,  
        52u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        53u,  
        0u,  
        53u,  
        0u,  
        53u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        54u,  
        0u,  
        54u,  
        0u,  
        54u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        55u,  
        0u,  
        55u,  
        0u,  
        55u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        56u,  
        0u,  
        56u,  
        0u,  
        56u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        57u,  
        0u,  
        57u,  
        0u,  
        57u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        1u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    },
    {   
        ((void *)0),   
        ((void *)0),   
        ((void *)0),  
        0u,  
        0u,  
        58u,  
        0u,  
        58u,  
        0u,  
        58u,  
        1u,  
        0u, 
        1u, 
        0u,   
        1u,  
        1u,  
        0u,  
        0u,  
        0xFFu,  
        0xFFFFu,   
        0xffu, 
        0xFFFFu, 
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   



 



 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const Dem_ConfigType DemPbCfg =
{
    ((void *)0),
    DemDTC,
    ((void *)0),
    59u,
    DemDTCAttributes,
    DemDebounceCounterBasedClass,
    ((void *)0),
    ((void *)0),
    DemEventParameter,
    59u,
    ((void *)0),
    ((void *)0),
    ((void *)0),
    DemOperationCycle,
    1u,
    ((void *)0),
    DemDataElementClass,
    DemDTCMapping,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
    #pragma section





 

 
   


 

