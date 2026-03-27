











 












 



 










































































































 

 












 












 































 


 
 




















 
 


 
 

 

 

 

 

 

 

 

 

 


 

 

 

 

 

 
 
 








 






 




















 
 


 













 












 

 












 














 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 


 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 













 
 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 










































 
 



 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 
 

 



 



 







 
 
 
 

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        
 
 
 







                                        
                                        
                                        

 
 
 







                                         
                                         
                                         

 
 
 







                                        
                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        


 
 
 




                                               
                                              
                                        
                                        
                                        




 

 
 
 








                                        
                                        
                                        


 
 
 







                                        
                                        
                                        

 
 
 







                                        
                                        
                                        

 
 
 




                                           
                                           

 
 
 




                                        
                                        

 
 
 









 
 
 







                                        
                                        
                                        

 

 




 




 




 




 




 




 

 




 

 




 




 




 




 



 





 
                                   


 
 

 



 



 






 

 





 





 

 
 

 






 





 





 





 





 




 




 

 


 





 





 
 



 


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

 




















 
 

 

 


 
 
typedef uint8 ComM_InhibitionStatusType;







 
typedef uint8 ComM_ModeType;




 



 
typedef uint8 ComM_UserHandleType;

 
typedef uint8 ComM_UserHandleSubArrayType_ComMChannel_0[1];

 
typedef struct{

    uint8 numberOfRequesters;
    ComM_UserHandleSubArrayType_ComMChannel_0 handleArray;
}ComM_UserHandleArrayType_ComMChannel_0;



 
 
 
 
 
 
 

 

 
typedef uint8 ComM_InitStatusType;
 

 
 



 
typedef uint8 ComM_StateType;

 
typedef uint8 ComM_PncModeType;


 


 
 
typedef struct {
    Std_ReturnType (*busSm_RequestComMode)(NetworkHandleType network, ComM_ModeType ComM_Mode);
    Std_ReturnType (*busSm_GetCurrentComMode)(NetworkHandleType network, ComM_ModeType* ComM_Mode);
} ComM_BusSmConfigType;

 
typedef struct {
    NetworkHandleType inerChIdx;
    uint32 busType;
    NetworkHandleType busIndex;
    const ComM_BusSmConfigType* busSmCfgType;
    uint8 nmVariant;
    uint8 dcmInReqIdx;
    const uint8* dcmNotifyIdPtr;
    uint8 cfgMask[1];
     
    uint8* requestMask;
    uint8 requestMaskLen;
} ComM_ChannelConfigType;

 
typedef struct ComM_UserConfigSTag{
    ComM_UserHandleType userId;
    const uint8* directChList;
    uint32 directChListNum;
    const uint8* mapAllChList;
    uint32 mapAllChListNum;
    const uint8* userInChIdex;
} ComM_UserConfigType;

typedef struct {
    const ComM_ChannelConfigType* chCfgPtr;
    const ComM_UserConfigType* userCfgPtr;
    uint32 userCfgNum;
}ComM_ConfigType;

 
extern const ComM_ConfigType ComM_Config;



 

 

 


 void
ComM_Init(const ComM_ConfigType * ConfigPtr);

 void ComM_DeInit(void);


 Std_ReturnType
ComM_GetStatus(ComM_InitStatusType* Status);

 Std_ReturnType
ComM_RequestComMode(ComM_UserHandleType User, ComM_ModeType ComMode);

 Std_ReturnType
ComM_GetMaxComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);

 Std_ReturnType
ComM_GetRequestedComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);

 Std_ReturnType
ComM_GetCurrentComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);

 Std_ReturnType
ComM_GetCurrentPNCComMode(ComM_UserHandleType User, ComM_ModeType* ComMode);






















 












 

 


 








 

typedef struct
{
    uint8 ecuGroupClass;
    uint16 inhibitCnt;
} ComM_StoryDataType;

extern ComM_InitStatusType ComM_InitStatus;
extern const ComM_ConfigType* ComM_ConfigPtr;

extern ComM_ModeType ComM_UserReqMode[1u];

extern Std_ReturnType ComM_HandleUserReqest(ComM_UserHandleType User, ComM_ModeType ComMode);

static inline void ComM_CommonSetBit(uint8* data, uint32 bitPn)
{
    data[bitPn / 8u] |= 1u << (bitPn % 8u);
}

static inline void ComM_CommonClrBit(uint8* data, uint32 bitPn)
{
    data[bitPn / 8u] &= ~(1u << (bitPn % 8u));
}


static inline boolean ComM_CommonGetBit(const uint8* data, uint32 bitPn)
{
    return (data[bitPn / 8u] & (1u << (bitPn % 8u))) != 0u;
}












 












 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 













 












 


 

 

 

