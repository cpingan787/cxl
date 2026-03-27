











 












 


 



 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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













 













 



 


 
    

 
    

 
    typedef struct
    {
         
        uint16 DataLength;
         
        uint8 DataIDList[16];
         
        uint8 MaxDeltaCounterInit;
        
 
        uint8 MaxNoNewOrRepeatedData;
        
 
        uint8 SyncCounterInit;
         
        uint16 Offset;
    } E2E_P02ConfigType;

    typedef struct
    {
         
        uint8 Counter;
    } E2E_P02ProtectStateType;

    typedef enum
    {
        


 
        E2E_P02STATUS_OK = 0x00,
        

 
        E2E_P02STATUS_NONEWDATA = 0x01,
         
        E2E_P02STATUS_WRONGCRC = 0x02,
         
        E2E_P02STATUS_SYNC = 0x03,
        

 
        E2E_P02STATUS_INITIAL = 0x04,
        

 
        E2E_P02STATUS_REPEATED = 0x08,
        

 
        E2E_P02STATUS_OKSOMELOST = 0x20,
        

 
        E2E_P02STATUS_WRONGSEQUENCE = 0x40
    } E2E_P02CheckStatusType;

    typedef struct
    {
         
        uint8 LastValidCounter;
        uint8 MaxDeltaCounter;
        
 
        boolean WaitForFirstData;
        boolean NewDataAvailable;
         
        uint8 LostData;
         
        E2E_P02CheckStatusType Status;
        

 
        uint8 SyncCounter;
        
 
        uint8 NoNewOrRepeatedDataCounter;
    } E2E_P02CheckStateType;
    

 
    

 
    











 

    extern  Std_ReturnType E2E_P02Protect(
        const E2E_P02ConfigType * ConfigPtr,
        E2E_P02ProtectStateType * StatePtr,
        uint8 * DataPtr);

    









 

    extern  Std_ReturnType
        E2E_P02ProtectInit(E2E_P02ProtectStateType * StatePtr);

    











 

    extern  Std_ReturnType E2E_P02Check(
        const E2E_P02ConfigType * ConfigPtr,
        E2E_P02CheckStateType * StatePtr,
        const uint8 * DataPtr);

    









 

    extern  Std_ReturnType
        E2E_P02CheckInit(E2E_P02CheckStateType * StatePtr);

    








 

    extern  E2E_PCheckStatusType
        E2E_P02MapStatusToSM(Std_ReturnType CheckReturn, E2E_P02CheckStatusType Status, boolean ProfileBehavior);




 



 



 


 



 
   












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType E2E_P02ProtectVerifyInputs(
    const E2E_P02ConfigType * ConfigPtr,
    const E2E_P02ProtectStateType * StatePtr,
    const uint8 * DataPtr);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 













 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static  Std_ReturnType E2E_P02CheckVerifyInputs(
    const E2E_P02ConfigType * ConfigPtr,
    const E2E_P02CheckStateType * StatePtr,
    const uint8 * DataPtr);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 


 



 



 



 



 












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P02Protect(
    const E2E_P02ConfigType * ConfigPtr,
    E2E_P02ProtectStateType * StatePtr,
    uint8 * DataPtr)
{
    uint8 Ret = E2E_P02ProtectVerifyInputs(ConfigPtr, StatePtr, DataPtr);
    if ((E2E_SMStateType)0x00u == Ret)
    {
        uint8 DataID;
        uint8 CRC;

        if ((((void *)0) == ConfigPtr) || (((void *)0) == StatePtr) || (((void *)0) == DataPtr))
        {
            Ret = (E2E_SMStateType)0x13u;
        }
        else
        {
            if (StatePtr->Counter < 15u)
            {
                StatePtr->Counter++;
            }
            else
            {
                StatePtr->Counter = 0;
            }
            DataPtr[1] = (DataPtr[1] & 0xF0u) | (StatePtr->Counter);
            DataID = ConfigPtr->DataIDList[StatePtr->Counter];
            CRC = Crc_CalculateCRC8H2F(&DataPtr[1], (uint32)((ConfigPtr->DataLength / 8u) - 1u), 0xFF, 1u);
            CRC = Crc_CalculateCRC8H2F(&DataID, 1, CRC, 0u);
            DataPtr[0] = CRC;
        }
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P02ProtectInit(E2E_P02ProtectStateType * StatePtr)
{
    uint8 Ret;
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




 

 
 
static  void AnalysisDeltaCounter(
    sint8 DeltaCounter,
    E2E_P02CheckStateType * StatePtr,
    const E2E_P02ConfigType * ConfigPtr,
    uint8 ReceivedCounter)
{
    if (0 == DeltaCounter)
    {
        if (StatePtr->NoNewOrRepeatedDataCounter < 15u)
        {
            StatePtr->NoNewOrRepeatedDataCounter++;
        }
        StatePtr->Status = E2E_P02STATUS_REPEATED;
    }
    else if (1 == DeltaCounter)
    {
        StatePtr->MaxDeltaCounter = ConfigPtr->MaxDeltaCounterInit;
        StatePtr->LastValidCounter = ReceivedCounter;
        StatePtr->LostData = 0;
        if (StatePtr->NoNewOrRepeatedDataCounter <= ConfigPtr->MaxNoNewOrRepeatedData)
        {
            StatePtr->NoNewOrRepeatedDataCounter = 0;
            if (StatePtr->SyncCounter > 0u)
            {
                StatePtr->SyncCounter--;
                StatePtr->Status = E2E_P02STATUS_SYNC;
            }
            else
            {
                StatePtr->Status = E2E_P02STATUS_OK;
            }
        }
        else
        {
            StatePtr->NoNewOrRepeatedDataCounter = 0;
            StatePtr->SyncCounter = ConfigPtr->SyncCounterInit;
            StatePtr->Status = E2E_P02STATUS_SYNC;
        }
    }
    else if ((1 < DeltaCounter) && ((uint8)DeltaCounter <= StatePtr->MaxDeltaCounter))
    {
        StatePtr->MaxDeltaCounter = ConfigPtr->MaxDeltaCounterInit;
        StatePtr->LastValidCounter = ReceivedCounter;
        StatePtr->LostData = ((uint8)DeltaCounter - 1u);
        if (StatePtr->NoNewOrRepeatedDataCounter <= ConfigPtr->MaxNoNewOrRepeatedData)
        {
            StatePtr->NoNewOrRepeatedDataCounter = 0;
            if (StatePtr->SyncCounter > 0u)
            {
                StatePtr->SyncCounter--;
                StatePtr->Status = E2E_P02STATUS_SYNC;
            }
            else
            {
                StatePtr->Status = E2E_P02STATUS_OKSOMELOST;
            }
        }
        else
        {
            StatePtr->NoNewOrRepeatedDataCounter = 0;
            StatePtr->SyncCounter = ConfigPtr->SyncCounterInit;
            StatePtr->Status = E2E_P02STATUS_SYNC;
        }
    }
    else
    {
        StatePtr->NoNewOrRepeatedDataCounter = 0;
        StatePtr->SyncCounter = ConfigPtr->SyncCounterInit;
        if (StatePtr->SyncCounter > 0u)
        {
            StatePtr->MaxDeltaCounter = ConfigPtr->MaxDeltaCounterInit;
            StatePtr->LastValidCounter = ReceivedCounter;
            StatePtr->Status = E2E_P02STATUS_WRONGSEQUENCE;
        }
    }
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P02Check(
    const E2E_P02ConfigType * ConfigPtr,
    E2E_P02CheckStateType * StatePtr,
    const uint8 * DataPtr)
{
    Std_ReturnType Ret = E2E_P02CheckVerifyInputs(ConfigPtr, StatePtr, DataPtr);
    if ((E2E_SMStateType)0x00u == Ret)
    {
        uint8 ReceivedCounter;
        uint8 DataID;
        uint8 CalcualtedCRC;
        sint8 DeltaCounter;

        if (StatePtr->MaxDeltaCounter < 15u)
        {
            StatePtr->MaxDeltaCounter++;
        }

        if (1u == StatePtr->NewDataAvailable)
        {
            ReceivedCounter = (DataPtr[1] & 0xFu);
            DataID = ConfigPtr->DataIDList[ReceivedCounter];
            CalcualtedCRC = Crc_CalculateCRC8H2F(&DataPtr[1], (uint32)((ConfigPtr->DataLength / 8u) - 1u), 0xFF, 1u);
            CalcualtedCRC = Crc_CalculateCRC8H2F(&DataID, 1, CalcualtedCRC, 0u);
             
            if (CalcualtedCRC == DataPtr[0])
            {
                if (1u == StatePtr->WaitForFirstData)
                {
                    StatePtr->WaitForFirstData = 0u;
                    StatePtr->MaxDeltaCounter = ConfigPtr->MaxDeltaCounterInit;
                    StatePtr->LastValidCounter = ReceivedCounter;
                    StatePtr->Status = E2E_P02STATUS_INITIAL;
                }
                else
                {
                     
                    DeltaCounter = (sint8)ReceivedCounter - (sint8)StatePtr->LastValidCounter;
                    if (DeltaCounter < 0)
                    {
                        DeltaCounter = DeltaCounter + 16;
                    }
                    AnalysisDeltaCounter(DeltaCounter, StatePtr, ConfigPtr, ReceivedCounter);
                }
            }
            else
            {
                StatePtr->Status = E2E_P02STATUS_WRONGCRC;
            }
        }
        else
        {
            if (StatePtr->NoNewOrRepeatedDataCounter < 15u)
            {
                StatePtr->NoNewOrRepeatedDataCounter++;
            }
            StatePtr->Status = E2E_P02STATUS_NONEWDATA;
        }
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P02CheckInit(E2E_P02CheckStateType * StatePtr)
{
    uint8 Ret;

    Ret = (E2E_SMStateType)0x00u;
     
    if (((void *)0) == StatePtr)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        StatePtr->LastValidCounter = 0;
        StatePtr->MaxDeltaCounter = 0;
        StatePtr->WaitForFirstData = 1u;
        StatePtr->NewDataAvailable = 1u;
        StatePtr->LostData = 0;
        StatePtr->Status = E2E_P02STATUS_NONEWDATA;
        StatePtr->NoNewOrRepeatedDataCounter = 0;
        StatePtr->SyncCounter = 0;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 









 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 E2E_PCheckStatusType
E2E_P02MapStatusToSM(Std_ReturnType CheckReturn, E2E_P02CheckStatusType Status, boolean ProfileBehavior)
{
    E2E_PCheckStatusType Ret;

     
    if (CheckReturn != (E2E_SMStateType)0x00u)
    {
        Ret = (E2E_PCheckStatusType)0x03u;
    }
     
    else if ((boolean)1 == ProfileBehavior)
    {
        switch (Status)
        {
        case E2E_P02STATUS_OK:
        case E2E_P02STATUS_OKSOMELOST:
        case E2E_P02STATUS_SYNC:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P02STATUS_WRONGCRC:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P02STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P02STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P02STATUS_WRONGSEQUENCE:
        case E2E_P02STATUS_INITIAL:
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
        case E2E_P02STATUS_OK:
        case E2E_P02STATUS_OKSOMELOST:
        case E2E_P02STATUS_INITIAL:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P02STATUS_WRONGCRC:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P02STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P02STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P02STATUS_WRONGSEQUENCE:
        case E2E_P02STATUS_SYNC:
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




 

 
 
static  Std_ReturnType E2E_P02ProtectVerifyInputs(
    const E2E_P02ConfigType * ConfigPtr,
    const E2E_P02ProtectStateType * StatePtr,
    const uint8 * DataPtr)
{
    Std_ReturnType ret = (E2E_SMStateType)0x13u;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
         
        if (StatePtr->Counter > 15u)
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




 

 
 
static  Std_ReturnType E2E_P02CheckVerifyInputs(
    const E2E_P02ConfigType * ConfigPtr,
    const E2E_P02CheckStateType * StatePtr,
    const uint8 * DataPtr)
{
    Std_ReturnType ret = (E2E_SMStateType)0x13u;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
        if ((StatePtr->LastValidCounter > 15u)
            || (StatePtr->MaxDeltaCounter > 15u)
            || (StatePtr->SyncCounter > ConfigPtr->SyncCounterInit)
            || (StatePtr->NoNewOrRepeatedDataCounter > 15u))
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




 

 
 
