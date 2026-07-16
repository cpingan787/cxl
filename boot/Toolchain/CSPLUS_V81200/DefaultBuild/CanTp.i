



















 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 




 
 

 



 



 







 
 
 
 

 

 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 






 





 





 





 





 




 




 

 


 






 





 
 



 


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






 
uint8 CanTp_MainState;











 
void CanTp_Init(const CanTp_ConfigType *CfgPtr)
{
    CanTp_MainState = (0u);  

    CanTp_CfgPtr = &CanTp_Config;
    (void)CfgPtr;

    {    
        ;  
        ;  
         
        CanTp_Prv_ArrayInit(&CanTp_SubState[0], CanTp_CfgPtr->NumberOfChannels, (0u));
        CanTp_Prv_ArrayInit(&CanTp_TxConfirmationChannel[0], CanTp_CfgPtr->NumberOfTxPdus, ((1u)));

        CanTp_MainState = (1u);  
    }
}












 
void CanTp_MainFunction(void)
{
    CanTp_ChannelIdType ChannelId;

    {

        {    
            for(ChannelId = 0; ChannelId < CanTp_CfgPtr->NumberOfChannels; ChannelId++)
            {
                CanTp_StateFunctions[CanTp_SubState[ChannelId]](ChannelId);
            }

            CanTp_IncrementCounter();
        }
    }
}











 
Std_ReturnType CanTp_Transmit(PduIdType CanTpTxSduId, const PduInfoType *CanTpTxInfoPtr)
{
    Std_ReturnType RetVal = 1U;  
    CanTp_TickType Value = 0;
    CanTp_TickType ElapsedValue;
    uint32 MaxLength;
    uint8 PciId;
    uint8 ErrorId;
    uint8 PayloadLength;
    uint8 TX_DL;
    const CanTp_TxSduType *Connection;
    CanTp_ChannelType *Channel;

    {
        Connection = CanTp_CfgPtr->TxSdu + CanTpTxSduId;

        Channel = CanTp_Channel + Connection->ChannelId;

        if(CanTpTxInfoPtr == ((void *)0))
        {    
            ErrorId = (0x03u);
        }
        else if(CanTpTxInfoPtr->SduLength == 0u)
        {
            ErrorId = (0xB0u);
        }
        else
        {
            CanTp_Prv_TxPciInit(&PciId, CanTpTxSduId, CanTpTxInfoPtr);
            TX_DL = ((Connection)->TX_DL);  

            if(CanTp_Prv_GetBit(Connection->BitFields, (0x04u)))
            {
                PayloadLength = TX_DL - 1 - CanTp_AddressSize[Connection->AddressFormatId];
                MaxLength = (PciId < (1u)) ? PayloadLength : (PayloadLength - (1u));
            }
            else
            {
                MaxLength = (uint16)((TX_DL > (8u)) ? (0xFFFFFFFFu) : (0xFFFu));
            }
             
            ErrorId = (CanTpTxInfoPtr->SduLength > MaxLength) ? (0x90u) : (0u);
        }

        if(ErrorId != (0u))
        {
            ;
        }
        else
        {
            CanTp_GetElapsedValue(&Value, &ElapsedValue);

            SchM_Enter_CanTp_EXCLUSIVE_AREA();

            if(CanTp_State[CanTp_SubState[Connection->ChannelId]] == (0u))
            {    
 
                Channel->ActiveSduId = (CanTp_SduIdType)CanTpTxSduId;
                Channel->PciId = PciId;
                Channel->SduLength = CanTpTxInfoPtr->SduLength;
                Channel->InitialTicks = Value;  
                Channel->TxBufferStatus = (0u);
                 
                Channel->STminTicks = (128u);
                CanTp_SubState[Connection->ChannelId] = (1u);
                RetVal = 0U;
            }

            SchM_Exit_CanTp_EXCLUSIVE_AREA();
        }
    }

    return(RetVal);
}











 
void CanTp_TxConfirmation(PduIdType TxPduId)
{    
    CanTp_ChannelType *Channel;
    CanTp_ChannelIdType ChannelId;
    uint8 SubState;
    CanTp_TickType Value = 0;
    CanTp_TickType ElapsedValue;
    uint8 MaxCopyLength;
    const CanTp_TxSduType *TxConnection;

    {
        CanTp_GetElapsedValue(&Value, &ElapsedValue);

        SchM_Enter_CanTp_EXCLUSIVE_AREA();

        ChannelId = CanTp_TxConfirmationChannel[TxPduId];
        Channel = CanTp_Channel + ((ChannelId < CanTp_CfgPtr->NumberOfChannels) ? ChannelId : 0);
        SubState = (ChannelId < CanTp_CfgPtr->NumberOfChannels) ? CanTp_SubState[ChannelId] : (0u);

        switch(SubState)
        {
            case (7u):

                Channel->InitialTicks = Value;
                CanTp_Prv_FcTxConfirmation(ChannelId);
                CanTp_TxConfirmationChannel[TxPduId] = ((1u));  
                break;

            case (2u):

                Channel->InitialTicks = Value;
                TxConnection = CanTp_CfgPtr->TxSdu + Channel->ActiveSduId;
                MaxCopyLength = ((TxConnection)->TX_DL) -
                                CanTp_AddressSize[TxConnection->AddressFormatId] - CanTp_PciSize[Channel->PciId];
                Channel->SduLengthRemaining = (Channel->SduLengthRemaining < MaxCopyLength) ? 0u :
                                              (Channel->SduLengthRemaining - MaxCopyLength);

                if(Channel->PciId == (4u))
                {
                    Channel->SN++;
                    Channel->SN &= (0x0Fu) ;
                    Channel->BlockCfsRemaining--;
                }

                if(Channel->SduLengthRemaining == 0u)
                {    
                    CanTp_SubState[ChannelId] = (0u);
                    CanTp_PduRConfirmationApis[(0u)](TxConnection->PduRPduHandleId, 0U);
                }
                else
                {
                    if(Channel->BlockCfsRemaining != 0u)
                    {
                        CanTp_SubState[ChannelId] = (4u);
                    }
                    else
                    {    
                        CanTp_Prv_PrepareFcRecieve(ChannelId);
                    }
                }
                 
                CanTp_TxConfirmationChannel[TxPduId] = ((1u));
                break;

            default:     
                break;
        }

        SchM_Exit_CanTp_EXCLUSIVE_AREA();
         
        ;
    }
}









 
void CanTp_RxIndication(PduIdType RxPduId, const PduInfoType *PduInfoPtr)
{
    CanTp_RxContextType Context;
    uint8 ErrorId;

    Context.PduId = RxPduId;
    Context.FrameType = 0;
    Context.ChannelId = 0;

    { 
        if(PduInfoPtr == ((void *)0))
        {    
            ;
        }
        else
        {
            ErrorId = CanTp_Prv_GetRxContext(&Context, PduInfoPtr);

            if(ErrorId != (0u))
            {
                ;
            }
            else if(CanTp_Prv_RxSduLengthCheck(&Context, PduInfoPtr) != 0U)
            {
                CanTp_Prv_LengthError(&Context);
            }
            else
            {    
                CanTp_ProcessFrame[(&Context)->FrameType](&Context, PduInfoPtr);
                 
                ;
            }
        }
    }
}




