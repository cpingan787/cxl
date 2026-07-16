


















 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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



 

 













 
 
 



 

struct CanTp_ConfigStructType;
typedef struct CanTp_ConfigStructType CanTp_ConfigType;

extern const struct CanTp_ConfigStructType CanTp_Config;

 







 

 

 



extern uint8 CanTp_MainState;  


 




extern void CanTp_Init(const CanTp_ConfigType *CfgPtr);

extern void CanTp_MainFunction(void);  
extern Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr);











 



extern void CanTp_TxConfirmation(PduIdType TxPduId);
extern void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType *PduInfoPtr);












typedef uint16 CanTp_TickType;
typedef uint8 CanTp_SduIdType;
typedef uint8 CanTp_ChannelIdType;
typedef void (*CanTp_GetSduPairType)(CanTp_SduIdType *TxSduId, CanTp_SduIdType *RxSduId, uint8 Address);



struct CanTp_RxPduStructType                
{
    const CanTp_SduIdType RxSduId;          
    const CanTp_SduIdType TxSduId;          
    const CanTp_GetSduPairType GetSduPair;
};

struct CanTp_TxSduStructType                
{
    const uint8 TX_DL;                      
    const uint8 BitFields;                  
    const uint8 Address;                    
    const uint8 AddressFormatId;            
    const uint8 TimeOutId;                  
    const CanTp_ChannelIdType ChannelId;    
    const PduIdType TxConfirmationId;       
    const PduIdType TxPduId;                
    const PduIdType PduRPduHandleId;        
};

struct CanTp_RxSduStructType                
{
    const uint8 BitFields;                  
    const uint8 Address;                    
    const uint8 AddressFormatId;            
    const uint8 TimeOutId;                  
    const uint8 ParamId;                    
    const CanTp_ChannelIdType ChannelId;    
    const PduIdType TxConfirmationId;       
    const PduIdType TxPduId;                
    const PduIdType PduRPduHandleId;        
};
 
struct CanTp_TimeOutStructType              
{
    const CanTp_TickType AsArTicks;
    const CanTp_TickType BsBrTicks;
    const CanTp_TickType CsCrTicks;
};

struct CanTp_ParamStructType                
{
    const uint8 Param[2];                   
    const uint16 FcWaitMax;
};

struct CanTp_ConfigStructType
{
    
    const CanTp_ChannelIdType NumberOfChannels;
    const CanTp_SduIdType NumberOfRxPdus;
    const CanTp_SduIdType NumberOfTxPdus;
    const CanTp_SduIdType NumberOfRxSdus;
    const CanTp_SduIdType NumberOfTxSdus;
    
    const struct CanTp_RxPduStructType *RxPdu;
    const struct CanTp_TxSduStructType *TxSdu;
    const struct CanTp_RxSduStructType *RxSdu;
    const struct CanTp_TimeOutStructType *TimeOut;
    const struct CanTp_ParamStructType *Param;
};

typedef struct CanTp_SduPairStructType CanTp_SduPairType;
typedef struct CanTp_RxPduStructType CanTp_RxPduType;
typedef struct CanTp_TxSduStructType CanTp_TxSduType;
typedef struct CanTp_RxSduStructType CanTp_RxSduType;
typedef struct CanTp_TimeOutStructType CanTp_TimeOutType;
typedef struct CanTp_ParamStructType CanTp_ParamType;
typedef struct CanTp_SharedFcStructType CanTp_SharedFcType;









 


 

static inline SchM_Enter_CanTp_EXCLUSIVE_AREA(void);
static inline SchM_Exit_CanTp_EXCLUSIVE_AREA(void);

static inline SchM_Enter_CanTp_EXCLUSIVE_AREA(void)
{
     
}

static inline SchM_Exit_CanTp_EXCLUSIVE_AREA(void)
{
     
}


 



























 


 











 






















 

 







 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 







 
 



 
 




 
 
typedef uint32 Can_IdType;
typedef uint16 Can_HwHandleType;

 
typedef struct STag_Can_PduType
{
   
  uint8      *sdu;
   
  Can_IdType id;
   
  PduIdType  swPduHandle;
   
  uint8 length;
} Can_PduType;


 
typedef struct STag_Can_HwType
{
   
  Can_IdType CanId;
   
  Can_HwHandleType  Hoh;
   
  uint8 ControllerId;
} Can_HwType;



 
 
typedef enum ETag_Can_StateTransitionType
{
  CAN_T_START = 0,
  CAN_T_STOP,
  CAN_T_SLEEP,
  CAN_T_WAKEUP
} Can_StateTransitionType;




 






 

 
typedef enum ETag_Can_ReturnType
{
  CAN_OK = 0,
  CAN_NOT_OK,
  CAN_BUSY
} Can_ReturnType;



 
 
typedef enum ETag_CanTrcv_TrcvModeType
{
  CANTRCV_TRCVMODE_NORMAL = 0U,
  CANTRCV_TRCVMODE_SLEEP,
  CANTRCV_TRCVMODE_STANDBY
} CanTrcv_TrcvModeType;



 

 
typedef enum ETag_CanTrcv_TrcvWakeupModeType
{
  CANTRCV_WUMODE_ENABLE = 0U,
  CANTRCV_WUMODE_CLEAR,
  CANTRCV_WUMODE_DISABLE
} CanTrcv_TrcvWakeupModeType;



 
 
typedef enum ETag_CanTrcv_TrcvWakeupReasonType
{
  CANTRCV_WU_ERROR = 0U,
  CANTRCV_WU_BY_BUS,
  CANTRCV_WU_BY_PIN,
  CANTRCV_WU_INTERNALLY,
  CANTRCV_WU_NOT_SUPPORTED,
  CANTRCV_WU_POWER_ON,
  CANTRCV_WU_RESET,
  CANTRCV_WU_BY_SYSERR
}CanTrcv_TrcvWakeupReasonType;



 



 


 




 
 


typedef enum
{
    CANIF_CS_UNINIT = 0u,
    CANIF_CS_STARTED,
    CANIF_CS_STOPPED,
    CANIF_CS_SLEEP
} CanIf_ControllerModeType;



 
     
      








 


 
 



 
extern Std_ReturnType CanIf_Transmit(PduIdType CanTxPduId, const PduInfoType* PduInfoPtr );
extern void CanIf_TxConfirmation( PduIdType CanTxPduId );
extern void CanIf_RxIndication(const Can_HwType * Mailbox, const PduInfoType * PduInfoPtr);
extern void CanIf_ControllerBusOff(uint8 ControllerId);
extern void CanIf_ControllerModeIndication( uint8 ControllerId, CanIf_ControllerModeType ControllerMode );


 

 

 


 

 

 


 

 

 

 

 


 
 
 




 

 



 

typedef Std_ReturnType (*CanTp_CreateFrameType)(CanTp_ChannelIdType ChannelId, PduInfoType *PduInfoPtr);

typedef struct  
{
    boolean IsFunctional;
    boolean IsPaddingOn;
    boolean IsFdEnabled;
    uint8 Address;
    uint8 FrameType;
    uint8 FlowStatus;
    uint8 SN;
    uint8 DataOffset;
    uint8 AddressFormatId;
    uint8 AddressSize;
    uint8 CAN_DL;
    CanTp_ChannelIdType ChannelId;
    CanTp_SduIdType SduId;
    PduIdType PduId;
    PduIdType PduRPduHandleId;
    PduLengthType SduLength;
}CanTp_RxContextType;

typedef struct   
{
    uint8 PduRApiId;
    uint8 PayLoadLength;
    uint8 BitFields;
    CanTp_ChannelIdType ChannelId;
    PduIdType TxConfirmationId;
    PduIdType PduId;
    PduIdType PduRPduHandleId;
    PduLengthType RemBufSize;
    CanTp_TickType Value;
    CanTp_TickType ElapsedValue;
    CanTp_TickType CsTicks;
}CanTp_TxContextType;

typedef void (*CanTp_ProcessFrameType)(const CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr);



typedef struct
{
    uint8 Param[2];
}CanTp_ParamPairType;

typedef void (*CanTp_StateFuncType)(CanTp_ChannelIdType ChannelId);

