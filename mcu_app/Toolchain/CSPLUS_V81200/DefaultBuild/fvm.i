






 
 







 
 








 



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;

typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef signed long int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef signed long int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef signed long long int_fast64_t;
typedef unsigned long long uint_fast64_t;

typedef int intptr_t;
typedef unsigned int uintptr_t;

typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;

























 






 


 
typedef uint8_t Std_ReturnType;

typedef struct
{
    uint32_t canId;
    uint32_t authStartByte;
}SecocSdkMsg_t;

typedef struct
{
    uint32_t tripCounter;    
    uint16_t resetCounter;   
    uint32_t messageCounter; 
} Fvm_FreshnessValue_t;

typedef enum
{
    FVM_UNINIT = 0x00U,
    FVM_IDLE   = 0x01U,
    FVM_BUSY   = 0x02U
} Fvm_StatusType;

typedef enum
{
    FVM_INDEX_CFG_RX = 0x00U,
    FVM_INDEX_CFG_TX = 0x01U,
} Fvm_IndexCfgType;

typedef enum
{
    FVM_E_NO_ERROR        = 0x00U,
    FVM_E_INVALID_PARAM   = 0x01U,
    FVM_E_NOT_INITIALIZED = 0x02U,
    FVM_E_BUFFER_OVERFLOW = 0x03U,
    FVM_E_NVM_ERROR       = 0x04U,
    FVM_E_COUNTER_DECREASED = 0x05U,
    FVM_E_VERIFICATION_FAILED = 0x06U
} Fvm_ErrorType;

typedef struct
{
     
    void (*Fvm_SaveTripCounter)(uint32_t tripCounter);
    void (*Fvm_ReadTripCounter)(uint32_t *pTripCounter);
     
    void (*Fvm_ErrorNotification)(Fvm_ErrorType error);
    const SecocSdkMsg_t *pTxSecocMsgConfig;
    const SecocSdkMsg_t *pRxSecocMsgConfig;
    Fvm_FreshnessValue_t *pTxMsgBuffer;
    Fvm_FreshnessValue_t *pRxMsgBuffer;
    uint16_t txSecocMsgNum;
    uint16_t rxSecocMsgNum;
} Fvm_ConfigType;

 







 
Std_ReturnType Fvm_Init(const Fvm_ConfigType* pConfig);








 
void Fvm_Deinit(void);








 
Std_ReturnType Fvm_SetTripCounter(uint32_t tripCounter);








 
Std_ReturnType Fvm_GetTripCounter(uint32_t* pTripCounter);










 
Std_ReturnType Fvm_SetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t messageCounter);









 
Std_ReturnType Fvm_GetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t* pmessageCounter);








 
Std_ReturnType Fvm_SetResetCounter(uint16_t resetCounter);








 
Std_ReturnType Fvm_GetResetCounter(uint16_t* pResetCounter);








 
Std_ReturnType Fvm_GetFreshnessValue(uint32_t canId, uint8_t* pFreshnessBytes);










 
Std_ReturnType Fvm_VerifyFreshnessValue(uint32_t canId, uint16_t currentMsgCntL, uint8_t currentMsgRstCntL, uint8_t* pFreshnessBytes);








 
Std_ReturnType Fvm_ResetTripCounter(void);









 
Std_ReturnType Fvm_UpdateSynCounters(uint32_t tripCounter, uint16_t resetCounter);








 
Std_ReturnType Fvm_GetStatus(Fvm_StatusType* pStatus);


 
 

 
 
