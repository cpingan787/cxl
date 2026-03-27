











 












 


 






 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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














 













 



 


 

    

 
    static inline uint8 E2E_P01_Min(uint8 a, uint8 b)
    {
        return (((a) <= (b)) ? (a) : (b));
    }
    

 
    

 
     
    typedef enum
    {
        
 
        E2E_P01_DATAID_BOTH,
        
 
        E2E_P01_DATAID_ALT,
         
        E2E_P01_DATAID_LOW,
        


 
        E2E_P01_DATAID_NIBBLE,
         
        E2E_P01_DATAID_NOUSED
    } E2E_P01DataIDMode;

    
 
    typedef struct
    {
        
 
        uint16 CounterOffset;
        
 
        uint16 CRCOffset;
         
        uint16 DataID;
        


 
        uint16 DataIDNibbleOffset;
        
 
        E2E_P01DataIDMode DataIDMode;
         
        uint16 DataLength;
        
 
        uint8 MaxDeltaCounterInit;
        
 
        uint8 MaxNoNewOrRepeatedData;
        

 
        uint8 SyncCounterInit;
    } E2E_P01ConfigType;

    typedef struct
    {
         
        uint8 Counter;
    } E2E_P01ProtectStateType;

    typedef enum
    {
        


 
        E2E_P01STATUS_OK = 0x00,
        

 
        E2E_P01STATUS_NONEWDATA = 0x01,
        


 
        E2E_P01STATUS_WRONGCRC = 0x02,
        


 
        E2E_P01STATUS_SYNC = 0x03,
        

 
        E2E_P01STATUS_INITIAL = 0x04,
        

 
        E2E_P01STATUS_REPEATED = 0x08,
        

 
        E2E_P01STATUS_OKSOMELOST = 0x20,
        

 
        E2E_P01STATUS_WRONGSEQUENCE = 0x40
    } E2E_P01CheckStatusType;

    typedef struct
    {
         
        uint8 LastValidCounter;
        
 
        uint8 MaxDeltaCounter;
        
 
        boolean WaitForFirstData;
        
 
        boolean NewDataAvailable;
        
 
        uint8 LostData;
         
        E2E_P01CheckStatusType Status;
        

 
        uint8 SyncCounter;
        
 
        uint8 NoNewOrRepeatedDataCounter;
    } E2E_P01CheckStateType;
    

 
    

 
    











 

    extern  Std_ReturnType E2E_P01Protect(
        const E2E_P01ConfigType * ConfigPtr,
        E2E_P01ProtectStateType * StatePtr,
        uint8 * DataPtr);

    









 

    extern  Std_ReturnType
        E2E_P01ProtectInit(E2E_P01ProtectStateType * StatePtr);

    











 

    extern  Std_ReturnType E2E_P01Check(
        const E2E_P01ConfigType * Config,
        E2E_P01CheckStateType * State,
        const uint8 * Data);

    









 

    extern  Std_ReturnType
        E2E_P01CheckInit(E2E_P01CheckStateType * State);

    








 

    extern  E2E_PCheckStatusType
        E2E_P01MapStatusToSM(Std_ReturnType CheckReturn, E2E_P01CheckStatusType Status, boolean ProfileBehavior);




 



 



 


 



 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType
    E2E_P01CheckDataIDMode(const E2E_P01ConfigType * ConfigPtr);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType E2E_P01ProtectVerifyInputs(
    const E2E_P01ConfigType * ConfigPtr,
    const E2E_P01ProtectStateType * StatePtr,
    const uint8 * DataPtr);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType E2E_P01CheckVerifyInputs(
    const E2E_P01ConfigType * ConfigPtr,
    const E2E_P01CheckStateType * StatePtr,
    const uint8 * DataPtr);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 uint8