typedef struct
{
    uint8 TxBufferStatus;                            
    uint8 RX_DL;                                     
    uint8 PciId;                                     
    uint8 FlowStatus;                                
    uint8 SN;                                        
    uint8 BS;                                        
    CanTp_SduIdType ActiveSduId;                     
    uint16 FcWait;                                   
    PduLengthType BlockCfsRemaining;                 
    PduLengthType SduLengthRemaining;                
    PduLengthType SduLength;                         
    CanTp_TickType InitialTicks;                     
    CanTp_TickType STminTicks;                       
}CanTp_ChannelType;

typedef CanTp_ChannelType *CanTp_ChannelPtrType;
typedef void (*CanTp_PduRConfirmationApiType)(PduIdType id, Std_ReturnType result);
typedef void (*CanTp_SchMTriggerApiType)(void);
typedef Std_ReturnType (*CanTp_CanIfTransmitApiType)(PduIdType TxPduId, const PduInfoType* PduInfoPtr);



 


extern CanTp_ChannelType CanTp_Channel[(1u)];
extern CanTp_ChannelIdType CanTp_TxConfirmationChannel[(1u)];


extern volatile CanTp_TickType CanTp_MainFunctionTicks;
extern const CanTp_ConfigType *CanTp_CfgPtr;

extern uint8 CanTp_SubState[(1u)];

extern const uint8 CanTp_State[(9u)];
extern const uint8 CanTp_AddressSize[(5u)];  
extern const uint8 CanTp_PciFrameType[(6u)];
extern const uint8 CanTp_PciSize[(6u)];
extern const uint8 CanTp_CanDlTable[(65u)];


