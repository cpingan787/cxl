



























 

 




























 

 
  




























 


 




























 


 

 


 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 


 



 



 



 
   



 



 



 



 



 



 



 



 
 



 
   
 



 



 



 
   



 
   
 



 
 



 



 



 



 



 


 




























 

 


 
 



 



 



 



 


 

























 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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







 




 


























 


 

 
 

  
  
typedef enum
{
     
    CFG_ALARM_ID_CORE0_BEGIN = 0,
    OsAlarm_1ms = CFG_ALARM_ID_CORE0_BEGIN,
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
    CFG_ISR_RCAN0ERR_IRQ_ID,
    CFG_ISR_RCAN0TRX_IRQ_ID,
    CFG_ISR_RCANGRECC0_IRQ_ID,
    CFG_ISR_WDTA1_IRQ_ID,
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


 

  

  






























 


 

























 

 

 

 

 

 

 

 

 

 


 
extern void Os_PanicHandler(void);    

extern Os_SCBType  Os_SCB_FA_Inf[1];

extern const ObjectType Os_ObjectIDMaxTable[OS_OBJECT_MAX];

 



 
































 
 

 

 
































 
 

 




























 


 

 


 






 
static inline  Os_CallLevelType Os_Kernel_GetSysLevel(void)
{
    return Os_SCB_FA_Inf[0].SysOsLevel;
}








 
static inline  Os_TaskType Os_Kernel_GetSysRunningTaskID(void)
{
    return Os_SCB_FA_Inf[0].SysRunningTaskId;
}







 
static inline  Os_TaskStateType Os_Kernel_GetSysRunningTaskState(void)
{
    return Os_SCB_FA_Inf[0].SysRunningTCB->TaskState;
}







 
static inline  uint8 Os_Kernel_GetIntNestNumISR2(void)
{
    return Os_SCB_FA_Inf[0].IntNestISR2;
}







 
static inline  uint8 Os_Kernel_GetIntNestNumISR1(void)
{
    return Os_SCB_FA_Inf[0].IntNestISR1;
}








 
static inline  Os_ProtectionTerminateObjType Os_Kernel_GetAndComparTerminateObject(Os_ProtectionTerminateObjType desObj)
{
    Os_ProtectionTerminateObjType ret = Os_SCB_FA_Inf[0].ProtectionTerminateObj;

    if (desObj == ret)
    {
        Os_SCB_FA_Inf[0].ProtectionTerminateObj = OS_PROTECTION_TERMINATE_INVALID;
    }
    return ret;
}



 

























 


 

 

 

 

 

 

 

 



 
   
 

 
































 
 

 
 
 


 

 
 
 
 
 

 

 

 

 


 
typedef struct
{
    uint8     IntPrio;
    Os_isrhnd IntHandler;
    uint16    IntNumber;
    uint16    intc2SelectionBit;
} Os_IntInstallType;

 


 
 
 



 






 
   

 




 

 

 


 


 

 



   




   






   
 
typedef union
{
    uint16 reg;
    struct
    {
        uint16 P     : 4;
        uint16 resv1 : 1;
        uint16 OV    : 1;
        uint16 TB    : 1;
        uint16 MK    : 1;
        uint16 resv2 : 4;
        uint16 RF    : 1;
        uint16 resv3 : 2;
        uint16 CT    : 1;
    } bit;
} Os_EICRegType;
 
extern Os_isrhnd Os_FE_Handler[(32U)];
extern Os_isrhnd Os_Vector_Handler[(358U)];
   
extern uint32* Os_IsrNestStack;
extern uint32* Os_ISR1SP;
 

extern Os_CallLevelType Os_SaveLevelISR1;
 
   
 
 
extern void            Os_ExceptionTable(void);
extern void            Os_ISR2Exit(void);
extern void            Os_ISR1Exit(void);
extern void            Os_FeISRExit(void);
extern void            Os_MipMdp(void);
extern void            Os_FENMI(void);
extern void            Os_FEIntHandler(void);
 
extern void            Os_InterruptInit(void);
extern void Os_InterruptInstall(const Os_IsrCfgType* IsrCfg, const Os_IntInstallType* IntInstall);
 
extern void            Os_Hal_SetIpl(Os_IPLType ipl, Os_IsrDescriptionType isrdesc);
extern Os_IPLType      Os_Hal_GetIpl(void);
extern Os_ArchMsrType  Os_Hal_SuspendInt(void);
extern void            Os_Hal_RestoreInt(Os_ArchMsrType msr);
 
extern void            Os_Hal_EnableInterruptSource(uint32 vIsrSrc, uint32 vIsrSrcType);
extern void            Os_Hal_DisableInterruptSource(uint32 vIsrSrc, uint32 vIsrSrcType);
extern void            Os_Hal_ClearPendingInterrupt(uint32 vIsrSrc, uint32 vIsrSrcType);
extern void            Os_Hal_SetPendingInterrupt(uint32 vIsrSrc, uint32 vIsrSrcType);
extern Os_IsrStateType Os_Hal_GetIsrSourceState(uint32 vIsrSrc, uint32 vIsrSrcType);
 
extern uint32          Os_Hal_GetCurrentIrq(void);
extern uint32          Os_Hal_GetCurrentExc(void);



 
 
































 
 
 


























 

 

 

 

 
   

 
 

 

 

 

 
 
































 
 

 

























 

 

 

 





 
 

 







 

 
 


 
   

 
 
typedef enum
{
    OS_CORE_MODE_HALT    = 0,
    OS_CORE_MODE_RUN     = 1,
    OS_CORE_MODE_IDLE    = 2,
    OS_CORE_MODE_SLEEP   = 3,
    OS_CORE_MODE_STANDBY = 4,
    OS_CORE_MODE_UNKNOWN = 5
} Os_CoreModeType;

typedef struct
{
    uint8* pRamStart;  
    uint8* pRamEnd;

    uint8* pPeripheralStart;  
    uint8* pPeripheralEnd;

    uint8* pRomStart;  
    uint8* pRomEnd;
} Os_MemProtKnAddr;

 
 
typedef struct
{
    const Os_MemProtKnAddr OsKernelAddr;
} Os_MemProtKnCfgType;

 

 
extern void            Os_Hal_MultiCoreInit(Os_CoreIdType sysCore);
extern void            Os_Hal_InitCPU(void);
extern void            Os_Hal_StartCore(Os_CoreIdType coreId);
extern Os_CoreModeType Os_Hal_GetCoreMode(Os_CoreIdType core);
extern boolean         Os_Hal_SetCoreMode(Os_CoreIdType core, Os_CoreModeType coreMode);
extern Os_CoreIdType   Os_Hal_GetCoreID(void);
extern CoreIdType      Os_ArchGetCoreLogID(CoreIdType phyCoreId);
extern CoreIdType      Os_ArchGetCorePhyID(CoreIdType logCoreId);
extern void            Os_Hal_CheckCPUInformation(void);

static inline  Os_CoreIdType Os_GetCoreID(void)
{
    return (Os_CoreIdType)(0u);
}

 
 
































 
 


 
 
 
 

 
   
 





 

 

 

 

 

 

   
 

 
typedef uint32 Os_Hal_TpType;
 
extern void Os_ArchInitSystemTimer(void);


 

























 


 

 

 

 

 

 
extern const Os_StackType* const Os_SystemStack_Inf[(1U)];
extern Os_TCBType* const Os_TCB[(3U)];
extern const Os_TaskType Os_TASK_IDLE_Inf[(1U)];
extern const uint16 Os_CfgPriorityMax_Inf[(1U)];
extern const Os_TaskPropertyType Os_TaskIdRange[(1U)];
extern const Os_TaskCfgType Os_TaskCfg[(3U)];
extern const Os_StackType Os_TaskStack[(3U)];

 
   


 
extern void Os_TaskEntry_OsTask_Init(void);
extern void Os_TaskEntry_OsTask_1ms(void);
 
   
extern void IdleHook_Core0(void);
 
 


























 


 

 

 

 

 

 

 

 
extern const uint16 Os_CfgIsrMax_Inf[(1U)];
extern const uint16 Os_CfgIsr2Max_Inf[(1U)];
extern const Os_IsrPropertyType Os_IsrIdRange[(1U)];
extern const Os_StackType Os_ISR2Stack[(5U)];
extern const Os_IsrCfgType Os_IsrCfg[(5U)];
extern const Os_IPLType Os_CfgIsr2ExcludeTplMax_Inf[(1U)];
extern Os_ICBType* const Os_ICB[(5U)];
extern Os_IsrType* const Os_SysIsrNestQueue_Inf[(1U)];

   


 
extern void ISR_RCAN0ERR_IRQ_Handler(void);
extern void ISR_RCAN0TRX_IRQ_Handler(void);
extern void ISR_RCANGRECC0_IRQ_Handler(void);
extern void ISR_WDTA1_IRQ_Handler(void);
 


 
 



   
 


 
#pragma inline_asm(OS_SET_SP_VAL)
static volatile void OS_SET_SP_VAL(void)
{
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
}

 

#pragma inline_asm(Os_Hal_Dispatch)
static void Os_Hal_Dispatch(void)
{
    trap 0x00;
}
#pragma inline_asm(Os_ArchFirstDispatch)
static void Os_ArchFirstDispatch(void)
{
    trap 0x10;
}
 



 

 

 
extern volatile uint32   Os_ArchTempSp;
extern Os_TaskCBExtType* Os_TaskCBExt;    

 
extern void   Os_Hal_FirstEnterTask(Os_TaskType TaskID);
extern void   Os_Hal_StartScheduler(void);
extern uint32 Os_Hal_CmpSwapW(uint32* address, uint32 compareVal, uint32 exchangedVal);

extern void OS_GetSystemStackPointer(void);
extern void OS_GetTaskStackPointer(void);
extern void OS_SaveTaskStackPointer(void);
 

 

 

 







 
extern void Os_ShutdownOS(StatusType error, Os_ShutdownAction action);










 
extern void Os_SynPoint(uint8 point);






 
extern void Os_DeInitCoreInfo(void);






 
extern void Os_Panic(void);
 






 
static inline  Os_CoreIdType Os_GetCoreIdLocal(void)
{
    return Os_SCB_FA_Inf[0].SysCore;
}








 
static inline  Os_SCBType *Os_GetSystemContext(Os_CoreIdType coreId)
{
    Os_SCBType *pScb = ((void *)0);

    pScb = &Os_SCB_FA_Inf[0];

    (void)coreId;
    return pScb;
}







 
static inline  Os_SCBType *Os_GetCurrentContext(void)
{
    Os_SCBType *pScb = ((void *)0);
    pScb = &Os_SCB_FA_Inf[0];

    return pScb;
}









 
static inline  boolean Os_ObjectIDCheck(ObjectType objId, uint8 type)
{
    boolean status = 0u;
    if (objId < Os_ObjectIDMaxTable[type])
    {
        status = 1u;
    }

    return status;
}


 




























 


 



 















 


 



 






















































 






 
extern void Os_TaskErrBack(void);



 




























 


 

 



 

























 

 

























 

 
 

 

 

 

 

 
extern void Arti_Init(void);    
extern void Arti_GetVersionInfo(Std_VersionInfoType* VersionInfoPtr);    
 
















 
    
 


 

 

 

 

 

 

 

















 
extern volatile uint32 arti_os_trace;    








 
extern volatile uint32 arti_sc_trace;    


 

 
typedef enum
{
    NOSUSP = 0,
    SPRVSR = 1,
    USER   = 2
} Arti_ContextType;

 
typedef enum
{
    OsTask_Activate  = 0,
    OsTask_Start     = 1,
    OsTask_Wait      = 2,
    OsTask_Release   = 3,
    OsTask_Preempt   = 4,
    OsTask_Terminate = 5,
    OsTask_Resume    = 6,
    OsTask_Continue  = 7
} Arti_OsTaskEventType;

 
typedef enum
{
    OsCat2Isr_Start    = 16,
    OsCat2Isr_Stop     = 17,
    OsCat2Isr_Activate = 18,
    OsCat2Isr_Preempt  = 19,
    OsCat2Isr_Resume   = 20
} Arti_OsCat2IsrEventType;

 
typedef enum
{
    OsSpinlock_Locked   = 24,
    OsSpinlock_Released = 25
} Arti_OsSpinlockEventType;

 
typedef enum
{
    OsApplication_Start       = 32,
    OsApplication_Restart     = 33,
    OsApplication_AllowAccess = 34,
    OsApplication_Terminate   = 35,
} Arti_OsApplicationEventType;

 
typedef enum
{
    OsHook_ErrorHook_Start       = 40,
    OsHook_ErrorHook_Return      = 41,
    OsHook_PostTaskHook_Start    = 42,
    OsHook_PostTaskHook_Return   = 43,
    OsHook_PreTaskHook_Start     = 44,
    OsHook_PreTaskHook_Return    = 45,
    OsHook_ProtectionHook_Start  = 46,
    OsHook_ProtectionHook_Return = 47,
    OsHook_StartupHook_Start     = 48,
    OsHook_StartupHook_Return    = 49,
    OsHook_ShutdownHook_Start    = 50,
    OsHook_ShutdownHook_Return   = 51,
} Arti_OsHookEventType;

 
typedef enum
{
    OsServiceCall_GetApplicationID_Start = 0,
    OsServiceCall_GetApplicationID_Return = 1,
    OsServiceCall_GetISRID_Start = 2,
    OsServiceCall_GetISRID_Return = 3,
    OsServiceCall_CallTrustedFunction_Start = 4,
    OsServiceCall_CallTrustedFunction_Return = 5,
    OsServiceCall_CheckISRMemoryAccess_Start = 6,
    OsServiceCall_CheckISRMemoryAccess_Return = 7,
    OsServiceCall_CheckTaskMemoryAccess_Start = 8,
    OsServiceCall_CheckTaskMemoryAccess_Return = 9,
    OsServiceCall_CheckObjectAccess_Start = 10,
    OsServiceCall_CheckObjectAccess_Return = 11,
    OsServiceCall_CheckObjectOwnership_Start = 12,
    OsServiceCall_CheckObjectOwnership_Return = 13,
    OsServiceCall_StartScheduleTableRel_Start = 14,
    OsServiceCall_StartScheduleTableRel_Return = 15,
    OsServiceCall_StartScheduleTableAbs_Start = 16,
    OsServiceCall_StartScheduleTableAbs_Return = 17,
    OsServiceCall_StopScheduleTable_Start = 18,
    OsServiceCall_StopScheduleTable_Return = 19,
    OsServiceCall_NextScheduleTable_Start = 20,
    OsServiceCall_NextScheduleTable_Return = 21,
    OsServiceCall_StartScheduleTableSynchron_Start = 22,
    OsServiceCall_StartScheduleTableSynchron_Return = 23,
    OsServiceCall_SyncScheduleTable_Start = 24,
    OsServiceCall_SyncScheduleTable_Return = 25,
    OsServiceCall_SetScheduleTableAsync_Start = 26,
    OsServiceCall_SetScheduleTableAsync_Return = 27,
    OsServiceCall_GetScheduleTableStatus_Start = 28,
    OsServiceCall_GetScheduleTableStatus_Return = 29,
    OsServiceCall_IncrementCounter_Start = 30,
    OsServiceCall_IncrementCounter_Return = 31,
    OsServiceCall_GetCounterValue_Start = 32,
    OsServiceCall_GetCounterValue_Return = 33,
    OsServiceCall_GetElapsedValue_Start = 34,
    OsServiceCall_GetElapsedValue_Return = 35,
    OsServiceCall_TerminateApplication_Start = 36,
    OsServiceCall_TerminateApplication_Return = 37,
    OsServiceCall_AllowAccess_Start = 38,
    OsServiceCall_AllowAccess_Return = 39,
    OsServiceCall_GetApplicationState_Start = 40,
    OsServiceCall_GetApplicationState_Return = 41,
    OsServiceCall_GetNumberOfActivatedCores_Start = 42,
    OsServiceCall_GetNumberOfActivatedCores_Return = 43,
    OsServiceCall_GetCoreID_Start = 44,
    OsServiceCall_GetCoreID_Return = 45,
    OsServiceCall_StartCore_Start = 46,
    OsServiceCall_StartCore_Return = 47,
    OsServiceCall_StartNonAutosarCore_Start = 48,
    OsServiceCall_StartNonAutosarCore_Return = 49,
    OsServiceCall_GetSpinlock_Start = 50,
    OsServiceCall_GetSpinlock_Return = 51,
    OsServiceCall_ReleaseSpinlock_Start = 52,
    OsServiceCall_ReleaseSpinlock_Return = 53,
    OsServiceCall_TryToGetSpinlock_Start = 54,
    OsServiceCall_TryToGetSpinlock_Return = 55,
    OsServiceCall_ShutdownAllCores_Start = 56,
    OsServiceCall_ShutdownAllCores_Return = 57,
    OsServiceCall_ControlIdle_Start = 58,
    OsServiceCall_ControlIdle_Return = 59,
    OsServiceCall_IocSend_Start = 60,
    OsServiceCall_IocSend_Return = 61,
    OsServiceCall_IocWrite_Start = 62,
    OsServiceCall_IocWrite_Return = 63,
    OsServiceCall_IocSendGroup_Start = 64,
    OsServiceCall_IocSendGroup_Return = 65,
    OsServiceCall_IocWriteGroup_Start = 66,
    OsServiceCall_IocWriteGroup_Return = 67,
    OsServiceCall_IocReceive_Start = 68,
    OsServiceCall_IocReceive_Return = 69,
    OsServiceCall_IocRead_Start = 70,
    OsServiceCall_IocRead_Return = 71,
    OsServiceCall_IocReceiveGroup_Start = 72,
    OsServiceCall_IocReceiveGroup_Return = 73,
    OsServiceCall_IocReadGroup_Start = 74,
    OsServiceCall_IocReadGroup_Return = 75,
    OsServiceCall_IocEmptyQueue_Start = 76,
    OsServiceCall_IocEmptyQueue_Return = 77,
    OsServiceCall_GetCurrentApplicationID_Start = 78,
    OsServiceCall_GetCurrentApplicationID_Return = 79,
    OsServiceCall_ReadPeripheral8_Start = 80,
    OsServiceCall_ReadPeripheral8_Return = 81,
    OsServiceCall_ReadPeripheral16_Start = 82,
    OsServiceCall_ReadPeripheral16_Return = 83,
    OsServiceCall_ReadPeripheral32_Start = 84,
    OsServiceCall_ReadPeripheral32_Return = 85,
    OsServiceCall_WritePeripheral8_Start = 86,
    OsServiceCall_WritePeripheral8_Return = 87,
    OsServiceCall_WritePeripheral16_Start = 88,
    OsServiceCall_WritePeripheral16_Return = 89,
    OsServiceCall_WritePeripheral32_Start = 90,
    OsServiceCall_WritePeripheral32_Return = 91,
    OsServiceCall_ModifyPeripheral8_Start = 92,
    OsServiceCall_ModifyPeripheral8_Return = 93,
    OsServiceCall_ModifyPeripheral32_Start = 94,
    OsServiceCall_ModifyPeripheral32_Return = 95,
    OsServiceCall_DisableInterruptSource_Start = 96,
    OsServiceCall_DisableInterruptSource_Return = 97,
    OsServiceCall_EnableInterruptSource_Start = 98,
    OsServiceCall_EnableInterruptSource_Return = 99,
    OsServiceCall_ClearPendingInterrupt_Start = 100,
    OsServiceCall_ClearPendingInterrupt_Return = 101,
    OsServiceCall_ActivateTaskAsyn_Start = 102,
    OsServiceCall_ActivateTaskAsyn_Return = 103,
    OsServiceCall_SetEventAsyn_Start = 104,
    OsServiceCall_SetEventAsyn_Return = 105,
    OsServiceCall_ModifyPeripheral16_Start = 106,
    OsServiceCall_ModifyPeripheral16_Return = 107,
    OsServiceCall_WaitAllEvents_Start = 108,
    OsServiceCall_WaitAllEvents_Return = 109,
    OsServiceCall_IocCallBackNotify_Start = 110,
    OsServiceCall_IocCallBackNotify_Return = 111,
    OsServiceCall_ActivateTask_Start = 112,
    OsServiceCall_ActivateTask_Return = 113,
    OsServiceCall_TerminateTask_Start = 114,
    OsServiceCall_TerminateTask_Return = 115,
    OsServiceCall_ChainTask_Start = 116,
    OsServiceCall_ChainTask_Return = 117,
    OsServiceCall_Schedule_Start = 118,
    OsServiceCall_Schedule_Return = 119,
    OsServiceCall_GetTaskID_Start = 120,
    OsServiceCall_GetTaskID_Return = 121,
    OsServiceCall_GetTaskState_Start = 122,
    OsServiceCall_GetTaskState_Return = 123,
    OsServiceCall_EnableAllInterrupts_Start = 124,
    OsServiceCall_EnableAllInterrupts_Return = 125,
    OsServiceCall_DisableAllInterrupts_Start = 126,
    OsServiceCall_DisableAllInterrupts_Return = 127,
    OsServiceCall_ResumeAllInterrupts_Start = 128,
    OsServiceCall_ResumeAllInterrupts_Return = 129,
    OsServiceCall_SuspendAllInterrupts_Start = 130,
    OsServiceCall_SuspendAllInterrupts_Return = 131,
    OsServiceCall_ResumeOSInterrupts_Start = 132,
    OsServiceCall_ResumeOSInterrupts_Return = 133,
    OsServiceCall_SuspendOSInterrupts_Start = 134,
    OsServiceCall_SuspendOSInterrupts_Return = 135,
    OsServiceCall_GetResource_Start = 136,
    OsServiceCall_GetResource_Return = 137,
    OsServiceCall_ReleaseResource_Start = 138,
    OsServiceCall_ReleaseResource_Return = 139,
    OsServiceCall_SetEvent_Start = 140,
    OsServiceCall_SetEvent_Return = 141,
    OsServiceCall_ClearEvent_Start = 142,
    OsServiceCall_ClearEvent_Return = 143,
    OsServiceCall_GetEvent_Start = 144,
    OsServiceCall_GetEvent_Return = 145,
    OsServiceCall_WaitEvent_Start = 146,
    OsServiceCall_WaitEvent_Return = 147,
    OsServiceCall_GetAlarmBase_Start = 148,
    OsServiceCall_GetAlarmBase_Return = 149,
    OsServiceCall_GetAlarm_Start = 150,
    OsServiceCall_GetAlarm_Return = 151,
    OsServiceCall_SetRelAlarm_Start = 152,
    OsServiceCall_SetRelAlarm_Return = 153,
    OsServiceCall_SetAbsAlarm_Start = 154,
    OsServiceCall_SetAbsAlarm_Return = 155,
    OsServiceCall_CancelAlarm_Start = 156,
    OsServiceCall_CancelAlarm_Return = 157,
    OsServiceCall_GetActiveApplicationMode_Start = 158,
    OsServiceCall_GetActiveApplicationMode_Return = 159,
    OsServiceCall_StartOS_Start = 160,
    OsServiceCall_StartOS_Return = 161,
    OsServiceCall_ShutdownOS_Start = 162,
    OsServiceCall_ShutdownOS_Return = 163,
    OsServiceCall_BarrierSynchronize_Start = 164,
    OsServiceCall_BarrierSynchronize_Return = 165
} Arti_OsServiceCallType;



 
   





 


   