typedef struct
{

    uint8 specMode;
    uint8 reqMode;
     
     
    ComM_ModeType busSmIndMode;
     
    ComM_ModeType busSmReqMode;
     
    uint8 funcMask[1];
    uint32 reqCnt;
    uint8* reqMask;
    uint8 NmModeEvent;
} ComM_ChVarType;

 


void ComM_ChInit(const ComM_ChannelConfigType* channelConfigPtr, uint32 chNum);

 void
ComM_ChGetState(uint32 chIdx, ComM_StateType* chStu);

ComM_ModeType ComM_ChGetMaxAllowMode(uint32 chIdx);

 Std_ReturnType
ComM_ChGetCurrentComMode(uint32 chIdx, ComM_ModeType* ComMode);

 void ComM_ChComAllow(uint32 chIdx, boolean allowed);

 void ComM_ChBusSmModeInd(uint32 chIdx, ComM_ModeType comMode);

void ComM_ChannelNmModeIndication(NetworkHandleType Channel, uint8 NmModeEvent);

 Std_ReturnType ComM_ChRequstCommMode(uint32 chIdx, uint32 reqIdex, ComM_ModeType comMode);

 void ComM_ChEcuMWakeup(uint32 chIdx);

 void ComM_ChPassiveWakeup(uint32 chIdx);

 void ComM_ChProcessTimer(uint8 chIdx);



 void ComM_ChDiagIndication(uint32 chIdx, boolean flag);

















 












 
 
 

 void ComM_Nm_NetworkStartIndication(NetworkHandleType Channel);
 void ComM_Nm_NetworkMode(NetworkHandleType Channel);
 void ComM_Nm_PrepareBusSleepMode(NetworkHandleType Channel);
 void ComM_Nm_BusSleepMode(NetworkHandleType Channel);
 void ComM_Nm_RestartIndication(NetworkHandleType Channel);



















 












 
 

 


 void ComM_EcuM_WakeUpIndication(NetworkHandleType Channel);















 












 

 
 

 void ComM_DCM_ActiveDiagnostic(NetworkHandleType Channel);
 void ComM_DCM_InactiveDiagnostic(NetworkHandleType Channel);














 












 


 

 

void ComM_BusSM_ModeIndication(NetworkHandleType Channel, ComM_ModeType ComMode);

 void ComM_BusSM_BusSleepMode(NetworkHandleType Channel);














 












 

 

 

 void ComM_CommunicationAllowed(NetworkHandleType Channel, boolean Allowed);






























 
   
   
   


























 




























 
   


 



 



 
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








extern void ComM_MainFunction_ComMChannel_0(void);


 
extern void SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_0(void);
extern void SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_0(void);
 
extern void SchM_Enter_ComM_COMM_EXCLUSIVE_AREA_1(void);
extern void SchM_Exit_ComM_COMM_EXCLUSIVE_AREA_1(void);

















 



 








 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
ComM_InitStatusType ComM_InitStatus = 0x0u;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section





 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section





 

 
   
const ComM_ConfigType* ComM_ConfigPtr;












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section






 

 
   
ComM_ModeType ComM_UserReqMode[1u];    












 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section






 

 
   

 

 












 












 


 



 
 

   

 

























 




 



 

 
 
    #pragma section




 

 
   









 
   
Std_ReturnType ComM_HandleUserReqest(ComM_UserHandleType User, ComM_ModeType ComMode)
   
{
    Std_ReturnType ret = 1U;
    const ComM_UserConfigType* userCfgPtr = &ComM_ConfigPtr->userCfgPtr[User];
    for (uint32 index = 0u; index < userCfgPtr->directChListNum; index++)
    {
        {
            ret = ComM_ChRequstCommMode(userCfgPtr->directChList[index], userCfgPtr->userInChIdex[index], ComMode);
        }
        if (ret != 0U)
        {
            break;
        }
    }
    return ret;
}







 
 void
ComM_Init(const ComM_ConfigType * ConfigPtr)
{
    (void)(ConfigPtr);

    ;
    ComM_ConfigPtr = &ComM_Config;
    ComM_ChInit(ComM_ConfigPtr->chCfgPtr, 1u);


    for (uint32 index = 0u; index < 1u; index++)
    {
        ComM_UserReqMode[index] = 0u;
    }
    ComM_InitStatus = 0x1u;
    ;
}







 
 void ComM_DeInit(void)
{
    ;
    {

        uint32 chIdx;
        for (chIdx = 0; chIdx < 1u; chIdx++)
        {
            ComM_StateType chStu;
            ComM_ChGetState(chIdx, &chStu);
            if (chStu != 0u)
            {
                break;
            }
        }
        if (chIdx >= 1u)
        {
            ComM_InitStatus = 0x0u;
        }
    }
    ;
}









 
 Std_ReturnType
