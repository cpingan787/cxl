
























 
 
   
   
   
   
   
   
   
   
   
   
    
    
   
   
   
   
   
   
   


 



 



























 
   
   


 

























 
 

































































































































































































































 


 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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



 



 

 

 

 



 



 



 



 
 
Std_ReturnType Rte_Start (void);
Std_ReturnType Rte_Stop (void);


























 

 




























 


 

























 


 




























 


 




























 


 

 


 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 


 



 



 



 
   



 



 



 



 



 



 



 



 
 



 
   
 



 



 



 
   



 
   
 



 
 



 



 



 



 



 


 




























 

 


 
 



 



 



 



 


 

























 
 

 

























 


 

 
 

  
  
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


 

 

 

 

 

 

 

 



 
   
 





























 


 

























 


 

 

 

 

 

 

 
extern const Os_AlarmCfgType Os_AlarmCfg[(5U)];
extern Os_ACBType* const Os_ACB[(5U)];
extern const Os_AlarmIndexType Os_AlarmIdRange[(1U)];



 

 


 


 
   
 


 





 
extern void Os_InitAlarm(void);








 
extern void Os_WorkAlarm(Os_CounterType counterId);








 
extern StatusType Os_CancelAlarm(AlarmType alarmId);


 




























 


 

























 


 

 

 

 

 

 
extern const Os_StackType* const Os_SystemStack_Inf[(1U)];
extern Os_TCBType* const Os_TCB[(7U)];
extern const Os_TaskType Os_TASK_IDLE_Inf[(1U)];
extern const uint16 Os_CfgPriorityMax_Inf[(1U)];
extern const Os_TaskPropertyType Os_TaskIdRange[(1U)];
extern const Os_TaskCfgType Os_TaskCfg[(7U)];
extern const Os_StackType Os_TaskStack[(7U)];

 
   


 
extern void Os_TaskEntry_OsTask_Init(void);
extern void Os_TaskEntry_OsTask_1ms(void);
extern void Os_TaskEntry_OsTask_5ms(void);
extern void Os_TaskEntry_OsTask_10ms(void);
extern void Os_TaskEntry_OsTask_50ms(void);
extern void Os_TaskEntry_OsTask_100ms(void);
 
   
extern void IdleHook_Core0(void);
 
 


 


 







 
   
 







 







 
   
 

 





 
extern void Os_InitTask(void);







 
extern void Os_SwitchTask(Os_CoreIdType coreId);








 
extern StatusType Os_ActivateTask(TaskType taskId);







 
extern void Os_SetTaskToReady(TaskType taskId);







 
extern void Os_UpdateHighPrioTask(Os_SCBType *pScb);


 




























 


 

























 


 

 

 

 

 

 

 

 
extern const Os_CounterCfgType Os_CounterCfg[(1U)];
   
extern Os_CCBType* const Os_CCB[(1U)];
 
extern const Os_CounterRangeType Os_CounterRange[(1U)];



 
extern void Os_ArchSystemTimerCore0(void);


 


 
   
 

 





 
extern void Os_InitCounter(void);










 
extern Os_TickType Os_CalcAbsTicks(
    Os_TickType baseTick,
    Os_TickType offset,
    Os_CounterType counterId);










 
extern Os_TickType Os_GetDistance(
    Os_TickType baseTick,
    Os_TickType destTick,
    Os_CounterType counterId);







 