extern const CanTp_ProcessFrameType CanTp_ProcessFrame[(0x04u)];
extern const CanTp_CreateFrameType CanTp_CreateFrame[(0x04u)];
extern const CanTp_StateFuncType CanTp_StateFunctions[(9u)];
extern const CanTp_PduRConfirmationApiType  CanTp_PduRConfirmationApis[(2u)];





 





 







 
static inline void CanTp_GetElapsedValue(CanTp_TickType *Value, CanTp_TickType *ElapsedValue)
{
    CanTp_TickType ValueIn = *Value;

    *Value = CanTp_MainFunctionTicks;

    *ElapsedValue = *Value - ValueIn;   

}







 
static inline boolean CanTp_Prv_GetBit(uint8 Value, uint8 Mask)
{
    return ((Value & Mask) == Mask) ? 1u : 0u;
}







 
static inline void CanTp_IncrementCounter(void)
{
    CanTp_MainFunctionTicks += 1;
}








 
static inline void CanTp_Prv_ArrayInit(uint8 *ArrayPtr, uint32 Length, uint8 Item)
{
    uint32 i;

    for(i = 0; i < Length; i++)
    {
        ArrayPtr[i] = Item;
    }
}







 
static inline boolean CanTp_Prv_IsNoDevError(uint32 id, uint8 ApiId, uint8 CanTpEInvalidId)
{
    uint8 ErrorId;
    uint32 TotalIds = 0;
    boolean Status = 1u;

    if(CanTp_MainState != (1u))
    {    
        ErrorId = (0x20u);
    }
    else
    {
        switch(ApiId)
        {
            case (0x0Au):
            case (0x0Bu):
            case (0x09u):
                TotalIds = CanTp_CfgPtr->NumberOfRxSdus;
                break;
            case (0x03u):
            case (0x08u):
                TotalIds = CanTp_CfgPtr->NumberOfTxSdus;  
                break;
            case (0x40u):
            case (0x0Cu):
                TotalIds = CanTp_CfgPtr->NumberOfTxPdus;
                break;
            case (0x42u):
                TotalIds = CanTp_CfgPtr->NumberOfRxPdus;
                break;
            default:     
                break;
        }

        if(id >= TotalIds)
        {
            ErrorId = CanTpEInvalidId;
        }
        else
        {
            ErrorId = (0u);
        }
    }

    if(ErrorId != (0u))
    {
        ;
        Status = 0u;
    }

    return Status;
}









 
static inline PduLengthType CanTp_Prv_GetTxBlockCfs(CanTp_ChannelIdType ChannelId)
{
    uint8 PayLoadLength;
    const CanTp_TxSduType *Connection = CanTp_CfgPtr->TxSdu + CanTp_Channel[ChannelId].ActiveSduId;
    uint8 TX_DL = ((Connection)->TX_DL);
    uint8 AddressSize = CanTp_AddressSize[Connection->AddressFormatId];
    PduLengthType SduLength = CanTp_Channel[ChannelId].SduLengthRemaining;

    PayLoadLength = TX_DL - (1u) - AddressSize;
    return ((SduLength % PayLoadLength) == 0u) ? (SduLength / PayLoadLength) : ((SduLength / PayLoadLength) + 1u);
}







 
static inline PduLengthType CanTp_Prv_GetRxBlockCfs(CanTp_ChannelIdType ChannelId)
{
    uint8 PayLoadLength;
    const CanTp_RxSduType *Connection = CanTp_CfgPtr->RxSdu + CanTp_Channel[ChannelId].ActiveSduId;
    uint8 RX_DL = (CanTp_Channel[ChannelId]. RX_DL);
    uint8 AddressSize = CanTp_AddressSize[Connection->AddressFormatId];
    PduLengthType SduLength = CanTp_Channel[ChannelId].SduLengthRemaining;

    PayLoadLength = RX_DL - (1u) - AddressSize;
    return ((SduLength % PayLoadLength) == 0u) ? (SduLength / PayLoadLength) : ((SduLength / PayLoadLength) + 1u);
}









 
static inline void CanTp_Prv_TxPciInit(uint8 *PciId, PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr)
{
    const CanTp_TxSduType *Connection = CanTp_CfgPtr->TxSdu + CanTpTxSduId;
    uint8 AddressLength;
    uint8 TX_DL = ((Connection)->TX_DL);

    AddressLength = CanTp_AddressSize[Connection->AddressFormatId];

    if((CanTpTxInfoPtr->SduLength + AddressLength + 1u) <= (8u))
    {
        *PciId = (0u);
    }
    else if((TX_DL > (8u)) && ((CanTpTxInfoPtr->SduLength + AddressLength + 2u) <= TX_DL))
    {
        *PciId = (1u);
    }
    else if((TX_DL > (8u)) && (CanTpTxInfoPtr->SduLength > (0xFFFu)))
    {
        *PciId = (3u);
    }
    else
    {
        *PciId = (2u);
    }
}








 
static inline void CanTp_Prv_CanIfTransmit(const CanTp_TxContextType *Context, const PduInfoType *CanIfTxInfoPtr)
{
    Std_ReturnType Result = 1U;
    PduInfoType CanIfTxInfo;
    uint8 SduBuffer[(64u)];

    CanIfTxInfo.SduLength = CanIfTxInfoPtr->SduLength;

    {
        CanIfTxInfo.SduDataPtr = SduBuffer;
        Result = (CanTp_CreateFrame[CanTp_PciFrameType[CanTp_Channel[Context->ChannelId]. PciId]](Context->ChannelId, &CanIfTxInfo) == 0U) ? 0U : Result;
    }

    if(Result == 0U)
    {
        CanTp_TxConfirmationChannel[Context->TxConfirmationId] = Context->ChannelId;  
        if(CanIf_Transmit(Context->PduId, &CanIfTxInfo) != 0U)
        {    
            CanTp_PduRConfirmationApis[Context->PduRApiId](Context->PduRPduHandleId, 1U);
            ;
            CanTp_SubState[Context->ChannelId] = (0u);
            CanTp_TxConfirmationChannel[Context->TxConfirmationId] = ((1u));
        }

    }
}








 
static inline void CanTp_Prv_FcTransmit(const CanTp_TxContextType *Context, const PduInfoType* CanIfTxInfoPtr,
                                       boolean IsFcTransmitReady, CanTp_TickType Value)
{
    if(IsFcTransmitReady && (CanTp_SubState[Context->ChannelId] == (6u)))
    {    
        CanTp_Channel[Context->ChannelId].InitialTicks = Value;
        CanTp_Channel[Context->ChannelId].PciId = (5u);
        CanTp_SubState[Context->ChannelId] = (7u);


        {
            CanTp_Prv_CanIfTransmit(Context, CanIfTxInfoPtr);
        }
    }
}







 
static inline Std_ReturnType CanTp_Prv_GetFcActiveChannel(CanTp_RxContextType *Context)
{
    Std_ReturnType Status = 1U;
    const CanTp_TxSduType *TxConnection;

    if(Context->SduId < CanTp_CfgPtr->NumberOfTxSdus)
    {
        TxConnection = CanTp_CfgPtr->TxSdu + Context->SduId;

        if(CanTp_SubState[TxConnection->ChannelId] == (3u))
        {   
            Context->ChannelId = TxConnection->ChannelId;
            Status = 0U;
        }
    }



    return Status;
}







 
static inline uint8 CanTp_Prv_GetRxContext(CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    uint8 ErrorId = (0x01u);
    CanTp_SduIdType TxSduId;
    CanTp_SduIdType RxSduId;
    uint8 FrameType;
    uint8 *SduDataPtr;
    const CanTp_TxSduType *TxConnection;
    const CanTp_RxSduType *RxConnection;
    const CanTp_RxPduType *RxPdu = CanTp_CfgPtr->RxPdu + Context->PduId;

    if(PduInfoPtr->SduDataPtr == ((void *)0))
    {
        ErrorId = (0x03u);
    }
    else
    {
        SduDataPtr = PduInfoPtr->SduDataPtr;
        Context->Address = 0;
        RxSduId = RxPdu->RxSduId;
        TxSduId = RxPdu->TxSduId;

        if(RxPdu->GetSduPair != ((void *)0))
        {   
            Context->Address = *SduDataPtr;
            SduDataPtr++;
            RxPdu->GetSduPair(&TxSduId, &RxSduId, Context->Address);  
        }

        FrameType = *SduDataPtr >> (0x04u);

        if(FrameType < (0x04u))
        {
            Context->FrameType = FrameType;

            if(FrameType == (0x03u))
            {
                Context->SduId = TxSduId;

                RxConnection = CanTp_CfgPtr->RxSdu + RxSduId;
                Context->IsFunctional = CanTp_Prv_GetBit(RxConnection->BitFields, (0x04u));
                if(Context->IsFunctional == 0u) 
                {
                    if(CanTp_Prv_GetFcActiveChannel(Context) == 0U)
                    {
                        TxConnection = CanTp_CfgPtr->TxSdu + Context->SduId;
                        Context->PduRPduHandleId = TxConnection->PduRPduHandleId;
                        Context->AddressSize = CanTp_AddressSize[TxConnection->AddressFormatId];
                        Context->IsPaddingOn = CanTp_Prv_GetBit(TxConnection->BitFields, (0x08u));
                        ErrorId = (0u);
                    }
                }

            }
            else
            {
                Context->SduId = RxSduId;
                if(Context->SduId < CanTp_CfgPtr->NumberOfRxSdus)
                {
                    RxConnection = CanTp_CfgPtr->RxSdu + RxSduId;
                    Context->ChannelId = RxConnection->ChannelId;
                    Context->PduRPduHandleId = RxConnection->PduRPduHandleId;
                    Context->AddressSize = CanTp_AddressSize[RxConnection->AddressFormatId];
                    Context->IsPaddingOn = CanTp_Prv_GetBit(RxConnection->BitFields, (0x08u));
                    Context->IsFdEnabled = CanTp_Prv_GetBit(RxConnection->BitFields, (0x01u));
                    Context->IsFunctional = CanTp_Prv_GetBit(RxConnection->BitFields, (0x04u));
                    ErrorId = ((Context->IsFunctional) && (FrameType != (0x00u))) ?
                            (0x90u) : (0u);  
                }
            }
        }
    }

    return ErrorId;
}








 
static inline Std_ReturnType CanTp_Prv_RxSduLengthCheck(CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    uint8 CAN_DL = (0xFFu);
    uint8 PciLowerNibble;
    uint8 *Data;
    uint8 DataOffset = 0;
    uint8 SF_DL = 0;                      
    uint32 FF_DL = 0;                     
    PduLengthType FF_DLmin;
    PduLengthType FfDlValue12bit;
    uint8 MaxCfSduLength;
    PduLengthType SduLengthRemaining;
    uint8 RX_DL;

    Data = PduInfoPtr->SduDataPtr + Context->AddressSize;
    PciLowerNibble = Data[0] & (0x0Fu);

    switch(Context->FrameType)
    {
        case (0x00u):
            if(PduInfoPtr->SduLength <= (8u))
            {
                DataOffset = Context->AddressSize + CanTp_PciSize[(0u)];
                SF_DL = PciLowerNibble;

                if((PciLowerNibble != 0u) && ((PciLowerNibble <= ((8u) - DataOffset))))
                {
                    CAN_DL = ((Context->IsPaddingOn)) ? (8u) : (DataOffset + (uint8)PciLowerNibble);
                }
            }
            else
            {
                DataOffset = Context->AddressSize + CanTp_PciSize[(1u)];
                SF_DL = Data[1];

                if((PciLowerNibble == 0u) &&
                   (SF_DL > (7u - Context->AddressSize)) &&
                   (SF_DL <=  (PduInfoPtr->SduLength - DataOffset)) &&
                   ((Context->AddressSize + 2u + SF_DL) <= (64u)))
                {    
                    CAN_DL = ((Context->IsPaddingOn)) ? (CanTp_CanDlTable[DataOffset + SF_DL]) : (DataOffset + SF_DL);
                }
            }
            break;

        case (0x01u): 
            CAN_DL = (uint8)(PduInfoPtr->SduLength);
            RX_DL = (((CAN_DL) != 0x08) && ((CAN_DL) != 0x0C) && ((CAN_DL) != 0x10) && ((CAN_DL) != 0x14) && ((CAN_DL) != 0x18) && ((CAN_DL) != 0x20) && ((CAN_DL) != 0x30) && ((CAN_DL) != 0x40)) ? (0xFFu) : CAN_DL;  
             
            FF_DLmin = RX_DL - Context->AddressSize - ((CAN_DL > (8u)) ? 1u : 0u);

            FfDlValue12bit = ((Data[0] & (0x0Fu)) * 0x100u) + Data[1];

            if(FfDlValue12bit == 0u)
            {
                FF_DL = (Data[2] * 0x1000000u) + (Data[3] * 0x10000u) + (Data[4] * 0x100u) + Data[5];
                DataOffset = Context->AddressSize + CanTp_PciSize[(3u)];
                RX_DL = ((FF_DL > (0xFFFFFFFFu)) || (FF_DL <= (0xFFFu))) ? (0xFFu) : RX_DL;
            }
            else
            {
                FF_DL = FfDlValue12bit;
                DataOffset = Context->AddressSize + CanTp_PciSize[(2u)];
            }

             
            RX_DL = ((Context->IsFunctional) || (FF_DL < FF_DLmin)) ? (0xFFu) : RX_DL;
            CAN_DL = RX_DL;
            break;

        case (0x02u):
            SduLengthRemaining = CanTp_Channel[Context->ChannelId].SduLengthRemaining;
            Context->SN = PciLowerNibble;
            RX_DL = (CanTp_Channel[Context->ChannelId]. RX_DL);
            DataOffset = Context->AddressSize + (1u);
            MaxCfSduLength = RX_DL - DataOffset;
            CAN_DL = (SduLengthRemaining < MaxCfSduLength) ? (uint8)(SduLengthRemaining + DataOffset) : RX_DL;
            CAN_DL = (Context->IsPaddingOn) ? (CanTp_CanDlTable[CAN_DL]) : CAN_DL;
            break;

        case (0x03u):
            Context->FlowStatus = PciLowerNibble;
            DataOffset = Context->AddressSize + 1;  
            CAN_DL = (Context->IsPaddingOn) ? (8u) : ((3u)  + Context->AddressSize);
            break;

        default:     
            break;
    }

    Context->CAN_DL = CAN_DL;
    Context->DataOffset = DataOffset;
    Context->SduLength = (Context->FrameType == (0x00u)) ? SF_DL : (PduLengthType)FF_DL;

    return (((PduInfoPtr->SduLength) >= (Context->CAN_DL)) ? (0U) : (1U));
}








 
static inline Std_ReturnType CanTp_Prv_GetConnectionAcceptance(const CanTp_RxContextType *Context,
                                                              const PduInfoType *PduInfoPtr)
{
    Std_ReturnType RetValue = 1U;
    uint8 NewChannelState = (0u);
    uint8 OldChannelState = CanTp_State[CanTp_SubState[Context->ChannelId]];

    (void)PduInfoPtr;
    {
        if(OldChannelState == (0u))
        {
            NewChannelState = (5u);
        }
        else
        {
            if((OldChannelState == (2u))&&(CanTp_Channel[Context->ChannelId].ActiveSduId == Context->SduId))
            {    
                NewChannelState = (5u);
                CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, 1U);
            } 
        }

        if(NewChannelState == (5u))
        {
            CanTp_SubState[Context->ChannelId] = (5u);
            RetValue = 0U;
        }
    }

    return RetValue;
}








 
static inline void CanTp_Prv_SetTxBlockInfo(const CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    uint8 *SduDataPtr;
    CanTp_ChannelPtrType Channel = &CanTp_Channel[Context->ChannelId];
    PduLengthType BlockCfsRemaining;

    SduDataPtr = PduInfoPtr->SduDataPtr + Context->DataOffset;

    if(Channel->STminTicks == (128u))
    {  

        Channel->BS = *SduDataPtr;
        SduDataPtr++;

        if(*SduDataPtr <= (0x7Fu))  
        {
            Channel->STminTicks = (CanTp_TickType)(((*SduDataPtr * 1000u) * 1000u)/1000000u);
        }
        else if((*SduDataPtr < (0xF1u)) || (*SduDataPtr > (0xF9u)))
        {
            Channel->STminTicks = (CanTp_TickType)(((127000u) * 1000u)/1000000u);
        }
        else
        {
            Channel->STminTicks = (CanTp_TickType)((((*SduDataPtr & (0x0Fu)) * 100u) * 1000u)/1000000u);
        }
    }

    BlockCfsRemaining = CanTp_Prv_GetTxBlockCfs(Context->ChannelId);  

    if((Channel->BS == 0u) || (Channel->BS > BlockCfsRemaining))
    {    
        Channel->BlockCfsRemaining = BlockCfsRemaining;
    }
    else
    {
        Channel->BlockCfsRemaining = (uint16)Channel->BS;  
    }
}







 
static inline uint8 CanTp_Prv_GetRxParam(CanTp_SduIdType id, TPParameterType parameter)
{
    uint8 value;

    value = (parameter == TP_STMIN)? (0u) : (1u);

    return CanTp_CfgPtr->Param[CanTp_CfgPtr->RxSdu[id]. ParamId]. Param[value];
}








 
static inline void CanTp_Prv_SetRxBlockInfo(CanTp_ChannelIdType ChannelId, const PduLengthType RemBufSize)
{
    uint8 BSMax;
    PduLengthType BlockCfsRemaining;
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    uint8 BS = Channel->BS;
    const CanTp_RxSduType *Connection = CanTp_CfgPtr->RxSdu + Channel->ActiveSduId;
    PduLengthType OneFramePayloadLength = (CanTp_Channel[ChannelId]. RX_DL) -
                                          CanTp_AddressSize[Connection->AddressFormatId] - (1u);

     
    if(Channel->STminTicks == (128u))  
    {
        BSMax = CanTp_Prv_GetRxParam(Channel->ActiveSduId, TP_BS);

        if(RemBufSize >= Channel->SduLengthRemaining)
        {    
            BS = BSMax;
        }
        else
        {    
            BS = (uint8)(RemBufSize/OneFramePayloadLength);
            BS = ((BSMax != 0u) && (BS > BSMax)) ? BSMax : BS;
        }
    }

    if(((BS == 0) && (RemBufSize < Channel->SduLengthRemaining)) ||
       ((BS != 0) && (RemBufSize < (BS * OneFramePayloadLength)) && (RemBufSize < Channel->SduLengthRemaining)))
    {
        Channel->FlowStatus = (1u);
    }
    else
    {
        BlockCfsRemaining = CanTp_Prv_GetRxBlockCfs(ChannelId);
        Channel->BlockCfsRemaining = (BS != 0u) ? BS : BlockCfsRemaining;
        Channel->FlowStatus = (0u);
        Channel->STminTicks = 0;   
    }

    Channel->BS = BS;
}







 
static inline void CanTp_Prv_FcTxConfirmation(CanTp_ChannelIdType ChannelId)
{
    const CanTp_ChannelType *Channel = CanTp_Channel + ChannelId;
    const CanTp_RxSduType *RxConnection = CanTp_CfgPtr->RxSdu + Channel->ActiveSduId;

    switch(Channel->FlowStatus)
    {
        case (0u):
            CanTp_SubState[ChannelId] = (8u);
            break;
        case (1u):
            CanTp_SubState[ChannelId] = (Channel->SduLengthRemaining > 0u) ? (6u) : (0u);
            break;
        case (2u):
            CanTp_PduRConfirmationApis[(1u)](RxConnection->PduRPduHandleId, 1U);
            CanTp_SubState[ChannelId] = (0u);
            break;
        default:     
            break;
    }
}







 
static inline void CanTp_Prv_PrepareFcTransmit(CanTp_ChannelIdType ChannelId)
{
    if(CanTp_Channel[ChannelId].BlockCfsRemaining == 0u)
    {  
        CanTp_Channel[ChannelId].FcWait = 0;
        CanTp_Channel[ChannelId].FlowStatus = (1u);
        CanTp_SubState[ChannelId] = (6u);
    }
}








 
static inline void CanTp_Prv_PrepareFcRecieve(CanTp_ChannelIdType ChannelId)
{

    {
        CanTp_SubState[ChannelId] = (3u);
    }

    CanTp_Channel[ChannelId].PciId = (5u);
}







 
static inline void CanTp_Prv_LengthError(const CanTp_RxContextType *Context)
{
    uint8 Api;

    Api = (Context->FrameType == (0x03u)) ? (0u) : (1u);
    SchM_Enter_CanTp_EXCLUSIVE_AREA();
    if((CanTp_SubState[Context->ChannelId] == (3u)) ||
       (CanTp_SubState[Context->ChannelId] == (8u)))
    {    
        CanTp_PduRConfirmationApis[Api](Context->PduRPduHandleId, 1U);
        CanTp_SubState[Context->ChannelId] = (0u);
    }
    SchM_Exit_CanTp_EXCLUSIVE_AREA();

    if(Context->IsPaddingOn)
    {    
        ;
    }
    else
    {   
        ;
    }

}




 



























 


 
 



























 


 



 
 
 
































 


 
 
 
 
 
 

 

 

 

 

 

 

 

 


 


 

 

 

 

 



 



 
typedef union
{
    uint8 u8_arr[4];
    struct {
           uint8 ReceivedRequset       :1;
           uint8 EnableDiagResp        :1;
           uint8 FunctionalRequest     :1;
           uint8 ServiceInProgress     :1;
           uint8 RcrRpInProgress       :1;
           uint8 EnablePrgSession      :1;
           uint8 Session               :2;
           uint8 SecurityKeyAllowed    :1;
           uint8 SecurityUnlock        :1;
           uint8 FingerPrint           :1;
           uint8 AllowTransferData     :1;
           uint8 TransferDataOver      :1;
           uint8 RequestTransferExit   :1;
           uint8 Driver34              :1;
           uint8 Driver36              :1;
           uint8 Driver37              :1;
           uint8 DriverCrc             :1;
           uint8 EraseMemoryAppA       :1;
           uint8 AppA34                :1;
           uint8 AppA36                :1;
           uint8 AppA37                :1;
           uint8 Service36_1stBlock    :1;
           uint8 AppACrc               :1;
           uint8 AppBCrc               :1;
           uint8 CalCrc                :1;
           uint8 EraseMemoryAppB       :1;
           uint8 EraseMemoryCal        :1;
    } State;
} DcmState_t;


 
extern uint8             Dcm_S3TimerStartFlag;
extern uint16            Dcm_S3Timer;
extern uint8             Dcm_P2TimerStartFlag;
extern uint16            Dcm_P2Timer;
extern uint8             gDCM_FunReq_Flag;
extern DcmState_t        DcmState ;
extern uint8        	 ServerIdPost ;
extern uint8        	 ServerPostCount ;


 
 

 






























 

 

