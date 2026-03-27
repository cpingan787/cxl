











 












 


 




 


 












 













 



 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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
        
 
        uint8 MaxDeltaCounter;
         
        uint16 Offset;
    } E2E_P22ConfigType;

    typedef struct
    {
         
        uint8 Counter;
    } E2E_P22ProtectStateType;

    typedef enum
    {
        
 
        E2E_P22STATUS_OK = 0x00,
        

 
        E2E_P22STATUS_NONEWDATA = 0x01,
         
        E2E_P22STATUS_ERROR = 0x07,
        
 
        E2E_P22STATUS_REPEATED = 0x08,
        
 
        E2E_P22STATUS_OKSOMELOST = 0x20,
        
 
        E2E_P22STATUS_WRONGSEQUENCE = 0x40
    } E2E_P22CheckStatusType;

    typedef struct
    {
        
 
        E2E_P22CheckStatusType Status;
         
        uint8 Counter;
    } E2E_P22CheckStateType;

    

 
    

 

    extern  Std_ReturnType E2E_P22Protect(
        const E2E_P22ConfigType * ConfigPtr,
        E2E_P22ProtectStateType * StatePtr,
        uint8 * DataPtr,
        uint16 Length);

    extern  Std_ReturnType
        E2E_P22ProtectInit(E2E_P22ProtectStateType * StatePtr);

    extern  Std_ReturnType E2E_P22Check(
        const E2E_P22ConfigType * ConfigPtr,
        E2E_P22CheckStateType * StatePtr,
        const uint8 * DataPtr,
        uint16 Length);

    extern  Std_ReturnType
        E2E_P22CheckInit(E2E_P22CheckStateType * StatePtr);

    extern  E2E_PCheckStatusType
        E2E_P22MapStatusToSM(Std_ReturnType CheckReturn, E2E_P22CheckStatusType Status);



 



 



 



 



 



 



 



 



 
   


 













 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P22Protect(
    const E2E_P22ConfigType * ConfigPtr,
    E2E_P22ProtectStateType * StatePtr,
    uint8 * DataPtr,
    uint16 Length)
{
    Std_ReturnType Ret;
    uint8 Counter;
    uint16 Offset;
    uint8 ComputedCRC;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
        Offset = ConfigPtr->Offset / 8u;
        if ((Length == (ConfigPtr->DataLength / 8u)) && (Length >= (Offset + 2u)))
        {
            Ret = (E2E_SMStateType)0x00u;
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
    if ((E2E_SMStateType)0x00u == Ret)
    {
         
        Offset = ConfigPtr->Offset / 8u;
         
        StatePtr->Counter++;
        StatePtr->Counter %= 16u;
         
        Counter = StatePtr->Counter;
        DataPtr[(ConfigPtr->Offset >> 3u) + 1u] =
            (DataPtr[(ConfigPtr->Offset >> 3u) + 1u] & 0xF0u) + ((StatePtr->Counter));
         
        if (ConfigPtr->Offset > 0u)
        {
            ComputedCRC = Crc_CalculateCRC8H2F(&DataPtr[0], Offset, 0xFFu, 1u);
            ComputedCRC = Crc_CalculateCRC8H2F(&DataPtr[Offset + 1u], Length - Offset - 1u, ComputedCRC, 0u);
        }
        else
        {
            ComputedCRC = Crc_CalculateCRC8H2F(&DataPtr[1], Length - 1u, 0xFFu, 1u);
        }
        ComputedCRC = Crc_CalculateCRC8H2F(&ConfigPtr->DataIDList[Counter], (uint32)1, ComputedCRC, 0u);
         
        DataPtr[ConfigPtr->Offset / 8u] = ComputedCRC;
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P22ProtectInit(E2E_P22ProtectStateType * StatePtr)
{
    Std_ReturnType Ret;

    if (((void *)0) == StatePtr)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        StatePtr->Counter = 0;
        Ret = (E2E_SMStateType)0x00u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 














 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P22Check(
    const E2E_P22ConfigType * ConfigPtr,
    E2E_P22CheckStateType * StatePtr,
    const uint8 * DataPtr,
    uint16 Length)
{
    Std_ReturnType Ret;
    uint16 Offset = 0;
    uint8 ReceivedCRC = 0;
    uint8 ReceivedCounter = 0;
    uint8 DeltaCounter;
    uint8 ComputedCRC = 0;
    boolean NewDataAvailable;

     
    NewDataAvailable = 0u;
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)))
    {
        if (((DataPtr != ((void *)0)) && (Length != 0u)) || ((((void *)0) == DataPtr) && (0u == Length)))
        {
            Offset = ConfigPtr->Offset / 8u;
            if (DataPtr != ((void *)0))
            {
                if ((Length == (ConfigPtr->DataLength / 8u)) && (Length >= (Offset + 2u)))
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
    }
    else
    {
        Ret = (E2E_SMStateType)0x13u;
    }

    if ((E2E_SMStateType)0x00u == Ret)
    {
        if (((void *)0) == DataPtr)
        {
            StatePtr->Status = E2E_P22STATUS_NONEWDATA;
        }
        else
        {
             
            ReceivedCounter = DataPtr[(ConfigPtr->Offset >> 3u) + 1u] & 0x0Fu;
             
            ReceivedCRC = DataPtr[ConfigPtr->Offset / 8u];
             
            if (ConfigPtr->Offset > 0u)
            {
                ComputedCRC = Crc_CalculateCRC8H2F(&DataPtr[0], Offset, 0xFFu, 1u);
                ComputedCRC = Crc_CalculateCRC8H2F(&DataPtr[Offset + 1u], Length - Offset - 1u, ComputedCRC, 0u);
            }
            else
            {
                ComputedCRC = Crc_CalculateCRC8H2F(&DataPtr[1], Length - 1u, 0xFFu, 1u);
            }
            ComputedCRC = Crc_CalculateCRC8H2F(&ConfigPtr->DataIDList[ReceivedCounter], 1, ComputedCRC, 0u);
        }

         
        if (1u == NewDataAvailable)
        {
            if (ReceivedCRC == ComputedCRC)
            {
                 
                if (ReceivedCounter >= StatePtr->Counter)
                {
                    DeltaCounter = ReceivedCounter - StatePtr->Counter;
                }
                else
                {
                    DeltaCounter = 0xFu + ReceivedCounter - StatePtr->Counter + 1u;
                }
                if (DeltaCounter <= ConfigPtr->MaxDeltaCounter)
                {
                    if (DeltaCounter > 0u)
                    {
                        if (1u == DeltaCounter)
                        {
                            StatePtr->Status = E2E_P22STATUS_OK;
                        }
                        else
                        {
                            StatePtr->Status = E2E_P22STATUS_OKSOMELOST;
                        }
                    }
                    if (0u == DeltaCounter)
                    {
                        StatePtr->Status = E2E_P22STATUS_REPEATED;
                    }
                }
                else
                {
                    StatePtr->Status = E2E_P22STATUS_WRONGSEQUENCE;
                }
                StatePtr->Counter = ReceivedCounter;
            }
            else
            {
                StatePtr->Status = E2E_P22STATUS_ERROR;
            }
        }
        else
        {
            StatePtr->Status = E2E_P22STATUS_NONEWDATA;
        }
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 











 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P22CheckInit(E2E_P22CheckStateType * StatePtr)
{
    Std_ReturnType Ret;

    if (((void *)0) == StatePtr)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        StatePtr->Counter = 0xF;
        StatePtr->Status = E2E_P22STATUS_ERROR;
        Ret = (E2E_SMStateType)0x00u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 








 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 E2E_PCheckStatusType E2E_P22MapStatusToSM(Std_ReturnType CheckReturn, E2E_P22CheckStatusType Status)
{
    E2E_PCheckStatusType Ret;

    if (CheckReturn != (E2E_SMStateType)0x00u)
    {
        Ret = (E2E_PCheckStatusType)0x03u;
    }
    else
    {
        switch (Status)
        {
        case E2E_P22STATUS_OK:
        case E2E_P22STATUS_OKSOMELOST:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P22STATUS_ERROR:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P22STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P22STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P22STATUS_WRONGSEQUENCE:
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




 

 
 