extern void Os_IncrementHardCounter(CounterType counterId);


 




























 


 

























 


 

 

 

 

 

 

 

 
extern const uint16 Os_CfgIsrMax_Inf[(1U)];
extern const uint16 Os_CfgIsr2Max_Inf[(1U)];
extern const Os_IsrPropertyType Os_IsrIdRange[(1U)];
extern const Os_StackType Os_ISR2Stack[(28U)];
extern const Os_IsrCfgType Os_IsrCfg[(28U)];
extern const Os_IPLType Os_CfgIsr2ExcludeTplMax_Inf[(1U)];
extern Os_ICBType* const Os_ICB[(28U)];
extern Os_IsrType* const Os_SysIsrNestQueue_Inf[(1U)];

   


 
extern void ISR_RCAN1ERR_IRQ_Handler(void);
extern void ISR_RCAN1TRX_IRQ_Handler(void);
extern void ISR_RCANGRECC0_IRQ_Handler(void);
extern void ISR_ADCA0I1_IRQ_Handler(void);
extern void ISR_ADCA1I1_IRQ_Handler(void);
extern void ISR_TAUJ0I0_IRQ_Handler(void);
extern void ISR_TAUD0I9_IRQ_Handler(void);
extern void ISR_TAUB0I12_IRQ_Handler(void);
extern void ISR_TAUB0I8_IRQ_Handler(void);
extern void ISR_TAUB0I9_IRQ_Handler(void);
extern void ISR_P1_IRQ_Handler(void);
extern void ISR_P2_IRQ_Handler(void);
extern void ISR_P5_IRQ_Handler(void);
extern void ISR_P6_IRQ_Handler(void);
extern void ISR_P7_IRQ_Handler(void);
extern void ISR_P9_IRQ_Handler(void);
extern void ISR_P14_IRQ_Handler(void);
extern void ISR_RLIN34TX0_IRQ_Handler(void);
extern void ISR_RLIN34RX1_IRQ_Handler(void);
extern void ISR_RLIN34ERR2_IRQ_Handler(void);
extern void ISR_RLIN35TX0_IRQ_Handler(void);
extern void ISR_RLIN35RX1_IRQ_Handler(void);
extern void ISR_RLIN35ERR2_IRQ_Handler(void);
extern void ISR_RIIC0TI_IRQ_Handler(void);
extern void ISR_RIIC0EE_IRQ_Handler(void);
extern void ISR_RIIC0RI_IRQ_Handler(void);
extern void ISR_RIIC0TEI_IRQ_Handler(void);
 


 


 
   
 






 
   
 

 





 
extern void Os_InitInterrupt(void);







 
extern void Os_EnableAllInterrupts(Os_SCBType *pScb);







 
extern void Os_SuspendAllInterrupts(Os_SCBType *pScb);







 
extern void Os_SuspendOSInterrupts(Os_SCBType *pScb);







 
extern void Os_ResumeAllInterrupts(Os_SCBType *pScb);







 
extern void Os_ResumeOSInterrupts(Os_SCBType *pScb);







 
extern void Os_DisableIntSourceInApp(const Os_ApplicationCfgType *posCurAppCfg, boolean *intSourceFlag);







 
extern void Os_ResumeIntSourceInApp(const Os_ApplicationCfgType *posCurAppCfg, const boolean *intSourceFlag);







 
extern void Os_EnterISR1(Os_IsrType isrId);







 
extern void Os_ExitISR1(Os_IsrType isrId);







 
extern void Os_EnterISR2(Os_IsrType isrId);







 
extern void Os_ExitISR2(Os_IsrType isrId);









 
extern Os_IPLType Os_PrioToIpl(const Os_SCBType *pScb, Os_PriorityType prio);









 
extern Os_PriorityType Os_IplToPrio(const Os_SCBType *pScb, Os_IPLType ipl);


 




























 


 

























 


 

 

 

 

 

 

 

 



 


 







 
   
 

 


 

 






 
   
 

 


 
 

 
   
 


 



























 



























 
   
   
   
   


 

























 
   


 



 



 
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


































 

   


 


 



 

 







































 
   
   
   


























 












 
extern void SchM_Enter_CanIf_ExclusiveArea_Channel(void);
extern void SchM_Exit_CanIf_ExclusiveArea_Channel(void);






































 
   
   
   


























 










extern void CanNm_MainFunction(void);



 
extern void SchM_Enter_CanNm_Context(void);
extern void SchM_Exit_CanNm_Context(void);
 
extern void SchM_Enter_CanNm_PnEiraCalc(void);
extern void SchM_Exit_CanNm_PnEiraCalc(void);





































 
   
   
   


























 










extern void CanSM_MainFunction(void);


 
extern void SchM_Enter_CanSM_Context(void);
extern void SchM_Exit_CanSM_Context(void);






































 
   
   
   


























 










extern void CanTp_MainFunction(void);


 
extern void SchM_Enter_CanTp_ExclusiveArea(void);
extern void SchM_Exit_CanTp_ExclusiveArea(void);








































 
   
   
   


























 










extern void ComM_MainFunction_ComMChannel_0(void);


 
extern void SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0(void);
extern void SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0(void);
 
extern void SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_1(void);
extern void SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_1(void);






































 
   
   
   


























 










extern void Com_MainFunctionRx_ComMainFunctionRx(void);
extern void Com_MainFunctionTx_ComMainFunctionTx(void);


 
extern void SchM_Enter_Com_MultiCore_Lock(void);
extern void SchM_Exit_Com_MultiCore_Lock(void);
 
extern void SchM_Enter_Com_Context(void);
extern void SchM_Exit_Com_Context(void);






































 
   
   
   


























 







 




















 
 














 












 

 




















 
 

 




 



 



 



 
typedef  uint8   Dcm_SecLevelType;



 
typedef  uint8   Dcm_SesCtrlType;



  
typedef  uint8   Dcm_ProtocolType;



 
typedef  uint8   Dcm_NegativeResponseCodeType;
 
typedef  uint8   Dcm_ConfirmationStatusType;

typedef  uint8   Dcm_OpStatusType;

typedef  uint8   Dcm_EcuResetType;

typedef  uint8   Rte_ModeType_DcmEcuReset;

typedef  uint8   Rte_ModeType_DcmControlDTCSetting;


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 



 



 
 

 



 




 


 
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


 


struct aes_key_st
{
    unsigned int rd_key[4 * (14 + 1)];
    unsigned int rounds;
};

typedef struct aes_key_st AES_KEY; 

 

 
   
extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_CompareKey( const  uint8*  Key,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );

extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter( Dcm_OpStatusType  OpStatus,  uint8*  AttemptCounter );

extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_GetSeed(
        Dcm_OpStatusType OpStatus,uint8* Seed,Dcm_NegativeResponseCodeType* ErrorCode);

extern  Std_ReturnType  Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter( Dcm_OpStatusType  OpStatus,  uint8  AttemptCounter );
   
 

   
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead( Dcm_OpStatusType  OpStatus,  Dcm_NegativeResponseCodeType*  ErrorCode );

extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData( Dcm_OpStatusType  OpStatus,uint8*  Data,Dcm_NegativeResponseCodeType*  ErrorCode );

extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
extern  Std_ReturnType  Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData( const  uint8*  Data,uint16  DataLength,Dcm_OpStatusType  OpStatus,Dcm_NegativeResponseCodeType*  ErrorCode );
   
 
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE02_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       

extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF08_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF0A_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAFF7_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE02_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE80_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0B_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF05_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF06_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF07_Start(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
       

extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF08_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF09_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xFE0A_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF06_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   
extern  Std_ReturnType  Rte_Call_RoutineServices_Routine_0xAF07_Stop(
       
    const uint8 *InBuffer,
    Dcm_OpStatusType OpStatus,
    uint8 *OutBuffer,
    uint16 * currentDataLength,
    Dcm_NegativeResponseCodeType *ErrorCode);
   

 
extern Std_ReturnType RTE_PreConditonCheck(void);

extern Std_ReturnType SchM_PerformReset(Rte_ModeType_DcmEcuReset Reset);

extern Std_ReturnType SchM_Switch_DcmControlDTCSetting(uint8 mode);
extern Std_ReturnType SchM_Switch_DcmDiagnosticSessionControl(uint8 mode);
extern Std_ReturnType SchM_Switch_DcmEcuReset(uint8 mode);



extern void Dcm_MainFunction(void);


 
extern void SchM_Enter_Dcm_ExclusiveArea(void);
extern void SchM_Exit_Dcm_ExclusiveArea(void);

extern Std_ReturnType SchM_PerformReset(Rte_ModeType_DcmEcuReset Reset);

 
extern Std_ReturnType SchM_Switch_DcmControlDTCSetting(uint8 mode);


extern Std_ReturnType SchM_Switch_DcmDiagnosticSessionControl(uint8 mode);


extern Std_ReturnType SchM_Switch_DcmEcuReset(uint8 mode);

































 
   
   
   


























 










extern void Dem_MainFunction(void);


 
extern void SchM_Enter_Dem_ExclusiveArea(void);
extern void SchM_Exit_Dem_ExclusiveArea(void);






































 
   
   
   


























 










extern void EcuM_MainFunction(void);


 
extern void SchM_Enter_EcuM_WkEv(void);
extern void SchM_Exit_EcuM_WkEv(void);
 
extern void SchM_Enter_EcuM_GlobalClock(void);
extern void SchM_Exit_EcuM_GlobalClock(void);






































 
   
   
   


























 







 
extern void SchM_Enter_Nm_Coordinator(void);
extern void SchM_Exit_Nm_Coordinator(void);
 
extern void SchM_Enter_Nm_IRA(void);
extern void SchM_Exit_Nm_IRA(void);









































 
   
   
   


























 


















































 
   
   
   


























 












 
extern void SchM_Enter_PduR_ExclusiveArea_Route(void);
extern void SchM_Exit_PduR_ExclusiveArea_Route(void);
 
extern void SchM_Enter_PduR_ExclusiveArea_Group(void);
extern void SchM_Exit_PduR_ExclusiveArea_Group(void);






































 
   
   
   


























 


















































 











 



























 












extern void WdgM_MainFunction(void);               



 
extern void SchM_Enter_WdgM_Exclusive(void);
extern void SchM_Exit_WdgM_Exclusive(void);





















 




 



 





 
 

























 
   
   
 


























 




 



 

 
 
    #pragma section





 
 

Rte_StateType Rte_State = RTE_STATE_RTE_UNINIT;

























 
   
   
 

 
























 




 



 

 
 
   #pragma section





 
 













 
 

























 
   
   
 


























 




 



 

 
 
    #pragma section




 
 

Std_ReturnType Rte_Start(void)
{
    return (0U);
}

























 
   
   
 

 
























 




 



 

 
 
   #pragma section




 
 


























 
   
   
 


























 




 



 

 
 
    #pragma section




 
 

Std_ReturnType Rte_Stop(void)
{
return (0U);
}

























 
   
   
 

 
























 




 



 

 
 
   #pragma section




 
 


























 
   
   
 


























 




 



 

 
 
    #pragma section




 
 

 
 
void SchM_Enter_WdgM_Exclusive(void)
{
    SuspendAllInterrupts();
}

























 
   
   
 

 
























 




 



 

 
 
   #pragma section




 
 


























 
   
   
 


























 




 



 

 
 
    #pragma section




 
 

void SchM_Exit_WdgM_Exclusive(void)
{
    ResumeAllInterrupts();
}

























 
   
   
 

 
























 




 



 

 
 
   #pragma section




 
 







 