extern void Dcm_Init( void );
extern void Dcm_MainFunction( void );
extern void Dcm_MainFunction_Post( void );
extern void Dcm_TimerFunction( void );
extern BufReq_ReturnType Dcm_CopyTxData(PduIdType id, const PduInfoType *info, const RetryInfoType* retry, PduLengthType* availableDataPtr);
extern void Dcm_RxIndication(PduIdType id, Std_ReturnType Result);
extern void Dcm_FuncRxIndication(void);
extern void Dcm_TxConfirmation(PduIdType id, Std_ReturnType Result);
extern void Dsd_Nrc78ResponseProcess(uint8 forceSend);
extern BufReq_ReturnType Dcm_StartOfReception(PduIdType id, const PduInfoType* info, PduLengthType TpSduLength, PduLengthType* bufferSizePtr);
extern BufReq_ReturnType Dcm_CopyRxData(PduIdType id, const PduInfoType *info, PduLengthType* bufferSizePtr);


 



























 


 



 
extern volatile uint16 Comm_MainTick;


 
extern void CommF_DataCopy(void * des, void * src,uint32 srcSize);
extern uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length);
extern void CommF_DataSet(void * des, uint8 src,uint32 desSize);
extern uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length);
extern void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue);

CanTp_ChannelType CanTp_Channel[(1u)];
CanTp_ChannelIdType CanTp_TxConfirmationChannel[(1u)];