static uint32_t g_tripCounter = 0x00UL;
static uint16_t g_resetCounter = 0x00UL;
static const Fvm_ConfigType* g_pFvmConfig = ((void *)0);
static Fvm_StatusType g_fvmStatus = FVM_UNINIT;

 
static int16_t Fvm_FindMessageIndex(uint32_t canId, Fvm_IndexCfgType isTx);

 







 
Std_ReturnType Fvm_Init(const Fvm_ConfigType* pConfig)
{
    uint16_t i = 0u;

    if (g_pFvmConfig != ((void *)0))
    {
        if (pConfig == ((void *)0))
        {
            if (pConfig->Fvm_ErrorNotification != ((void *)0))
            {
                pConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
        
        if (pConfig->Fvm_SaveTripCounter == ((void *)0) || pConfig->Fvm_ReadTripCounter == ((void *)0))
        {
            if (pConfig->Fvm_ErrorNotification != ((void *)0))
            {
                pConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
    }
    
    g_pFvmConfig = pConfig;
    g_tripCounter = 0x00UL;
    g_resetCounter = 0x00UL;
	for (i = 0u; i < g_pFvmConfig->txSecocMsgNum; i++)
	{
		g_pFvmConfig->pTxMsgBuffer[i].messageCounter = 0x00UL; 
	} 
	for (i = 0; i < g_pFvmConfig->rxSecocMsgNum; i++)
	{
		g_pFvmConfig->pRxMsgBuffer[i].messageCounter = 0x00UL;
	}
    
     
    if (g_pFvmConfig != ((void *)0) && g_pFvmConfig->Fvm_ReadTripCounter != ((void *)0))
    {  
        g_pFvmConfig->Fvm_ReadTripCounter(&g_tripCounter);
        if (g_tripCounter > 0xFFFFFFUL)
        {
            g_tripCounter = 0x00UL;
        }
    }
    
    g_fvmStatus = FVM_IDLE;
    
    return 0x00U;
}








 
void Fvm_Deinit(void)
{
    g_fvmStatus = FVM_UNINIT;
    g_pFvmConfig = ((void *)0);
}








 
Std_ReturnType Fvm_SetTripCounter(uint32_t tripCounter)
{
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if(g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
        
        if (tripCounter > 0xFFFFFFUL)
        {
            if(g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }

        if (tripCounter < g_tripCounter)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_COUNTER_DECREASED); 
            }
            return 0x01U;
        }
    }
    if (tripCounter == g_tripCounter)
    {
        return 0x00U;
    }
    g_tripCounter = tripCounter;
    if (g_pFvmConfig != ((void *)0) && g_pFvmConfig->Fvm_SaveTripCounter != ((void *)0))
    {
        g_pFvmConfig->Fvm_SaveTripCounter(tripCounter);
    }
    
    return 0x00U;
}








 
Std_ReturnType Fvm_GetTripCounter(uint32_t* pTripCounter)
{
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
        
        if (pTripCounter == ((void *)0))
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
    }
    
    *pTripCounter = g_tripCounter;
    
    return 0x00U;
}










 
Std_ReturnType Fvm_SetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t messageCounter)
{
    int16_t msgIndex;
    Fvm_FreshnessValue_t* pMsgBuffer;
    
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
    }
    
     
    msgIndex = Fvm_FindMessageIndex(canId, isTx);
    if (msgIndex < 0)
    {
        return 0x01U;
    }
    
    if (isTx == FVM_INDEX_CFG_TX)
    {
        pMsgBuffer = &g_pFvmConfig->pTxMsgBuffer[msgIndex];
    }
    else
    {
        pMsgBuffer = &g_pFvmConfig->pRxMsgBuffer[msgIndex];
    }

    pMsgBuffer->messageCounter = messageCounter;
    
    return 0x00U;
}









 
Std_ReturnType Fvm_GetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t* pmessageCounter)
{
    int16_t msgIndex;
    Fvm_FreshnessValue_t* pMsgBuffer;
    
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
        if (pmessageCounter == ((void *)0))
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }        
    }
    
     
    msgIndex = Fvm_FindMessageIndex(canId, isTx);
    if (msgIndex < 0)
    {
        return 0x01U;
    }
    
    if (isTx == FVM_INDEX_CFG_TX)
    {
        pMsgBuffer = &g_pFvmConfig->pTxMsgBuffer[msgIndex];
    }
    else
    {
        pMsgBuffer = &g_pFvmConfig->pRxMsgBuffer[msgIndex];
    }

    *pmessageCounter = pMsgBuffer->messageCounter;
    
    return 0x00U;
}








 
Std_ReturnType Fvm_SetResetCounter(uint16_t resetCounter)
{
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
    }
    
    g_resetCounter = resetCounter;
    
    return 0x00U;
}








 
Std_ReturnType Fvm_GetResetCounter(uint16_t* pResetCounter)
{
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
        
        if (pResetCounter == ((void *)0))
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
    }
    
    *pResetCounter = g_resetCounter;
    
    return 0x00U;
}








 
Std_ReturnType Fvm_GetFreshnessValue(uint32_t canId, uint8_t* pFreshnessBytes)
{
    int16_t msgIndex = 0;
    Fvm_FreshnessValue_t* pMsgBuffer;
    uint32_t messageCounter = 0u;

    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
        
        if (pFreshnessBytes == ((void *)0))
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
        
         
        if (messageCounter > 0x3FFFFFUL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
    }

    msgIndex = Fvm_FindMessageIndex(canId, FVM_INDEX_CFG_TX);
    if (msgIndex < 0)
    {
        if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return 0x01U;
    }

    pMsgBuffer = &g_pFvmConfig->pTxMsgBuffer[msgIndex];
    messageCounter = pMsgBuffer->messageCounter;
    
     
    if(pMsgBuffer->messageCounter >= 0x3FFFFFUL)
    {
        pMsgBuffer->messageCounter = 0;
    }
    else
    {
        pMsgBuffer->messageCounter++;
    }
    
     
    pFreshnessBytes[0] = (uint8_t)((g_tripCounter >> 16) & 0xFFu);
    pFreshnessBytes[1] = (uint8_t)((g_tripCounter >> 8) & 0xFFu);
    pFreshnessBytes[2] = (uint8_t)(g_tripCounter & 0xFFu);
    pFreshnessBytes[3] = (uint8_t)((g_resetCounter >> 8) & 0xFFu);
    pFreshnessBytes[4] = (uint8_t)(g_resetCounter & 0xFFu);
    pFreshnessBytes[5] = (uint8_t)((messageCounter >> 14) & 0xFFu);
    pFreshnessBytes[6] = (uint8_t)((messageCounter >> 6) & 0xFFu);
    pFreshnessBytes[7] = (uint8_t)(((messageCounter & 0x3Fu) << 2) | (g_resetCounter & 0x03u));
    
    return 0x00U;
}










 
Std_ReturnType Fvm_VerifyFreshnessValue(uint32_t canId, uint16_t currentMsgCntL, uint8_t currentMsgRstCntL, uint8_t* pFreshnessBytes)
{
    int16_t msgIndex = 0;
    Fvm_FreshnessValue_t* pMsgBuffer;
    uint8_t rstCntL = 0u;           
    uint64_t tripRstCnt = 0u;      
    uint64_t tripRstcntLast = 0u;  
    uint32_t pMsgCntOut = 0u;
    uint32_t pTripCntOut = 0u;
    uint16_t pRstCntOut = 0u;
    
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
        
        if (pFreshnessBytes == ((void *)0))
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
    }

    msgIndex = Fvm_FindMessageIndex(canId, FVM_INDEX_CFG_RX);
    if (msgIndex < 0)
    {
        if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return 0x01U;
    }

    pMsgBuffer = &g_pFvmConfig->pRxMsgBuffer[msgIndex];

    rstCntL = (int8_t)(g_resetCounter & 0x03u);
    tripRstCnt = ((uint64_t)g_tripCounter << 16 ) + (uint64_t)g_resetCounter;
    tripRstcntLast = ((uint64_t)pMsgBuffer->tripCounter << 16) + (uint64_t)pMsgBuffer->resetCounter;

    if (rstCntL == currentMsgRstCntL)
    {                
         
    }
    else if ((rstCntL - 1) == currentMsgRstCntL)
    {
         
        tripRstCnt -= 1u;
    }
    else if ((rstCntL + 1) == currentMsgRstCntL)
    {
         
        tripRstCnt += 1u;
    }
    else if (( rstCntL - 2) == currentMsgRstCntL)
    {
         
        tripRstCnt -= 2u;
    }
    else if ((rstCntL + 2) == currentMsgRstCntL)
    {
         
        tripRstCnt += 2u;
    }
    else
    {
         
        if (g_pFvmConfig != ((void *)0) && g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return 0x01U;
    }

    if (tripRstCnt == tripRstcntLast)
    {
        if (currentMsgCntL > (pMsgBuffer->messageCounter & 0x3Fu)) 
        {
             
            pMsgCntOut = (pMsgBuffer->messageCounter & 0x3FFFC0u) | currentMsgCntL;
        }
        else  
        {
             
            pMsgCntOut = ((pMsgBuffer->messageCounter & 0x3FFFC0u) + 0x40u) | currentMsgCntL;
        }
        
         
        pTripCntOut = pMsgBuffer->tripCounter;
        pRstCntOut = pMsgBuffer->resetCounter;
    }
    else if (tripRstCnt > tripRstcntLast)
    {
         
        pMsgCntOut = currentMsgCntL;
        pTripCntOut = g_tripCounter;
        pRstCntOut = (uint16_t)tripRstCnt&0xFFFFu;
    }
    else
    {
         
        if (g_pFvmConfig != ((void *)0) && g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return 0x01U;
    }

     
    pMsgBuffer->tripCounter = pTripCntOut;
    pMsgBuffer->resetCounter = pRstCntOut;
    pMsgBuffer->messageCounter = pMsgCntOut;

     
    pFreshnessBytes[0] = (uint8_t)((pTripCntOut >> 16) & 0xFFu);
    pFreshnessBytes[1] = (uint8_t)((pTripCntOut >> 8) & 0xFFu);
    pFreshnessBytes[2] = (uint8_t)(pTripCntOut & 0xFFu);
    pFreshnessBytes[3] = (uint8_t)((pRstCntOut >> 8) & 0xFFu);
    pFreshnessBytes[4] = (uint8_t)(pRstCntOut & 0xFFu);
    pFreshnessBytes[5] = (uint8_t)((pMsgCntOut >> 14) & 0xFFu);
    pFreshnessBytes[6] = (uint8_t)((pMsgCntOut >> 6) & 0xFFu);
    pFreshnessBytes[7] = (uint8_t)(((pMsgCntOut & 0x3Fu) << 2) | (g_resetCounter & 0x03u));

    return 0x00U;
}







 
Std_ReturnType Fvm_ResetTripCounter(void)
{
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
    }
    
    g_tripCounter = 0;
     
    if (g_pFvmConfig != ((void *)0) && g_pFvmConfig->Fvm_SaveTripCounter != ((void *)0))
    {
        g_pFvmConfig->Fvm_SaveTripCounter(g_tripCounter);
    }
    
    return 0x00U;
}









 
Std_ReturnType Fvm_UpdateSynCounters(uint32_t tripCounter, uint16_t resetCounter)
{
    Std_ReturnType result;
    uint16_t i = 0u;
    
    if (g_pFvmConfig != ((void *)0))
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return 0x01U;
        }
    }
    
     
    result = Fvm_SetTripCounter(tripCounter);
    if(result != 0x00U)
    {
        return result;
    }
    
     
    result = Fvm_SetResetCounter(resetCounter);
    if(result != 0x00U)
    {
        return result;
    }

	for (i = 0u; i < g_pFvmConfig->txSecocMsgNum; i++)
	{
		g_pFvmConfig->pTxMsgBuffer[i].messageCounter = 0x00UL;
	} 
	for (i = 0; i < g_pFvmConfig->rxSecocMsgNum; i++)
	{
		g_pFvmConfig->pRxMsgBuffer[i].messageCounter = 0x00UL;
	}
    
    return 0x00U;
}








 
Std_ReturnType Fvm_GetStatus(Fvm_StatusType* pStatus)
{
    if(g_pFvmConfig != ((void *)0))
    {
        if(pStatus == ((void *)0))
        {
            if(g_pFvmConfig->Fvm_ErrorNotification != ((void *)0))
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return 0x01U;
        }
    }
    
    *pStatus = g_fvmStatus;
    
    return 0x00U;
}









 
static int16_t Fvm_FindMessageIndex(uint32_t canId, Fvm_IndexCfgType isTx)
{
    uint16_t i = 0u;
    uint16_t msgNum = 0u;
    const SecocSdkMsg_t *pMsgConfig;
    
    if(g_pFvmConfig == ((void *)0) || g_fvmStatus == FVM_UNINIT)
    {
        return -1;
    }
    
    if (isTx == FVM_INDEX_CFG_TX)
    {
        msgNum = g_pFvmConfig->txSecocMsgNum;
        pMsgConfig = g_pFvmConfig->pTxSecocMsgConfig;
    }
    else
    {
        msgNum = g_pFvmConfig->rxSecocMsgNum;
        pMsgConfig = g_pFvmConfig->pRxSecocMsgConfig;
    }
    
    if(pMsgConfig == ((void *)0))
    {
        return -1;
    }
    
    for(i = 0; i < msgNum; i++)
    {
        if(pMsgConfig[i].canId == canId)
        {
            return (int16_t)i;
        }
    }
    
    return -1;
}