ComM_GetStatus(ComM_InitStatusType* Status)
{
    Std_ReturnType ret = 1U;
    {
        *Status = ComM_InitStatus;
        ret = 0U;
    }
    return ret;
}










 
   
 Std_ReturnType
ComM_RequestComMode(ComM_UserHandleType User, ComM_ModeType ComMode)
   
{
    Std_ReturnType ret = 1U;
    {
        ComM_UserReqMode[User] = ComMode;
        ret = ComM_HandleUserReqest(User, ComMode);    
    }
    return ret;
}









 
 Std_ReturnType
ComM_GetMaxComMode(ComM_UserHandleType User, ComM_ModeType* ComMode)
{
    Std_ReturnType ret = 1U;
    {
        ret = 0U;
        const ComM_UserConfigType* userCfgPtr = &ComM_ConfigPtr->userCfgPtr[User];
        *ComMode = 2u;

        for (uint32 index = 0u; index < userCfgPtr->mapAllChListNum; index++)
        {
            ComM_ModeType chMode = ComM_ChGetMaxAllowMode(userCfgPtr->mapAllChList[index]);
            *ComMode = chMode;
            if (chMode == 0u)
            {
                break;
            }
        }
    }
    return ret;
}









 
 Std_ReturnType
ComM_GetRequestedComMode(ComM_UserHandleType User, ComM_ModeType* ComMode)
{
    Std_ReturnType ret = 1U;
    {
        *ComMode = ComM_UserReqMode[User];
        ret = 0U;
    }
    return ret;
}









 
 Std_ReturnType
ComM_GetCurrentComMode(ComM_UserHandleType User, ComM_ModeType* ComMode)
{
    Std_ReturnType ret = 1U;
    {
        const ComM_UserConfigType* usrCfgPtr = &ComM_ConfigPtr->userCfgPtr[User];
        ComM_ModeType localMode = 0xffu;
        for (uint32 index = 0; index < usrCfgPtr->mapAllChListNum; index++)
        {
            ComM_ModeType modeTmp;
            ret = ComM_ChGetCurrentComMode(usrCfgPtr->mapAllChList[index], &modeTmp);
            if ((ret == 0U) && (modeTmp < localMode))
            {
                localMode = modeTmp;
            }
            if ((ret != 0U) || (modeTmp == 0u))
            {
                break;
            }
        }
        if (0U == ret)
        {
            *ComMode = localMode;
        }
    }
    return ret;
}









 
 Std_ReturnType
ComM_GetCurrentPNCComMode(ComM_UserHandleType User, ComM_ModeType* ComMode)
{
    Std_ReturnType ret = 1U;
    {
    }
    return ret;
}











 
 void ComM_Nm_NetworkStartIndication(NetworkHandleType Channel)
{
    {
        ComM_ChPassiveWakeup(Channel);
    }
}






 
 void ComM_Nm_NetworkMode(NetworkHandleType Channel)
{
    {
        ComM_ChannelNmModeIndication(Channel, 0x3u);
    }
}






 
 void ComM_Nm_PrepareBusSleepMode(NetworkHandleType Channel)
{
    {
        ComM_ChannelNmModeIndication(Channel, 0x1u);
    }
}






 
 void ComM_Nm_BusSleepMode(NetworkHandleType Channel)
{
    {
        ComM_ChannelNmModeIndication(Channel, 0x0u);
    }
}





 
 void ComM_Nm_RestartIndication(NetworkHandleType Channel)
{
    {
        ComM_ChPassiveWakeup(Channel);
    }
}











 
 void ComM_DCM_ActiveDiagnostic(NetworkHandleType Channel)
{
    {
        ComM_ChDiagIndication(Channel, 1u);
    }
}






 
 void ComM_DCM_InactiveDiagnostic(NetworkHandleType Channel)
{
    {
        ComM_ChDiagIndication(Channel, 0u);
    }
}







 
 void ComM_EcuM_WakeUpIndication(NetworkHandleType Channel)
{
    {
        uint32 chIdx = Channel;
        {
            ComM_ChEcuMWakeup(chIdx);
        }
    }
}











 
 void ComM_CommunicationAllowed(NetworkHandleType Channel, boolean Allowed)
{
    {
        ComM_ChComAllow(Channel, Allowed);
    }
}









 
 void
ComM_BusSM_ModeIndication(NetworkHandleType Channel, ComM_ModeType ComMode)
{
    {
        ComM_ChBusSmModeInd(Channel, ComMode);
    }
}







 
 void ComM_BusSM_BusSleepMode(NetworkHandleType Channel)
{
    {
        ComM_ChBusSmModeInd(Channel, (ComM_ModeType)0xffu);
    }
}















 












 


 



 
 

   

 

 
























 




 



 

 
 
   #pragma section




 

 
   
