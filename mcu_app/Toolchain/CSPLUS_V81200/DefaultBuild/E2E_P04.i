











 












 


 




 


 












 













 



 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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
         
        uint32 DataID;
        

 
        uint16 Offset;
        
 
        uint16 MinDataLength;
        
 
        uint16 MaxDataLength;
         
        uint16 MaxDeltaCounter;
    } E2E_P04ConfigType;

    typedef struct
    {
         
        uint16 Counter;
    } E2E_P04ProtectStateType;

    typedef enum
    {
        
 
        E2E_P04STATUS_OK = 0x00,
        

 
        E2E_P04STATUS_NONEWDATA = 0x01,
        
 
        E2E_P04STATUS_ERROR = 0x07,
        
 
        E2E_P04STATUS_REPEATED = 0x08,
        
 
        E2E_P04STATUS_OKSOMELOST = 0x20,
        
 
        E2E_P04STATUS_WRONGSEQUENCE = 0x40
    } E2E_P04CheckStatusType;

    typedef struct
    {
        
 
        E2E_P04CheckStatusType Status;
         
        uint16 Counter;
    } E2E_P04CheckStateType;

    

 
    

 
    












 

    extern  Std_ReturnType E2E_P04Protect(
        const E2E_P04ConfigType * ConfigPtr,
        E2E_P04ProtectStateType * StatePtr,
        uint8 * DataPtr,
        uint16 Length);

    









 

    extern  Std_ReturnType
        E2E_P04ProtectInit(E2E_P04ProtectStateType * StatePtr);

    












 

    extern  Std_ReturnType E2E_P04Check(
        const E2E_P04ConfigType * ConfigPtr,
        E2E_P04CheckStateType * StatePtr,
        const uint8 * DataPtr,
        uint16 Length);

    









 

    extern  Std_ReturnType
        E2E_P04CheckInit(E2E_P04CheckStateType * StatePtr);

    







 

    extern  E2E_PCheckStatusType
        E2E_P04MapStatusToSM(Std_ReturnType CheckReturn, E2E_P04CheckStatusType Status);



 



 



 



 



 
   
