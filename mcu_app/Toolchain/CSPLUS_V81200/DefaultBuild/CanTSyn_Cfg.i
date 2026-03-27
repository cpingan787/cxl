 




















 
 



 












 












 














 



 




 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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
 




















 
 




 




 










 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static const CanTSyn_DataIDListElementType CanTSyn_GlobalTimeSyncDataIDList[1][16] =
{
    {
         {0, 0},
         {1, 1},
         {2, 2},
         {3, 3},
         {4, 4},
         {5, 5},
         {6, 6},
         {7, 7},
         {8, 8},
         {9, 9},
         {10, 10},
         {11, 11},
         {12, 12},
         {13, 13},
         {14, 14},
         {15, 15}
    }

};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static const CanTSyn_DataIDListElementType CanTSyn_GlobalTimeFupDataIDList[1][16] =
{
    {
        {0, 15},
        {1, 14},
        {2, 13},
        {3, 12},
        {4, 11},
        {5, 10},
        {6, 9},
        {7, 8},
        {8, 7},
        {9, 6},
        {10, 5},
        {11, 4},
        {12, 3},
        {13, 2},
        {14, 1},
        {15, 0}
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static const CanTSynGlobalTimeSlaveType CanTSyn_GlobalTimeSlave[1] =
{
    {

        2000,  
        1,  
        CRC_IGNORED,  
        0u  
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
static const CanTSyn_GlobalTimeDomainType CanTSyn_GlobalTimeDomain[1U] =
{
    {
        0,  
        0u,  
        0U,  
        CanTSyn_GlobalTimeSyncDataIDList[0],
        CanTSyn_GlobalTimeFupDataIDList[0],
        ((void *)0),
        ((void *)0),
        ((void *)0),
        &CanTSyn_GlobalTimeSlave[0]
    }
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section





 

 
   
const CanTSyn_ConfigType CanTSyn_config =
{
    CanTSyn_GlobalTimeDomain,
};












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   
