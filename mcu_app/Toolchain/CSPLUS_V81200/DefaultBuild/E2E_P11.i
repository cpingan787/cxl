











 












 


 



 


 












 













 



 


 












 












 


 










 


 



 

























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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

    

 
    

 
    typedef enum
    {
        
 
        E2E_P11_DATAID_BOTH = 0,
        


 
        E2E_P11_DATAID_NIBBLE = 3
    } E2E_P11DataIDMode;

    typedef struct
    {
         
        uint16 DataLength;
         
        uint16 DataID;
        
 
        uint8 MaxDeltaCounter;
        E2E_P11DataIDMode DataIDMode;
         
        uint16 CRCOffset;
        
 
        uint16 CounterOffset;
         
        uint16 DataIDNibbleOffset;
    } E2E_P11ConfigType;

    typedef struct
    {
         
        uint8 Counter;
    } E2E_P11ProtectStateType;

    typedef enum
    {
        
 
        E2E_P11STATUS_OK = 0x00,
        

 
        E2E_P11STATUS_NONEWDATA = 0x01,
         
        E2E_P11STATUS_ERROR = 0x07,
        
 
        E2E_P11STATUS_REPEATED = 0x08,
        
 
        E2E_P11STATUS_OKSOMELOST = 0x20,
        
 
        E2E_P11STATUS_WRONGSEQUENCE = 0x40
    } E2E_P11CheckStatusType;

    typedef struct
    {
        
 
        E2E_P11CheckStatusType Status;
         
        uint8 Counter;
    } E2E_P11CheckStateType;

    

 
    

 

    extern  Std_ReturnType E2E_P11Protect(
        const E2E_P11ConfigType * ConfigPtr,
        E2E_P11ProtectStateType * StatePtr,
        uint8 * DataPtr,
        uint16 Length);

    extern  Std_ReturnType
        E2E_P11ProtectInit(E2E_P11ProtectStateType * StatePtr);

    extern  Std_ReturnType E2E_P11Check(
        const E2E_P11ConfigType * ConfigPtr,
        E2E_P11CheckStateType * StatePtr,
        const uint8 * DataPtr,
        uint16 Length);

    extern  Std_ReturnType
        E2E_P11CheckInit(E2E_P11CheckStateType * StatePtr);

    extern  E2E_PCheckStatusType
        E2E_P11MapStatusToSM(Std_ReturnType CheckReturn, E2E_P11CheckStatusType Status);



 



 



 



 
   


 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
static void E2E_P11Check_Seqence(
    const E2E_P11ConfigType * ConfigPtr,
    E2E_P11CheckStateType * StatePtr,
    uint8 ReceivedCounter);












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 


 



 



 



 



 













 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType
E2E_P11Protect(
    const E2E_P11ConfigType * ConfigPtr,
    E2E_P11ProtectStateType * StatePtr,
    uint8 * DataPtr,
    uint16 Length)
{
    Std_ReturnType Ret;
    uint16 Offset;
    uint8 ComputedCRC = 0;
    uint8 DataID_Hbyte;
    uint8 DataID_Lbyte;
    uint8 CRC_Data = 0;

     
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)) && (DataPtr != ((void *)0)))
    {
        if ((Length == (ConfigPtr->DataLength / 8u)))
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
        DataID_Lbyte = (uint8)(ConfigPtr->DataID);
        DataID_Hbyte = (uint8)(ConfigPtr->DataID >> 8u);
         
        if (E2E_P11_DATAID_NIBBLE == ConfigPtr->DataIDMode)
        {
            DataPtr[ConfigPtr->DataIDNibbleOffset >> 3u] =
                (DataPtr[ConfigPtr->DataIDNibbleOffset >> 3u]
                 & (0xFu << (ConfigPtr->CounterOffset & 0x7u)))  
                + (uint8)(((ConfigPtr->DataID & 0x0F00u) >> 8u) << (ConfigPtr->DataIDNibbleOffset & 0x7u));
             
            DataPtr[ConfigPtr->CounterOffset >> 3u] =
                ((DataPtr[ConfigPtr->CounterOffset >> 3u])
                 & (0xFu << (ConfigPtr->DataIDNibbleOffset & 0x7u)))  
                + ((StatePtr->Counter & 0xFu) << (ConfigPtr->CounterOffset & 0x7u));
        }
        else
        {
             
            DataPtr[ConfigPtr->CounterOffset >> 3u] =
                (DataPtr[ConfigPtr->CounterOffset >> 3u]
                 & (0xF0u << (ConfigPtr->CounterOffset & 0x7u)))  
                + ((StatePtr->Counter & 0xFu) << (ConfigPtr->CounterOffset & 0x7u));
        }
         
        Offset = ConfigPtr->CRCOffset / 8u;
        if (E2E_P11_DATAID_BOTH == ConfigPtr->DataIDMode)
        {
            ComputedCRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFFu, 0u);
            ComputedCRC = Crc_CalculateCRC8(&DataID_Hbyte, 1, ComputedCRC, 0u);
        }
        else if (E2E_P11_DATAID_NIBBLE == ConfigPtr->DataIDMode)
        {
            ComputedCRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFFu, 0u);
            ComputedCRC = Crc_CalculateCRC8(&CRC_Data, 1, ComputedCRC, 0u);
        }
        else
        {
             
        }
        if (Offset > 0u)
        {
            ComputedCRC = Crc_CalculateCRC8(&DataPtr[0], Offset, ComputedCRC, 0u);
            if (Length > (Offset + 1u))
            {
                ComputedCRC = Crc_CalculateCRC8(&DataPtr[Offset + 1u], Length - Offset - 1u, ComputedCRC, 0u);
            }
        }
        else
        {
            ComputedCRC = Crc_CalculateCRC8(&DataPtr[1], Length - 1u, ComputedCRC, 0u);
        }
         
        DataPtr[ConfigPtr->CRCOffset / 8u] = ComputedCRC;
         
        StatePtr->Counter++;
        StatePtr->Counter %= 15u;
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 












 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P11ProtectInit(E2E_P11ProtectStateType * StatePtr)
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
E2E_P11Check(
     
    const E2E_P11ConfigType * ConfigPtr,
    E2E_P11CheckStateType * StatePtr,
    const uint8 * DataPtr,
    uint16 Length)
{
    Std_ReturnType Ret;
    boolean NewDataAvailable;
    uint8 ReceivedNibble = 0;
    uint8 ReceivedCounter = 0;
    uint8 ReceivedCRC = 0;
    uint16 Offset;
    uint8 ComputedCRC = 0;
    uint8 DataID_Lbyte;
    uint8 DataID_Hbyte;
    uint8 CRC_Data = 0;

     
    NewDataAvailable = 0u;
    if ((ConfigPtr != ((void *)0)) && (StatePtr != ((void *)0)))
    {
        if (((DataPtr != ((void *)0)) && (Length != 0u)) || ((((void *)0) == DataPtr) && (0u == Length)))
        {
            if (DataPtr != ((void *)0))
            {
                if (Length == ((ConfigPtr->DataLength) / 8u))
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
            StatePtr->Status = E2E_P11STATUS_NONEWDATA;
        }
        else
        {
            DataID_Lbyte = (uint8)(ConfigPtr->DataID);
            DataID_Hbyte = (uint8)(ConfigPtr->DataID >> 8u);
             
            ReceivedNibble =
                (DataPtr[(ConfigPtr->DataIDNibbleOffset >> 3u)] >> (ConfigPtr->DataIDNibbleOffset & 0x7u)) & 0xFu;
             
            ReceivedCounter = (DataPtr[(ConfigPtr->CounterOffset >> 3u)] >> (ConfigPtr->CounterOffset & 0x7u)) & 0xFu;
            if (ReceivedCounter >= 15u)
            {
                Ret = (E2E_SMStateType)0x17u;
                return Ret;
            }
             
            ReceivedCRC = DataPtr[(ConfigPtr->CRCOffset) / 8u];
             
            Offset = ConfigPtr->CRCOffset / 8u;
            if (E2E_P11_DATAID_BOTH == ConfigPtr->DataIDMode)
            {
                ComputedCRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFFu, 0u);
                ComputedCRC = Crc_CalculateCRC8(&DataID_Hbyte, 1, ComputedCRC, 0u);
            }
            else if (E2E_P11_DATAID_NIBBLE == ConfigPtr->DataIDMode)
            {
                ComputedCRC = Crc_CalculateCRC8(&DataID_Lbyte, 1, 0xFFu, 0u);
                ComputedCRC = Crc_CalculateCRC8(&CRC_Data, 1, ComputedCRC, 0u);
            }
            else
            {
                 
            }
            if (Offset > 0u)
            {
                ComputedCRC = Crc_CalculateCRC8(&DataPtr[0], Offset, ComputedCRC, 0u);
                if (Length > (Offset + 1u))
                {
                    ComputedCRC = Crc_CalculateCRC8(&DataPtr[Offset + 1u], Length - Offset - 1u, ComputedCRC, 0u);
                }
            }
            else
            {
                ComputedCRC = Crc_CalculateCRC8(&DataPtr[1], Length - 1u, ComputedCRC, 0u);
            }
        }
         
        if (1u == NewDataAvailable)
        {
            if (ReceivedCRC == ComputedCRC)
            {
                if (((E2E_P11_DATAID_NIBBLE == ConfigPtr->DataIDMode)
                     && (ReceivedNibble == ((uint8)(ConfigPtr->DataID >> 8u) & 0x0Fu)))
                    || (E2E_P11_DATAID_BOTH == ConfigPtr->DataIDMode))
                {
                    E2E_P11Check_Seqence(ConfigPtr, StatePtr, ReceivedCounter);
                }
                else
                {
                    StatePtr->Status = E2E_P11STATUS_ERROR;
                }
            }
            else
            {
                StatePtr->Status = E2E_P11STATUS_ERROR;
            }
        }
        else
        {
            StatePtr->Status = E2E_P11STATUS_NONEWDATA;
        }
    }

    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 










 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 Std_ReturnType E2E_P11CheckInit(E2E_P11CheckStateType * StatePtr)
{
    Std_ReturnType Ret;

    if (((void *)0) == StatePtr)
    {
        Ret = (E2E_SMStateType)0x13u;
    }
    else
    {
        StatePtr->Counter = 0xEu;
        StatePtr->Status = E2E_P11STATUS_ERROR;
        Ret = (E2E_SMStateType)0x00u;
    }
    return Ret;
}












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 








 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
 
 E2E_PCheckStatusType E2E_P11MapStatusToSM(Std_ReturnType CheckReturn, E2E_P11CheckStatusType Status)
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
        case E2E_P11STATUS_OK:
        case E2E_P11STATUS_OKSOMELOST:
            Ret = (E2E_PCheckStatusType)0x00u;
            break;
        case E2E_P11STATUS_ERROR:
            Ret = (E2E_PCheckStatusType)0x03u;
            break;
        case E2E_P11STATUS_REPEATED:
            Ret = (E2E_PCheckStatusType)0x01u;
            break;
        case E2E_P11STATUS_NONEWDATA:
            Ret = (E2E_PCheckStatusType)0x05u;
            break;
        case E2E_P11STATUS_WRONGSEQUENCE:
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




 

 
 
static void E2E_P11Check_Seqence(
    const E2E_P11ConfigType * ConfigPtr,
    E2E_P11CheckStateType * StatePtr,
    uint8 ReceivedCounter)
{
    uint8 DeltaCounter;

     
    if (ReceivedCounter >= StatePtr->Counter)
    {
        DeltaCounter = ReceivedCounter - StatePtr->Counter;
    }
    else
    {
        DeltaCounter = 0xEu + ReceivedCounter - StatePtr->Counter + 1u;
    }
    if (DeltaCounter <= ConfigPtr->MaxDeltaCounter)
    {
        if (DeltaCounter > 0u)
        {
            if (1u == DeltaCounter)
            {
                StatePtr->Status = E2E_P11STATUS_OK;
            }
            else
            {
                StatePtr->Status = E2E_P11STATUS_OKSOMELOST;
            }
        }
        if (0u == DeltaCounter)
        {
            StatePtr->Status = E2E_P11STATUS_REPEATED;
        }
    }
    else
    {
        StatePtr->Status = E2E_P11STATUS_WRONGSEQUENCE;
    }
    StatePtr->Counter = ReceivedCounter;
}
   












 












 


 



 
 

   

 

























 




 



 

 
 
   #pragma section




 

 
 