static void E2E_P04Check_Seqence(
    const E2E_P04ConfigType * ConfigPtr,
    E2E_P04CheckStateType * StatePtr,
    uint16 ReceivedCounter);


 



 



 



 



 













 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P04Protect(
    const E2E_P04ConfigType * ConfigPtr,
    E2E_P04ProtectStateType * StatePtr,
    uint8 * DataPtr,
    uint16 Length)
{
    Std_ReturnType Ret = (E2E_SMStateType)0x00u;
    uint16 Offset;
    uint32 ComputedCRC;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
        if ((Length >= (ConfigPtr->MinDataLength / 8u)) && (Length <= (ConfigPtr->MaxDataLength / 8u)))
        {
             
            Offset = ConfigPtr->Offset / 8u;
             
            DataPtr[Offset] = (uint8)(Length >> 8u);
            DataPtr[Offset + 1u] = (uint8)Length;
             
            DataPtr[Offset + 2u] = (uint8)(StatePtr->Counter >> 8u);
            DataPtr[Offset + 3u] = (uint8)(StatePtr->Counter);
             
            DataPtr[Offset + 4u] = (uint8)(ConfigPtr->DataID >> 24u);
            DataPtr[Offset + 5u] = (uint8)(ConfigPtr->DataID >> 16u);
            DataPtr[Offset + 6u] = (uint8)(ConfigPtr->DataID >> 8u);
            DataPtr[Offset + 7u] = (uint8)(ConfigPtr->DataID);
             
            ComputedCRC = Crc_CalculateCRC32P4(&DataPtr[0], (uint32)(Offset + 8u), 0xFFFFFFFFu, 1u);
            if ((Offset + 12u) < Length)
            {
                ComputedCRC =
                    Crc_CalculateCRC32P4(&DataPtr[Offset + 12u], (uint32)(Length - Offset - 12u), ComputedCRC, 0u);
            }
             
            DataPtr[Offset + 8u] = (uint8)(ComputedCRC >> 24u);
            DataPtr[Offset + 9u] = (uint8)(ComputedCRC >> 16u);
            DataPtr[Offset + 10u] = (uint8)(ComputedCRC >> 8u);
            DataPtr[Offset + 11u] = (uint8)(ComputedCRC);
             
            StatePtr->Counter++;
        }
        else
        {
            Ret = (E2E_SMStateType)0x17u;
        }
    }
    else
    {
        Ret = (E2E_SMStateType)0x13u;
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P04ProtectInit(E2E_P04ProtectStateType * StatePtr)
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
E2E_P04Check(
    const E2E_P04ConfigType * ConfigPtr,
    E2E_P04CheckStateType * StatePtr,
    const uint8 * DataPtr,
    uint16 Length)
{
    Std_ReturnType Ret;
    uint16 Offset;
    uint16 ReceivedLength;
    uint16 ReceivedCounter;
    uint32 ReceivedDataID;
    uint32 ReceivedCRC;
    uint32 ComputedCRC;
    boolean NewDataAvailable;

    NewDataAvailable = 0u;
    if ((((void *)0) == ConfigPtr) || (((void *)0) == StatePtr))
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        if (((DataPtr != ((void *)0)) && (Length != 0u)) || ((((void *)0) == DataPtr) && (0u == Length)))
        {
            if (((void *)0) != DataPtr)
            {
                if ((Length >= (ConfigPtr->MinDataLength / 8u)) && (Length <= (ConfigPtr->MaxDataLength / 8u)))
                {
                    NewDataAvailable = 1u;
                    Ret = (E2E_SMStateType)0x00u;
                }
                else
                {
                    Ret = (E2E_SMStateType)0x17u;
                }
            }
            else
            {
                Ret = (E2E_SMStateType)0x00u;
            }
        }
        else
        {
            Ret = (E2E_SMStateType)0x17u;
        }
        if ((E2E_SMStateType)0x00u == Ret)
        {
            if (1u == NewDataAvailable)
            {
                 
                Offset = ConfigPtr->Offset / 8u;
                 
                ReceivedLength = ((uint16)DataPtr[Offset] << 8u) + (uint16)(DataPtr[Offset + 1u]);
                 
                ReceivedCounter = ((uint16)DataPtr[Offset + 2u] << 8u) + (uint16)(DataPtr[Offset + 3u]);
                 
                ReceivedDataID = ((uint32)DataPtr[Offset + 4u] << 24u) + ((uint32)DataPtr[Offset + 5u] << 16u)
                                 + ((uint32)DataPtr[Offset + 6u] << 8u) + (uint32)(DataPtr[Offset + 7u]);
                 
                ReceivedCRC = ((uint32)DataPtr[Offset + 8u] << 24u) + ((uint32)DataPtr[Offset + 9u] << 16u)
                              + ((uint32)DataPtr[Offset + 10u] << 8u) + ((uint32)DataPtr[Offset + 11u]);
                 
                ComputedCRC = Crc_CalculateCRC32P4(&DataPtr[0], (uint32)(Offset + 8u), 0xFFFFFFFFu, 1u);
                if ((Offset + 12u) < Length)
                {
                    ComputedCRC = Crc_CalculateCRC32P4(
                        &DataPtr[Offset + 12u],
                        (uint32)(Length - Offset - 12u),
                        ComputedCRC,
                        0u);
                }
                 
                if (ReceivedCRC == ComputedCRC)
                {
                    if (ReceivedDataID == ConfigPtr->DataID)
                    {
                        if (ReceivedLength == Length)
                        {
                            E2E_P04Check_Seqence(ConfigPtr, StatePtr, ReceivedCounter);
                        }
                        else
                        {
                            StatePtr->Status = E2E_P04STATUS_ERROR;
                        }
                    }
                    else
                    {
                        StatePtr->Status = E2E_P04STATUS_ERROR;
                    }
                }
                else
                {
                    StatePtr->Status = E2E_P04STATUS_ERROR;
                }
            }
            else
            {
                 
                StatePtr->Status = E2E_P04STATUS_NONEWDATA;
            }
        }
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P04CheckInit(E2E_P04CheckStateType * StatePtr)
{
    uint8 Ret;

     
    if (((void *)0) == StatePtr)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        StatePtr->Counter = 0xFFFF;
        StatePtr->Status = E2E_P04STATUS_ERROR;
        Ret = (E2E_SMStateType)0x00u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 







 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 E2E_PCheckStatusType E2E_P04MapStatusToSM(Std_ReturnType CheckReturn, E2E_P04CheckStatusType Status)
{
    E2E_PCheckStatusType Ret;

     
    if ((E2E_SMStateType)0x00u != CheckReturn)
    {
        Ret = (E2E_PCheckStatusType)0x03u;
    }
     
    else
    {
        switch (Status)
        {
        case E2E_P04STATUS_OK:
        case E2E_P04STATUS_OKSOMELOST:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P04STATUS_ERROR:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P04STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P04STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P04STATUS_WRONGSEQUENCE:
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




 

 
 
static void E2E_P04Check_Seqence(
    const E2E_P04ConfigType * ConfigPtr,
    E2E_P04CheckStateType * StatePtr,
    uint16 ReceivedCounter)
{
    sint16 DeltaCounter;
    
 
    DeltaCounter = (sint16)ReceivedCounter - (sint16)StatePtr->Counter;

    if ((DeltaCounter <= (sint16)ConfigPtr->MaxDeltaCounter) && (DeltaCounter >= (sint16)0))
    {
        if (DeltaCounter > 0)
        {
            if (1 == DeltaCounter)
            {
                StatePtr->Status = E2E_P04STATUS_OK;
            }
            else
            {
                StatePtr->Status = E2E_P04STATUS_OKSOMELOST;
            }
        }
        else
        {
            StatePtr->Status = E2E_P04STATUS_REPEATED;
        }
    }
    else
    {
        StatePtr->Status = E2E_P04STATUS_WRONGSEQUENCE;
    }
    StatePtr->Counter = ReceivedCounter;
}
 












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 