E2E_P01CalculateCRC8(
    const E2E_P01ConfigType * ConfigPtr,
    uint8 Counter,
    const uint8 * DataPtr);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static void E2E_P01Check_Seqence(
    const E2E_P01ConfigType * Config,
    E2E_P01CheckStateType * State,
    uint8 ReceivedCounter);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 


 



 



 



 



 













 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P01Protect(
    const E2E_P01ConfigType * ConfigPtr,
    E2E_P01ProtectStateType * StatePtr,
    uint8 * DataPtr)
{
    uint8 CRC;
    uint8 Ret = E2E_P01ProtectVerifyInputs(ConfigPtr, StatePtr, DataPtr);

    if ((E2E_SMStateType)0x00u == Ret)
    {
        

 
        if (0u == (ConfigPtr->CounterOffset % 8u))
        {
            *(DataPtr + (ConfigPtr->CounterOffset / 8u)) =
                (*(DataPtr + (ConfigPtr->CounterOffset / 8u)) & 0xF0u) | (StatePtr->Counter & 0x0Fu);
        }
        else
        {
            *(DataPtr + (ConfigPtr->CounterOffset / 8u)) =
                (*(DataPtr + (ConfigPtr->CounterOffset / 8u)) & 0x0Fu) | ((uint8)(StatePtr->Counter << 4u));
        }
         
        if (E2E_P01_DATAID_NIBBLE == ConfigPtr->DataIDMode)
        {
            if (0u == ((ConfigPtr->DataIDNibbleOffset) % 8u))
            {
                *(DataPtr + (uint8)(ConfigPtr->DataIDNibbleOffset / 8u)) =
                    (*(DataPtr + (uint8)(ConfigPtr->DataIDNibbleOffset / 8u)) & 0xF0u)
                    | ((uint8)(ConfigPtr->DataID >> 8u) & 0x0Fu);
            }
            else
            {
                *(DataPtr + (uint8)(ConfigPtr->DataIDNibbleOffset / 8u)) =
                    (*(DataPtr + (uint8)(ConfigPtr->DataIDNibbleOffset / 8u)) & 0x0Fu)
                    | ((uint8)(ConfigPtr->DataID >> 4u) & 0xF0u);
            }
        }

        CRC = E2E_P01CalculateCRC8(ConfigPtr, StatePtr->Counter, DataPtr);
         
        *(DataPtr + (ConfigPtr->CRCOffset / 8u)) = CRC;
        StatePtr->Counter = (StatePtr->Counter + 1u) % 15u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P01ProtectInit(E2E_P01ProtectStateType * StatePtr)
{
    Std_ReturnType Ret;
    Ret = (E2E_SMStateType)0x00u;

     
    if (((void *)0) == StatePtr)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        StatePtr->Counter = 0;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
   
 Std_ReturnType
E2E_P01Check(
     
    const E2E_P01ConfigType * Config,
    E2E_P01CheckStateType * State,
    const uint8 * Data)
{
    Std_ReturnType Ret = E2E_P01CheckVerifyInputs(Config, State, Data);

    if ((E2E_SMStateType)0x00u == Ret)
    {
        uint8 ReceivedCounter;
        uint8 ReceivedCRC;
        uint8 ReceivedDataIDNibble = 0x0u;
        uint8 CalculatedCRC;
        State->MaxDeltaCounter = E2E_P01_Min(((State->MaxDeltaCounter) + 1u), (14u));

        if (1u == State->NewDataAvailable)
        {
            if (0u == (Config->CounterOffset % 8u))
            {
                ReceivedCounter = *(Data + (Config->CounterOffset / 8u)) & 0x0Fu;
            }
            else
            {
                ReceivedCounter = (*(Data + (Config->CounterOffset / 8u)) >> 4u);
            }
        }
        else
        {
            if (State->NoNewOrRepeatedDataCounter < 14u)
            {
                State->NoNewOrRepeatedDataCounter++;
            }
            State->Status = E2E_P01STATUS_NONEWDATA;
            return Ret;
        }
        if (ReceivedCounter >= 15u)
        {
            Ret = (E2E_SMStateType)0x17u;
            return Ret;
        }
        ReceivedCRC = *(Data + (Config->CRCOffset / 8u));

        if (E2E_P01_DATAID_NIBBLE == Config->DataIDMode)
        {
            if (0u == (Config->DataIDNibbleOffset % 8u))
            {
                 
                ReceivedDataIDNibble = *(Data + (Config->DataIDNibbleOffset / 8u)) & 0x0Fu;
            }
            else
            {
                ReceivedDataIDNibble = (*(Data + (Config->DataIDNibbleOffset / 8u)) >> 4u);
            }
        }
        CalculatedCRC = E2E_P01CalculateCRC8(Config, ReceivedCounter, Data);

        if (ReceivedCRC == CalculatedCRC)
        {
            if ((E2E_P01_DATAID_NIBBLE == Config->DataIDMode)
                && (ReceivedDataIDNibble != ((Config->DataID >> 8u) & 0x0Fu)))
            {
                State->Status = E2E_P01STATUS_WRONGCRC;
            }
            else
            {
                 
                if (1u == State->WaitForFirstData)
                {
                    State->WaitForFirstData = 0u;
                    State->MaxDeltaCounter = Config->MaxDeltaCounterInit;
                    State->LastValidCounter = ReceivedCounter;
                    State->Status = E2E_P01STATUS_INITIAL;
                }
                else
                {
                    E2E_P01Check_Seqence(Config, State, ReceivedCounter);
                }
            }
        }
        else
        {
            State->Status = E2E_P01STATUS_WRONGCRC;
        }
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P01CheckInit(E2E_P01CheckStateType * State)
{
    Std_ReturnType Ret;

    Ret = (E2E_SMStateType)0x00u;
     
    if (((void *)0) == State)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        State->LastValidCounter = 0u;
        State->MaxDeltaCounter = 0u;
        State->WaitForFirstData = 1u;
        State->NewDataAvailable = 1u;
        State->LostData = 0u;
        State->Status = E2E_P01STATUS_NONEWDATA;
        State->NoNewOrRepeatedDataCounter = 0u;
        State->SyncCounter = 0u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 E2E_PCheckStatusType
E2E_P01MapStatusToSM(Std_ReturnType CheckReturn, E2E_P01CheckStatusType Status, boolean ProfileBehavior)
{
    E2E_PCheckStatusType Ret;

     
    if ((E2E_SMStateType)0x00u != CheckReturn)
    {
        Ret = (E2E_PCheckStatusType)0x03u;
    }
     
    else if ((boolean)1 == ProfileBehavior)
    {
        switch (Status)
        {
        case E2E_P01STATUS_OK:
        case E2E_P01STATUS_OKSOMELOST:
        case E2E_P01STATUS_SYNC:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P01STATUS_WRONGCRC:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P01STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P01STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P01STATUS_WRONGSEQUENCE:
        case E2E_P01STATUS_INITIAL:
            Ret = (E2E_PCheckStatusType)0x02u;
            break;
        default:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        }
    }
     
    else
    {
        switch (Status)
        {
        case E2E_P01STATUS_OK:
        case E2E_P01STATUS_OKSOMELOST:
        case E2E_P01STATUS_INITIAL:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P01STATUS_WRONGCRC:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P01STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P01STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P01STATUS_WRONGSEQUENCE:
        case E2E_P01STATUS_SYNC:
            Ret = (E2E_PCheckStatusType)0x02u;
            break;
        default:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        }
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 


 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType
    E2E_P01CheckDataIDMode(const E2E_P01ConfigType * ConfigPtr)
{
    Std_ReturnType ret;

    if (E2E_P01_DATAID_ALT == ConfigPtr->DataIDMode)
    {
        ret = 0U;
    }
    else if (E2E_P01_DATAID_BOTH == ConfigPtr->DataIDMode)
    {
        ret = 0U;
    }
    else if (E2E_P01_DATAID_LOW == ConfigPtr->DataIDMode)
    {
        ret = 0U;
    }
    else if (E2E_P01_DATAID_NIBBLE == ConfigPtr->DataIDMode)
    {
        ret = 0U;
    }
    else if (E2E_P01_DATAID_NOUSED == ConfigPtr->DataIDMode)
    {
        ret = 0U;
    }
    else
    {
        ret = 1U;
    }

    return ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType E2E_P01ProtectVerifyInputs(
    const E2E_P01ConfigType * ConfigPtr,
    const E2E_P01ProtectStateType * StatePtr,
    const uint8 * DataPtr)
{
    Std_ReturnType ret = (E2E_SMStateType)0x13u;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
         
        if (StatePtr->Counter > 14u)
        {
            ret = (E2E_SMStateType)0x17u;
        }
        else if (1U == E2E_P01CheckDataIDMode(ConfigPtr))
        {
            ret = (E2E_SMStateType)0x17u;
        }
        else
        {
            ret = (E2E_SMStateType)0x00u;
        }
    }

    return ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType E2E_P01CheckVerifyInputs(
    const E2E_P01ConfigType * ConfigPtr,
    const E2E_P01CheckStateType * StatePtr,
    const uint8 * DataPtr)
{
    Std_ReturnType ret = (E2E_SMStateType)0x13u;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
         
        if ((StatePtr->LastValidCounter > 14u)
            || (StatePtr->MaxDeltaCounter > 14u)
            || (StatePtr->SyncCounter > ConfigPtr->SyncCounterInit)
            || (StatePtr->NoNewOrRepeatedDataCounter > 14u))
        {
            ret = (E2E_SMStateType)0x17u;
        }
        else if (1U == E2E_P01CheckDataIDMode(ConfigPtr))
        {
            ret = (E2E_SMStateType)0x17u;
        }
        else
        {
            ret = (E2E_SMStateType)0x00u;
        }
    }

    return ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 uint8
E2E_P01CalculateCRC8(
    const E2E_P01ConfigType * ConfigPtr,
    uint8 Counter,
    const uint8 * DataPtr)
{
    uint8 CRC = 0;
    uint8 DataID_Hbyte;
    uint8 DataID_Lbyte;
    uint8 Data_0 = 0;

    DataID_Hbyte = (uint8)((ConfigPtr->DataID) >> 8u);
    DataID_Lbyte = (uint8)(ConfigPtr->DataID);
    

 
    switch (ConfigPtr->DataIDMode)
    {
    case E2E_P01_DATAID_BOTH:
        CRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFF, 0u);
        CRC = Crc_CalculateCRC8(&DataID_Hbyte, 1, CRC, 0u);
        break;
    case E2E_P01_DATAID_LOW:
        CRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFF, 0u);
        break;
    case E2E_P01_DATAID_ALT:
        if (0u == (Counter % 2u))
        {
            CRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFF, 0u);
        }
        else
        {
            CRC = Crc_CalculateCRC8(&DataID_Hbyte, 1, 0xFF, 0u);
        }
        break;
    case E2E_P01_DATAID_NIBBLE:
        CRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFF, 0u);
        CRC = Crc_CalculateCRC8(&Data_0, 1, CRC, 0u);
        break;
    default:
         
        break;
    }
     
    if ((ConfigPtr->CRCOffset >= 8u) && (E2E_P01_DATAID_NOUSED != ConfigPtr->DataIDMode))
    {
        CRC = Crc_CalculateCRC8(DataPtr, (ConfigPtr->CRCOffset / 8u), CRC, 0u);
    }
    else if ((0u == ConfigPtr->CRCOffset) && (E2E_P01_DATAID_NOUSED != ConfigPtr->DataIDMode))
    {
         
    }
    else
    {
        CRC = Crc_CalculateCRC8(DataPtr, (ConfigPtr->CRCOffset / 8u), 0xFF, 0u);
    }
    
 
    if ((ConfigPtr->CRCOffset / 8u) < ((ConfigPtr->DataLength / 8u) - 1u))
    {
        CRC = Crc_CalculateCRC8(
            &DataPtr[((ConfigPtr->CRCOffset / 8u) + 1u)],
            (((ConfigPtr->DataLength) / 8u) - (ConfigPtr->CRCOffset / 8u) - 1u),
            CRC,
            0u);
    }
    CRC = CRC ^ 0xFFu;

    return CRC;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static void E2E_P01Check_Seqence(
    const E2E_P01ConfigType * Config,
    E2E_P01CheckStateType * State,
    uint8 ReceivedCounter)
{
    uint8 DeltaCounter;

     
    if (ReceivedCounter >= State->LastValidCounter)
    {
        DeltaCounter = ReceivedCounter - State->LastValidCounter;
    }
    else
    {
        DeltaCounter = 15u + ReceivedCounter - State->LastValidCounter;
    }
     
    if (0u == DeltaCounter)
    {
        if (State->NoNewOrRepeatedDataCounter < 14u)
        {
            State->NoNewOrRepeatedDataCounter++;
        }
        State->Status = E2E_P01STATUS_REPEATED;
    }
    else if (1u == DeltaCounter)
    {
        State->MaxDeltaCounter = Config->MaxDeltaCounterInit;
        State->LastValidCounter = ReceivedCounter;
        State->LostData = 0u;
        if (State->NoNewOrRepeatedDataCounter <= Config->MaxNoNewOrRepeatedData)
        {
            State->NoNewOrRepeatedDataCounter = 0u;
            if (State->SyncCounter > 0u)
            {
                State->SyncCounter--;
                State->Status = E2E_P01STATUS_SYNC;
            }
            else
            {
                State->Status = E2E_P01STATUS_OK;
            }
        }
        else
        {
            State->NoNewOrRepeatedDataCounter = 0u;
            State->SyncCounter = Config->SyncCounterInit;
            State->Status = E2E_P01STATUS_SYNC;
        }
    }
    else if ((DeltaCounter <= State->MaxDeltaCounter))
    {
        State->MaxDeltaCounter = Config->MaxDeltaCounterInit;
        State->LastValidCounter = ReceivedCounter;
        State->LostData = (DeltaCounter - 1u);
        if (State->NoNewOrRepeatedDataCounter <= Config->MaxNoNewOrRepeatedData)
        {
            State->NoNewOrRepeatedDataCounter = 0u;
            if (State->SyncCounter > 0u)
            {
                State->SyncCounter--;
                State->Status = E2E_P01STATUS_SYNC;
            }
            else
            {
                State->Status = E2E_P01STATUS_OKSOMELOST;
            }
        }
        else
        {
            State->NoNewOrRepeatedDataCounter = 0u;
            State->SyncCounter = Config->SyncCounterInit;
            State->Status = E2E_P01STATUS_SYNC;
        }
    }
    else
    {
        State->NoNewOrRepeatedDataCounter = 0u;
        State->SyncCounter = Config->SyncCounterInit;
        if (State->SyncCounter > 0u)
        {
            State->MaxDeltaCounter = Config->MaxDeltaCounterInit;
            State->LastValidCounter = ReceivedCounter;
        }
        State->Status = E2E_P01STATUS_WRONGSEQUENCE;
    }
}
 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 