volatile CanTp_TickType CanTp_MainFunctionTicks;
const CanTp_ConfigType *CanTp_CfgPtr;

uint8 CanTp_SubState[(1u)];

const uint8 CanTp_State[(9u)] = {0, 1, 1, 1, 1, 2, 2, 2, 2};    
const uint8 CanTp_AddressSize[(5u)] = {0, 1, 1, 1, 0};           
const uint8 CanTp_PciFrameType[(6u)] = {0, 0, 1, 1, 2, 3};           
const uint8 CanTp_PciSize[(6u)] = {1, 2, 2, 6, 1, 3};                
const uint8 CanTp_CanDlTable[(65u)] =
{
    0x08,
    0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x0c,0x0c,0x0c,0x0c,0x10,0x10,0x10,0x10,
    0x14,0x14,0x14,0x14,0x18,0x18,0x18,0x18,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
    0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,
    0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40
};  








 
static void CanTp_Prv_GetTxBuffer(const CanTp_TxContextType *Context, PduInfoType* SduInfoPtr)
{
    PduLengthType RemBufSize;

    if(Context->ElapsedValue < Context->CsTicks)
    {
        if(CanTp_Channel[Context->ChannelId].TxBufferStatus != (2u))
        {
            switch(Dcm_CopyTxData(Context->PduRPduHandleId, SduInfoPtr, ((void *)0), &RemBufSize))
            {
                case BUFREQ_OK:  
                    if(RemBufSize >= Context->PayLoadLength)
                    {
                        CanTp_Channel[Context->ChannelId].TxBufferStatus = (2u);
                    }

                    break;
                case BUFREQ_E_BUSY:
                     
                    break;
                default:   
                    CanTp_PduRConfirmationApis[Context->PduRApiId](Context->PduRPduHandleId, 1U);
                    ;
                    CanTp_SubState[Context->ChannelId] = (0u);
                    break;
            }
        }
    }
    else
    {
        if(CanTp_Channel[Context->ChannelId].TxBufferStatus != (2u))
        {
             
            CanTp_PduRConfirmationApis[Context->PduRApiId](Context->PduRPduHandleId, 1U);
            ;
            CanTp_SubState[Context->ChannelId] = (0u);
        }
    }
}







 
static void CanTp_Prv_ProcessRxSingleFrame(const CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    Std_ReturnType Result;
    PduInfoType SduInfo;
    PduLengthType RemBufSize;
    BufReq_ReturnType RetValue;
    CanTp_TickType ElapsedValue;
    CanTp_TickType Value = 0;
    CanTp_ChannelType *Channel = &CanTp_Channel[Context->ChannelId];

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SduInfo.SduDataPtr = PduInfoPtr->SduDataPtr + Context->DataOffset;  
    SduInfo.SduLength = Context->SduLength;

    SchM_Enter_CanTp_EXCLUSIVE_AREA();
     
    if((SduInfo.SduDataPtr[0] == 0x3EU)&&(SduInfo.SduDataPtr[1] == 0x80U)&&(SduInfo.SduLength == 0x02U)) 
    {
         
        (gDCM_FunReq_Flag = 0x00);
        if (((DcmState . State . Session) == ((uint8)0x02U)) ||
         ((DcmState . State . Session) == ((uint8)0x03U)))
        {
            (Dcm_S3TimerStartFlag = 1);
            (Dcm_S3Timer = Comm_MainTick);
        }
    }
     
     
    else if(CanTp_Prv_GetConnectionAcceptance(Context, PduInfoPtr) == 0U)
    {
        Channel->ActiveSduId = Context->SduId;
        Channel->SduLength = Context->SduLength;
        Channel->SduLengthRemaining = Context->SduLength;

         
        (CanTp_Channel[Context->ChannelId]. RX_DL = (((uint8)(PduInfoPtr->SduLength))));

        Channel->InitialTicks = Value;

        
 
         
        RetValue = Dcm_StartOfReception(Context->PduRPduHandleId, &SduInfo, Context->SduLength, &RemBufSize);

        switch(RetValue)
        {
            case BUFREQ_OK:
                if(RemBufSize >= Context->SduLength)
                {
                    RetValue = Dcm_CopyRxData(Context->PduRPduHandleId, &SduInfo, &RemBufSize);
                    Result = (RetValue != BUFREQ_OK) ?  1U: 0U;
                    CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, Result);
                }
                else
                {    
                    CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, 1U);
                }
                break;
            case BUFREQ_E_OVFL:  
                CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, 1U);
                break;
            default:  
                break;
        }

        CanTp_SubState[Context->ChannelId] = (0u);
    }
    else
    {
         
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}







 
static void CanTp_Prv_ProcessRxFirstFrame(const CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    CanTp_ChannelType *Channel = &CanTp_Channel[Context->ChannelId];
    PduInfoType SduInfo;
    PduLengthType RemBufSize;
    uint8 NewSubState = (0u);
    uint8 FlowStatus = (1u);
    uint8 PayLoadLength;
    CanTp_TickType Value = 0;
    CanTp_TickType ElapsedValue;
    BufReq_ReturnType RetValue;

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    PayLoadLength = (uint8)(PduInfoPtr->SduLength - Context->DataOffset);

    SduInfo.SduDataPtr = PduInfoPtr->SduDataPtr + Context->DataOffset;  
    SduInfo.SduLength = (PduLengthType)PayLoadLength;

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

     
    if(CanTp_Prv_GetConnectionAcceptance(Context, PduInfoPtr) == 0U)
    {
        Channel->ActiveSduId = Context->SduId;
        Channel->SduLength = Context->SduLength;
        (CanTp_Channel[Context->ChannelId]. RX_DL = (((uint8)(PduInfoPtr->SduLength))));

        Channel->InitialTicks = Value;  

        
 
         
        RetValue = Dcm_StartOfReception(Context->PduRPduHandleId, &SduInfo, Context->SduLength, &RemBufSize);


        switch(RetValue)  
        {
            case BUFREQ_OK:
                if(RemBufSize >= PayLoadLength)  
                {
                    if(Dcm_CopyRxData(Context->PduRPduHandleId, &SduInfo, &RemBufSize) != BUFREQ_OK)
                    {
                        CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, 1U);
                        ;
                        NewSubState = (0u);
                    }
                    else
                    {
                        NewSubState = (6u);
                        Channel->SduLengthRemaining = Context->SduLength - PayLoadLength;
                        Channel->BS = 0;
                        Channel->STminTicks = (128u);
                        Channel->FcWait = 0;
                        Channel->SN = 1;
                    }

                }
                else
                {    
                    CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, 1U);
                    NewSubState = (0u);
                }
                break;
            case BUFREQ_E_OVFL:  
                FlowStatus = (2u);  
                NewSubState = (6u);
                Channel->BS = 0;
                break;
            default:
                NewSubState = (0u);  
                break;
        }

        if(CanTp_SubState[Context->ChannelId] == (5u))
        {
            Channel->FlowStatus = FlowStatus;
            CanTp_SubState[Context->ChannelId] = NewSubState;
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}







 
static void CanTp_Prv_ProcessRxConsecutiveFrame(const CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    PduInfoType SduInfo;
    PduLengthType RemBufSize;
    uint8 PayloadLength;
    CanTp_TickType ElapsedValue;
    BufReq_ReturnType RetValue;
    CanTp_ChannelPtrType Channel = &CanTp_Channel[Context->ChannelId];
    CanTp_TickType Value = Channel->InitialTicks;  
    Std_ReturnType NotifyValue = (0xFFu);

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    PayloadLength = Context->CAN_DL - Context->DataOffset;

    SduInfo.SduDataPtr = PduInfoPtr->SduDataPtr + Context->DataOffset;  

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    if((CanTp_SubState[Context->ChannelId] == (8u)) &&
       (Context->SduId == Channel->ActiveSduId) && (Channel->BlockCfsRemaining > 0u))
    {

        {
            NotifyValue = 1U;  

            if(Context->SN == Channel->SN)  
            {   
                Channel->InitialTicks = Value;  

                SduInfo.SduLength = (Channel->SduLengthRemaining > PayloadLength) ? PayloadLength :
                                     (uint8)Channel->SduLengthRemaining;
                 
                RetValue = Dcm_CopyRxData(Context->PduRPduHandleId, &SduInfo, &RemBufSize);

                if(RetValue == BUFREQ_OK)
                {
                    Channel->SN++;
                    Channel->SN &= (0x0Fu);
                    Channel->SduLengthRemaining -= SduInfo.SduLength;
                    Channel->BlockCfsRemaining--;

                    CanTp_Prv_PrepareFcTransmit(Context->ChannelId);  

                    NotifyValue = (Channel->SduLengthRemaining != 0u) ? (0xFFu) : 0U;
                }
            }

            if(NotifyValue != (0xFFu))
            {  
                CanTp_PduRConfirmationApis[(1u)](Context->PduRPduHandleId, NotifyValue);
                CanTp_SubState[Context->ChannelId] = (0u);
            }
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}







 
static void CanTp_Prv_ProcessRxFlowControlFrame(const CanTp_RxContextType *Context, const PduInfoType *PduInfoPtr)
{
    CanTp_ChannelPtrType Channel;
    CanTp_TickType Value;
    CanTp_TickType ElapsedValue;

     
    Channel = &CanTp_Channel[Context->ChannelId];
    Value = Channel->InitialTicks;   
    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

     
    if(CanTp_SubState[Context->ChannelId] == (3u))
    {

        {    
            Channel->InitialTicks = Value;  

            switch(Context->FlowStatus)
            {
                case (1u):
                    Channel->FlowStatus = (1u);
                    break;
                case (0u):
                    Channel->FlowStatus = (0u);
                    CanTp_Prv_SetTxBlockInfo(Context, PduInfoPtr);
                    CanTp_SubState[Context->ChannelId] = (4u);
                    break;
                default:  
                     
                    CanTp_PduRConfirmationApis[(0u)](Context->PduRPduHandleId, 1U);
                    CanTp_SubState[Context->ChannelId] = (0u);
                    break;
            }
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}







 
static Std_ReturnType CanTp_Prv_CreateTxSingleFrame(CanTp_ChannelIdType ChannelId, PduInfoType *PduInfoPtr)
{
    PduInfoType SduInfo;
    PduLengthType RemBufSize;
    uint8 *SduDataPtr;
    uint8 DataOffset;
    uint8 PaddingOffset;
    uint8 CAN_DL;
    uint8 PciId;
    uint32 SduLength;
    uint32 SduLengthRemaining;
    Std_ReturnType Status = 1U;
    CanTp_ChannelPtrType Channel = CanTp_Channel + ChannelId;
    const CanTp_TxSduType *Connection;

    if(CanTp_SubState[ChannelId] == (2u))
    {
        Connection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
        PciId = Channel->PciId;
        SduLength = Channel->SduLength;
        SduLengthRemaining = Channel->SduLengthRemaining;

        DataOffset = CanTp_AddressSize[Connection->AddressFormatId] + CanTp_PciSize[PciId];
        CAN_DL = ((Connection)->TX_DL);

        SduDataPtr = PduInfoPtr->SduDataPtr + DataOffset;
        SduInfo.SduDataPtr = SduDataPtr;
        SduInfo.SduLength = (uint8)SduLengthRemaining;
        PduInfoPtr->SduLength = 0;

         
        if(Dcm_CopyTxData(Connection->PduRPduHandleId, &SduInfo, ((void *)0), &RemBufSize) != BUFREQ_OK)
        {
            ;
        }
        else
        {
             
            if(CanTp_Prv_GetBit(Connection->BitFields, (0x08u)))
            {    
                CAN_DL = (CanTp_CanDlTable[DataOffset + SduInfo . SduLength]);  
                PaddingOffset = (uint8)(DataOffset + SduInfo.SduLength);
                SduDataPtr = PduInfoPtr->SduDataPtr + PaddingOffset;  
                CanTp_Prv_ArrayInit(SduDataPtr, CAN_DL - PaddingOffset, (0xAAu));
            }
            else
            {
                CAN_DL = (uint8)(DataOffset + SduInfo.SduLength);
            }

            SduDataPtr = PduInfoPtr->SduDataPtr;
            if(Connection->AddressFormatId != 0)
            { 
                *SduDataPtr = Connection->Address;
                SduDataPtr++;
            }

             
            if(PciId == (0u))
            {     
                *SduDataPtr = (uint8)SduLength;
            }
            else
            {
                if(PciId == (1u))
                {    
                    SduDataPtr[0] = 0x00;
                    SduDataPtr[1] = (uint8)SduLength;
                }
            }

            PduInfoPtr->SduLength = CAN_DL;
            Status = 0U;
        }
    }

    return Status;
}







 
static Std_ReturnType CanTp_Prv_CreateTxFirstFrame(CanTp_ChannelIdType ChannelId, PduInfoType *PduInfoPtr)
{
    PduInfoType SduInfo;
    PduLengthType RemBufSize;
    uint32 SduLength;
    uint8 *SduDataPtr;
    uint8 DataOffset;
    uint8 CAN_DL;
    uint8 PciId;
    CanTp_ChannelPtrType Channel = CanTp_Channel + ChannelId;
    Std_ReturnType Status = 1U;
    const CanTp_TxSduType *Connection;

    if(CanTp_SubState[ChannelId] == (2u))
    {
        Connection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
        PciId = Channel->PciId;
        DataOffset = CanTp_AddressSize[Connection->AddressFormatId] + CanTp_PciSize[PciId];
        CAN_DL = ((Connection)->TX_DL);
        SduLength = Channel->SduLength;

        SduDataPtr = PduInfoPtr->SduDataPtr + DataOffset;
        SduInfo.SduDataPtr = SduDataPtr;
        SduInfo.SduLength = CAN_DL - DataOffset;
        PduInfoPtr->SduLength = 0;

         
        if(Dcm_CopyTxData(Connection->PduRPduHandleId, &SduInfo, ((void *)0), &RemBufSize) != BUFREQ_OK)
        {
            ;
        }
        else
        {
            SduDataPtr = PduInfoPtr->SduDataPtr;
            if(Connection->AddressFormatId != (0u))
            { 
                *SduDataPtr = Connection->Address;
                SduDataPtr++;
            }

             
            if(PciId == (2u))
            {    
                SduDataPtr[0] = 0x10 + (uint8)(SduLength >> 0x08u);
                SduDataPtr[1] = (uint8)SduLength;
            }
            else
            {
                if(PciId == (3u))
                {    
                    SduDataPtr[0] = 0x10;
                    SduDataPtr[1] = 0x00;
                    SduDataPtr[2] = (uint8)(SduLength >> 0x18u);
                    SduDataPtr[3] = (uint8)(SduLength >> 0x10u);
                    SduDataPtr[4] = (uint8)(SduLength >> 0x08u);
                    SduDataPtr[5] = (uint8)SduLength;
                }
            }

            PduInfoPtr->SduLength = CAN_DL;
            Status = 0U;
        }
    }

    return Status;
}







 
static Std_ReturnType CanTp_Prv_CreateTxConsecutiveFrame(CanTp_ChannelIdType ChannelId, PduInfoType *PduInfoPtr)
{
    PduLengthType RemBufSize;
    PduInfoType SduInfo;
    uint8 PaddingOffset;
    uint8 *SduDataPtr;
    uint8 DataOffset;
    uint8 CAN_DL;
    uint8 SN;
    uint8 MaxCopyLength;
    uint32 SduLengthRemaining;
    CanTp_ChannelPtrType Channel = CanTp_Channel + ChannelId;
    Std_ReturnType Status = 1U;
    const CanTp_TxSduType *Connection;

    if(CanTp_SubState[ChannelId] == (2u))
    {
        Connection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
        SN = Channel->SN;
        SduLengthRemaining = Channel->SduLengthRemaining;

        DataOffset = CanTp_AddressSize[Connection->AddressFormatId] + (1u);
        CAN_DL = ((Connection)->TX_DL);
        MaxCopyLength = CAN_DL - DataOffset;
        SduInfo.SduDataPtr = PduInfoPtr->SduDataPtr + DataOffset;
        SduInfo.SduLength = (SduLengthRemaining > MaxCopyLength) ? MaxCopyLength : (uint8)SduLengthRemaining;
        PduInfoPtr->SduLength = 0;

         
        if(Dcm_CopyTxData(Connection->PduRPduHandleId, &SduInfo, ((void *)0), &RemBufSize) != BUFREQ_OK)
        {
            ;
        }
        else
        {
            if(SduLengthRemaining < MaxCopyLength)
            {    
                if(CanTp_Prv_GetBit(Connection->BitFields, (0x08u)))
                {    
                    CAN_DL = (CanTp_CanDlTable[DataOffset + SduInfo . SduLength]);  
                    PaddingOffset = (uint8)(DataOffset + SduInfo.SduLength);
                    SduDataPtr = PduInfoPtr->SduDataPtr + PaddingOffset;  
                    CanTp_Prv_ArrayInit(SduDataPtr, CAN_DL - PaddingOffset, (0xAAu));
                }
                else
                {
                    CAN_DL = (uint8)(DataOffset + SduInfo.SduLength);
                }
            }

            SduDataPtr = PduInfoPtr->SduDataPtr;

            if(Connection->AddressFormatId != (0u))
            {    
                *SduDataPtr = Connection->Address;
                SduDataPtr++;
            }

            *SduDataPtr = ((0x20u) | SN);  
            PduInfoPtr->SduLength = CAN_DL;
            Status = 0U;
        }
    }

    return Status;
}








 
static Std_ReturnType CanTp_Prv_CreateTxFlowControlFrame(CanTp_ChannelIdType ChannelId, PduInfoType *PduInfoPtr)
{
    uint8 *SduDataPtr = PduInfoPtr->SduDataPtr;
    uint8 PaddingOffset;
    PduLengthType SduLength = (3u);
    CanTp_ChannelPtrType Channel = CanTp_Channel + ChannelId;
    Std_ReturnType Status = 1U;
    uint8 BS;
    uint8 STMin;
    uint8 FlowStatus;
    const CanTp_RxSduType *Connection;

    PduInfoPtr->SduLength = 0;

    if(CanTp_SubState[ChannelId] == (7u))
    {
        Connection = CanTp_CfgPtr->RxSdu + Channel->ActiveSduId;
        STMin = CanTp_Prv_GetRxParam(Channel->ActiveSduId, TP_STMIN);
        FlowStatus = Channel->FlowStatus;
        BS = Channel->BS;

        if(Connection->AddressFormatId != (0u))
        {    
            *SduDataPtr = Connection->Address;
            SduDataPtr++;
            SduLength++;
        }

        *SduDataPtr =  (uint8)((0x30u) | FlowStatus);
        SduDataPtr++;

         
        *SduDataPtr = BS;

        SduDataPtr++;
         
        *SduDataPtr = STMin;
        SduDataPtr++;

        if(CanTp_Prv_GetBit(Connection->BitFields, (0x08u)))  
        {    
            PaddingOffset = CanTp_AddressSize[Connection->AddressFormatId] + (3u);
             
            CanTp_Prv_ArrayInit(SduDataPtr, (8u) - PaddingOffset, (0xAAu));
            SduLength = (8u);
        }

        PduInfoPtr->SduLength = SduLength;
        Status = 0U;
    }

    return Status;
}








 
static void CanTp_Prv_TxSendConsecutiveFrame(CanTp_ChannelIdType ChannelId)
{
    uint8 CAN_DL;
    PduInfoType SduInfo;
    PduInfoType PduInfo;
    CanTp_ChannelIdType TxConfirmationChannel;
    const CanTp_TxSduType *Connection;
    uint8 MaxLength;
    CanTp_TxContextType Context;
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];

    Context.ChannelId = ChannelId;
    Context.PduRApiId = (0u);

    Context.Value = Channel->InitialTicks;   

    CanTp_GetElapsedValue(&(Context.Value), &(Context.ElapsedValue));

    SduInfo.SduLength = 0;
    SduInfo.SduDataPtr = ((void *)0);

    PduInfo.SduDataPtr = ((void *)0);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    Connection = (CanTp_SubState[ChannelId] == (4u)) ?
                 (CanTp_CfgPtr->TxSdu + Channel->ActiveSduId) : ((void *)0);
    TxConfirmationChannel = (Connection != ((void *)0)) ? CanTp_TxConfirmationChannel[Connection->TxConfirmationId] : 0;

    if(TxConfirmationChannel == ((1u)))  
    {
        Context.PduRPduHandleId = Connection->PduRPduHandleId;
        Context.PduId = Connection->TxPduId;
        Context.TxConfirmationId = Connection->TxConfirmationId;
        CAN_DL = ((Connection)->TX_DL);
        PduInfo.SduLength = CAN_DL;
        Context.CsTicks = CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. CsCrTicks;
        Context.BitFields = Connection->BitFields;

        MaxLength = CAN_DL - (1u) - CanTp_AddressSize[Connection->AddressFormatId];
        Context.PayLoadLength = (Channel->SduLengthRemaining < MaxLength) ?
                                (uint8)(Channel->SduLengthRemaining) : MaxLength;

        CanTp_Prv_GetTxBuffer(&Context, &SduInfo);

        if((Channel->TxBufferStatus == (2u)) &&
           ((Context.ElapsedValue >= Channel->STminTicks) || (Channel->PciId != (4u))))
        {
            Channel->PciId = (4u);
            Channel->InitialTicks = Context.Value;
            CanTp_SubState[ChannelId] = (2u);
            CanTp_Prv_CanIfTransmit(&Context, &PduInfo);
            Channel->TxBufferStatus = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}








 
static void CanTp_Prv_TxWaitForFlowControlFrame(CanTp_ChannelIdType ChannelId)
{
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    const CanTp_TxSduType *Connection;
    CanTp_TickType Value = Channel->InitialTicks;   
    CanTp_TickType ElapsedValue;

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    if(CanTp_SubState[ChannelId] == (3u))
    {
        Connection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
        if(ElapsedValue > CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. BsBrTicks)  
        {  
            CanTp_PduRConfirmationApis[(0u)](Connection->PduRPduHandleId, 1U);
            ;
            CanTp_SubState[ChannelId] = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}








 
static void CanTp_Prv_TxWaitForTransmitConfirmation(CanTp_ChannelIdType ChannelId)
{
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    const CanTp_TxSduType *Connection;
    CanTp_TickType Value = Channel->InitialTicks;   
    CanTp_TickType ElapsedValue;

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    if(CanTp_SubState[ChannelId] == (2u))
    {
        Connection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
        if(ElapsedValue > CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. AsArTicks)
        {   
 
            CanTp_PduRConfirmationApis[(0u)](Connection->PduRPduHandleId, 1U);
            ;
             
            CanTp_TxConfirmationChannel[Connection->TxConfirmationId] = ((1u));
            CanTp_SubState[ChannelId] = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}








 
static void CanTp_Prv_TxTransmissionRequestAccepted(CanTp_ChannelIdType ChannelId)
{
    uint8 CAN_DL;
    uint8 DataOffset;
    PduInfoType SduInfo;
    PduInfoType PduInfo;
    CanTp_ChannelIdType TxConfirmationChannel;
    CanTp_ChannelType *Channel = &CanTp_Channel[ChannelId];
    const CanTp_TxSduType *Connection;
    CanTp_TxContextType Context;

    Context.ChannelId = ChannelId;
    Context.PduRApiId = (0u);

    Context.Value = Channel->InitialTicks;   

    CanTp_GetElapsedValue(&(Context.Value), &(Context.ElapsedValue));

    SduInfo.SduLength = 0;
    SduInfo.SduDataPtr = ((void *)0);

    PduInfo.SduDataPtr = ((void *)0);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    Connection = (CanTp_SubState[ChannelId] == (1u)) ?
                 (CanTp_CfgPtr->TxSdu + Channel->ActiveSduId) : ((void *)0);
    TxConfirmationChannel = (Connection != ((void *)0)) ? CanTp_TxConfirmationChannel[Connection->TxConfirmationId] : 0;

    if(TxConfirmationChannel == ((1u)))  
    {
        Context.PduRPduHandleId = Connection->PduRPduHandleId;
        Context.PduId = Connection->TxPduId;
        Context.TxConfirmationId = Connection->TxConfirmationId;
        Channel->BlockCfsRemaining = 0;
        Channel->SduLengthRemaining = Channel->SduLength;
        Channel->SN = 1;

        DataOffset = CanTp_AddressSize[Connection->AddressFormatId] + CanTp_PciSize[Channel->PciId];
        CAN_DL = ((Connection)->TX_DL);
        PduInfo.SduLength = CAN_DL;
        Context.PayLoadLength = (Channel->PciId >= (2u)) ? (CAN_DL - DataOffset) :
                                                                       (uint8)(Channel->SduLength);
        Context.CsTicks = CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. CsCrTicks;
        Context.BitFields = Connection->BitFields;

        CanTp_Prv_GetTxBuffer(&Context, &SduInfo);

        if(Channel->TxBufferStatus == (2u))
        {
            Channel->InitialTicks = Context.Value;
            CanTp_SubState[ChannelId] = (2u);
            CanTp_Prv_CanIfTransmit(&Context, &PduInfo);
            Channel->TxBufferStatus = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}







 
static void CanTp_Prv_Idle(CanTp_ChannelIdType ChannelId)
{
    (void)ChannelId;  
}








 
static void CanTp_Prv_RxReceptionRequestAccepted(CanTp_ChannelIdType ChannelId)
{
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    const CanTp_RxSduType *Connection;
    CanTp_TickType Value = Channel->InitialTicks;   
    CanTp_TickType ElapsedValue;

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    if(CanTp_SubState[ChannelId] == (5u))
    {
        Connection = CanTp_CfgPtr->RxSdu + Channel->ActiveSduId;
        if(ElapsedValue > CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. BsBrTicks)
        {   
            CanTp_PduRConfirmationApis[(1u)](Connection->PduRPduHandleId, 1U);
            ;
            CanTp_SubState[ChannelId] = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}








 
static void CanTp_Prv_RxSendFlowControlFrame(CanTp_ChannelIdType ChannelId)
{
    PduInfoType PduInfo;
    PduInfoType SduInfo;
    CanTp_TickType ElapsedValue;
    CanTp_ChannelIdType TxConfirmationChannel;
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    const CanTp_RxSduType *Connection;
    CanTp_TickType Value = Channel->InitialTicks;   
    boolean IsFcReady = ((Channel->FlowStatus > (1u)) ? 1u : 0u);
    CanTp_TxContextType Context;

    Context.ChannelId = ChannelId;
    Context.PduRApiId = (1u);

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SduInfo.SduLength = 0;
    SduInfo.SduDataPtr = ((void *)0);

    PduInfo.SduLength = (8u);
    PduInfo.SduDataPtr = ((void *)0);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    Connection = (CanTp_SubState[ChannelId] == (6u)) ?
                 (CanTp_CfgPtr->RxSdu + Channel->ActiveSduId) : ((void *)0);
    TxConfirmationChannel = (Connection != ((void *)0)) ? CanTp_TxConfirmationChannel[Connection->TxConfirmationId] : 0;

    if(TxConfirmationChannel == ((1u)))  
    {
        Channel->BlockCfsRemaining = 0;
        Context.PduRPduHandleId = Connection->PduRPduHandleId;
        Context.PduId = Connection->TxPduId;
        Context.TxConfirmationId = Connection->TxConfirmationId;
        Context.BitFields = Connection->BitFields;

        if(Channel->FlowStatus != (2u))
        {    
            if(Dcm_CopyRxData(Context.PduRPduHandleId, &SduInfo, &(Context.RemBufSize)) != BUFREQ_OK)
            {
                CanTp_PduRConfirmationApis[Context . PduRApiId](Context . PduRPduHandleId, 1U);
                ;
                CanTp_SubState[Context.ChannelId] = (0u);
                IsFcReady = 0u;
            }
            else
            {
                if(Channel->FlowStatus != (0u))
                {
                     
                    CanTp_Prv_SetRxBlockInfo(ChannelId, Context.RemBufSize);
                    IsFcReady = (Channel->FlowStatus != (0u)) ? IsFcReady : 1u;  
                }
            }

            if((Channel->FlowStatus == (1u)) && ((ElapsedValue >= CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. BsBrTicks) ||
               (Channel->FcWait == 0)))
            {
                if(Channel->FcWait < CanTp_CfgPtr->Param[CanTp_CfgPtr->RxSdu[Channel->ActiveSduId]. ParamId]. FcWaitMax)
                {     
                     Channel->FcWait++;
                     Channel->InitialTicks = Value;
                     IsFcReady = 1u;
                }
                else
                {    
                    CanTp_PduRConfirmationApis[Context . PduRApiId](Context . PduRPduHandleId, 1U);
                    ;
                    CanTp_SubState[Context.ChannelId] = (0u);
                }
            }
        }

        CanTp_Prv_FcTransmit(&Context, &PduInfo, IsFcReady, Value);
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}








 
static void CanTp_Prv_RxWaitForFcTransmitConfirmation(CanTp_ChannelIdType ChannelId)
{
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    const CanTp_RxSduType *Connection;
    CanTp_TickType Value = Channel->InitialTicks;   
    CanTp_TickType ElapsedValue;

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    if(CanTp_SubState[ChannelId] == (7u))
    {
        Connection = CanTp_CfgPtr->RxSdu + Channel->ActiveSduId;
        if(ElapsedValue > CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. AsArTicks)
        {    
            CanTp_PduRConfirmationApis[(1u)](Connection->PduRPduHandleId, 1U);
            ;
             
            CanTp_TxConfirmationChannel[Connection->TxConfirmationId] = ((1u));
            CanTp_SubState[ChannelId] = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}








 
static void CanTp_Prv_RxWaitForConsecutiveFrame(CanTp_ChannelIdType ChannelId)
{
    CanTp_ChannelPtrType Channel = &CanTp_Channel[ChannelId];
    const CanTp_RxSduType *Connection;
    CanTp_TickType Value = Channel->InitialTicks;   
    CanTp_TickType ElapsedValue;

    CanTp_GetElapsedValue(&Value, &ElapsedValue);

    SchM_Enter_CanTp_EXCLUSIVE_AREA();

    if(CanTp_SubState[ChannelId] == (8u))
    {
        Connection = CanTp_CfgPtr->RxSdu + Channel->ActiveSduId;
        if(ElapsedValue > CanTp_CfgPtr->TimeOut[(Connection)->TimeOutId]. CsCrTicks)
        {    
            CanTp_PduRConfirmationApis[(1u)](Connection->PduRPduHandleId, 1U);
            ;
            CanTp_SubState[ChannelId] = (0u);
        }
    }

    SchM_Exit_CanTp_EXCLUSIVE_AREA();
}







 



 
const CanTp_StateFuncType CanTp_StateFunctions[(9u)] =
{
    &CanTp_Prv_Idle,
    &CanTp_Prv_TxTransmissionRequestAccepted,
    &CanTp_Prv_TxWaitForTransmitConfirmation,
    &CanTp_Prv_TxWaitForFlowControlFrame,
    &CanTp_Prv_TxSendConsecutiveFrame,
    &CanTp_Prv_RxReceptionRequestAccepted,
    &CanTp_Prv_RxSendFlowControlFrame,
    &CanTp_Prv_RxWaitForFcTransmitConfirmation,
    &CanTp_Prv_RxWaitForConsecutiveFrame
};

 
const CanTp_ProcessFrameType  CanTp_ProcessFrame[(0x04u)] =
{
    &CanTp_Prv_ProcessRxSingleFrame,
    &CanTp_Prv_ProcessRxFirstFrame,
    &CanTp_Prv_ProcessRxConsecutiveFrame,
    &CanTp_Prv_ProcessRxFlowControlFrame
};

 
const CanTp_CreateFrameType  CanTp_CreateFrame[(0x04u)] =
{
    &CanTp_Prv_CreateTxSingleFrame,
    &CanTp_Prv_CreateTxFirstFrame,
    &CanTp_Prv_CreateTxConsecutiveFrame,
    &CanTp_Prv_CreateTxFlowControlFrame
};

 
const CanTp_PduRConfirmationApiType  CanTp_PduRConfirmationApis[(2u)] =
{
    &Dcm_TxConfirmation,
    &Dcm_RxIndication
};



