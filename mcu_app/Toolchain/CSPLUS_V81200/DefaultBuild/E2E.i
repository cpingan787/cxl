











 













 


 







 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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







 




 













 












 


 













 


 












 
 



 
 




















 
 



 
 

 

 

 

 

 

 

 


      


   


   


   


   

 
 



 


 












 
 



 
 
 




















 
 
 

extern  uint8 Crc_CalculateCRC8(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint8 Crc_StartValue8,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint8 Crc_CalculateCRC8H2F(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint8 Crc_StartValue8H2F,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint16 Crc_CalculateCRC16(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint16 Crc_StartValue16,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint32 Crc_CalculateCRC32(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint32 Crc_StartValue32,
    boolean Crc_IsFirstCall);


 




















 
 
 

extern  uint32 Crc_CalculateCRC32P4(
    const uint8 * Crc_DataPtr,
    uint32 Crc_Length,
    uint32 Crc_StartValue32,
    boolean Crc_IsFirstCall);



extern  uint64 Crc_CalculateCRC64(
    const uint8 * Crc_DataPtr,
    uint64 Crc_Length,
    uint64 Crc_StartValue64,
    boolean Crc_IsFirstCall);




 
 
 











 

typedef uint8 E2E_PCheckStatusType;
 
 

 

 

 
 

typedef uint8 E2E_SMStateType;
 
 
 

 
 
 
 

 
 
 


 
typedef struct
{
     
    uint8 WindowSizeValid;
    

 
    uint8 MinOkStateInit;
    
 
    uint8 MaxErrorStateInit;
    
 
    uint8 MinOkStateValid;
    
 
    uint8 MaxErrorStateValid;
    
 
    uint8 MinOkStateInvalid;
    
 
    uint8 MaxErrorStateInvalid;
     
    uint8 WindowSizeInit;
     
    uint8 WindowSizeInvalid;
     
    boolean ClearToInvalid;
} E2E_SMConfigType;

typedef struct
{
    
 
    uint8 ProfileStatusWindow[16];
     
    uint8 WindowTopIndex;
    
 
    uint8 OkCount;
    
 
    uint8 ErrorCount;
     
    E2E_SMStateType SMState;
} E2E_SMCheckStateType;



 


 












 

extern  Std_ReturnType E2E_SMCheck(
    E2E_PCheckStatusType ProfileStatus,
    const E2E_SMConfigType * ConfigPtr,
    E2E_SMCheckStateType * StatePtr);











 

extern  Std_ReturnType E2E_SMCheckInit(
    E2E_SMCheckStateType * StatePtr,
    const E2E_SMConfigType * ConfigPtr);



 



 


 










 




 



 



 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  void E2E_SMAddStatus(
    E2E_PCheckStatusType ProfileStatus,
    const E2E_SMConfigType * Config,
    E2E_SMCheckStateType * State);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  void E2E_SMClearStatus(
    E2E_SMCheckStateType * State,
    const E2E_SMConfigType * Config);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  void E2E_SMClearRemainingStatus(
    E2E_SMCheckStateType * State,
    const E2E_SMConfigType * Config,
    E2E_SMStateType NextState);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 


 



 



 



 



 












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_SMCheck(
    E2E_PCheckStatusType ProfileStatus,
    const E2E_SMConfigType * ConfigPtr,
    E2E_SMCheckStateType * StatePtr)
{
    Std_ReturnType Ret;
    Ret = (E2E_SMStateType)0x00u;

     
    if ((((void *)0) == ConfigPtr) || (((void *)0) == StatePtr))
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else if (ProfileStatus > 0x05u)
    {
        Ret = (E2E_SMStateType)0x17u;
    }
    else
    {
        switch (StatePtr->SMState)
        {
        case (E2E_SMStateType)0x01u:
            Ret = (E2E_SMStateType)0x1Au;
            break;
        case (E2E_SMStateType)0x02u:
            if ((ProfileStatus != (E2E_PCheckStatusType)0x03u) && (ProfileStatus != (E2E_PCheckStatusType)0x05u))
            {
                StatePtr->SMState = (E2E_SMStateType)0x03u;
            }
            break;
        case (E2E_SMStateType)0x03u:
            E2E_SMAddStatus(ProfileStatus, ConfigPtr, StatePtr);
            if ((StatePtr->ErrorCount <= ConfigPtr->MaxErrorStateInit)
                && (StatePtr->OkCount >= ConfigPtr->MinOkStateInit))
            {
                E2E_SMClearRemainingStatus(StatePtr, ConfigPtr, (E2E_SMStateType)(E2E_SMStateType)0x00u);
                StatePtr->SMState = (E2E_SMStateType)0x00u;
            }
            else if (StatePtr->ErrorCount > ConfigPtr->MaxErrorStateInit)
            {
                if (1u == ConfigPtr->ClearToInvalid)
                {
                    E2E_SMClearStatus(StatePtr, ConfigPtr);
                }
                else
                {
                    E2E_SMClearRemainingStatus(StatePtr, ConfigPtr, (E2E_SMStateType)(E2E_SMStateType)0x04u);
                }

                StatePtr->SMState = (E2E_SMStateType)0x04u;
            }
            else
            {
                 
            }
            break;
        case (E2E_SMStateType)0x00u:
            E2E_SMAddStatus(ProfileStatus, ConfigPtr, StatePtr);
            if ((StatePtr->ErrorCount <= ConfigPtr->MaxErrorStateValid)
                && (StatePtr->OkCount >= ConfigPtr->MinOkStateValid))
            {
                 
            }
            else
            {
                if (1u == ConfigPtr->ClearToInvalid)
                {
                    E2E_SMClearStatus(StatePtr, ConfigPtr);
                }
                StatePtr->SMState = (E2E_SMStateType)0x04u;
            }
            break;
        case (E2E_SMStateType)0x04u:
            E2E_SMAddStatus(ProfileStatus, ConfigPtr, StatePtr);
            if ((StatePtr->ErrorCount <= ConfigPtr->MaxErrorStateInvalid)
                && (StatePtr->OkCount >= ConfigPtr->MinOkStateInvalid))
            {
                E2E_SMClearRemainingStatus(StatePtr, ConfigPtr, (E2E_SMStateType)0x00u);
                StatePtr->SMState = (E2E_SMStateType)0x00u;
            }
            else
            {
                 
            }
            break;
        default:
            Ret = (E2E_SMStateType)0x1Au;
            break;
        }
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_SMCheckInit(
    E2E_SMCheckStateType * StatePtr,
    const E2E_SMConfigType * ConfigPtr)
{
    Std_ReturnType Ret;
    uint8 index;
    uint8 CurrentWindowSize;
    Ret = (E2E_SMStateType)0x00u;

    if ((((void *)0) == StatePtr) || (((void *)0) == ConfigPtr))
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        if ((E2E_SMStateType)0x00u == StatePtr->SMState)
        {
            CurrentWindowSize = ConfigPtr->WindowSizeValid;
        }
        else if ((E2E_SMStateType)0x03u == StatePtr->SMState)
        {
            CurrentWindowSize = ConfigPtr->WindowSizeInit;
        }
        else
        {
            CurrentWindowSize = ConfigPtr->WindowSizeInvalid;
        }
        for (index = 0; index < CurrentWindowSize; index++)
        {
            StatePtr->ProfileStatusWindow[index] = (E2E_PCheckStatusType)0x04u;
        }
        StatePtr->WindowTopIndex = 0;
        StatePtr->OkCount = 0;
        StatePtr->ErrorCount = 0;
        StatePtr->SMState = (E2E_SMStateType)0x02u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  void E2E_SMAddStatus(
    E2E_PCheckStatusType ProfileStatus,
    const E2E_SMConfigType * Config,
    E2E_SMCheckStateType * State)
{
    uint8 index;
    uint8 Count;
    uint8 CurrentWindowSize;

    State->ProfileStatusWindow[State->WindowTopIndex] = ProfileStatus;
    if ((E2E_SMStateType)0x00u == State->SMState)
    {
        CurrentWindowSize = Config->WindowSizeValid;
    }
    else if ((E2E_SMStateType)0x03u == State->SMState)
    {
        CurrentWindowSize = Config->WindowSizeInit;
    }
    else
    {
        CurrentWindowSize = Config->WindowSizeInvalid;
    }
    Count = 0;
    for (index = 0; index < CurrentWindowSize; index++)
    {
        if ((uint8)(E2E_PCheckStatusType)0x00u == State->ProfileStatusWindow[index])
        {
            Count++;
        }
    }
    State->OkCount = Count;

    Count = 0;
    for (index = 0; index < CurrentWindowSize; index++)
    {
        if ((uint8)(E2E_PCheckStatusType)0x03u == State->ProfileStatusWindow[index])
        {
            Count++;
        }
    }
    State->ErrorCount = Count;

    if ((State->WindowTopIndex) >= (CurrentWindowSize - (uint8)1))
    {
        State->WindowTopIndex = 0u;
    }
    else
    {
        State->WindowTopIndex++;
    }
}

static  void E2E_SMClearStatus(
    E2E_SMCheckStateType * State,
    const E2E_SMConfigType * Config)
{
    uint8 index;
    uint8 CurrentWindowSize;

    if ((E2E_SMStateType)0x00u == State->SMState)
    {
        CurrentWindowSize = Config->WindowSizeValid;
    }
    else if ((E2E_SMStateType)0x03u == State->SMState)
    {
        CurrentWindowSize = Config->WindowSizeInit;
    }
    else
    {
        CurrentWindowSize = Config->WindowSizeInvalid;
    }
    for (index = 0; index < CurrentWindowSize; index++)
    {
        State->ProfileStatusWindow[index] = (E2E_PCheckStatusType)0x04u;
    }
    State->OkCount = 0u;
    State->ErrorCount = 0u;
    State->WindowTopIndex = 0u;
}

static  void E2E_SMClearRemainingStatus(
    E2E_SMCheckStateType * State,
    const E2E_SMConfigType * Config,
    E2E_SMStateType NextState)
{
    uint8 CurrentWindowSize;
    uint8 NextWindowSize;
    uint8 index;

    if ((E2E_SMStateType)0x00u == State->SMState)
    {
        CurrentWindowSize = Config->WindowSizeValid;
    }
    else if ((E2E_SMStateType)0x03u == State->SMState)
    {
        CurrentWindowSize = Config->WindowSizeInit;
    }
    else
    {
        CurrentWindowSize = Config->WindowSizeInvalid;
    }
    if ((E2E_SMStateType)0x00u == NextState)
    {
        NextWindowSize = Config->WindowSizeValid;
    }
    else if ((E2E_SMStateType)0x04u == NextState)
    {
        NextWindowSize = Config->WindowSizeInvalid;
    }
    else
    {
        NextWindowSize = 0u;
    }
    if (CurrentWindowSize < NextWindowSize)
    {
        for (index = 0; index < (CurrentWindowSize - 1u); index++)
        {
            State->ProfileStatusWindow[index] = (E2E_PCheckStatusType)0x04u;
        }
    }
}













 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 
