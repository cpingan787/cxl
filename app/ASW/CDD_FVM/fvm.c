/*************************************************
 Copyright © 2026 SiRun (Beijing) . All rights reserved.
 File Name: fvm.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "fvm.h"

/****************************** Macro Definitions ******************************/
/* 新鲜值相关常量定义 */
#define FVM_TRIP_COUNT_INIT_VAL    0x00UL
#define FVM_TRIP_COUNT_MAX_VAL     0xFFFFFFUL
#define FVM_TRIP_COUNT_WINDOW_VAL  0x03UL
#define FVM_RESET_COUNT_INIT_VAL   0x00UL
#define FVM_RESET_COUNT_MAX_VAL    0xFFFFUL
#define FVM_MSG_COUNT_INIT_VAL     0x00UL

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static uint32_t g_tripCounter = FVM_TRIP_COUNT_INIT_VAL;
static uint16_t g_resetCounter = FVM_RESET_COUNT_INIT_VAL;
static const Fvm_ConfigType* g_pFvmConfig = NULL;
static Fvm_StatusType g_fvmStatus = FVM_UNINIT;

/****************************** Function Declarations *************************/
static int16_t Fvm_FindMessageIndex(uint32_t canId, Fvm_IndexCfgType isTx);

/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: Fvm_Init
 Description: FVM模块初始化
 Input: pConfig FVM配置结构体指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_Init(const Fvm_ConfigType* pConfig)
{
    uint16_t i = 0u;

    if (g_pFvmConfig != NULL)
    {
        if (pConfig == NULL)
        {
            if (pConfig->Fvm_ErrorNotification != NULL)
            {
                pConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
        
        if (pConfig->Fvm_SaveTripCounter == NULL || pConfig->Fvm_ReadTripCounter == NULL)
        {
            if (pConfig->Fvm_ErrorNotification != NULL)
            {
                pConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }
    
    g_pFvmConfig = pConfig;
    g_tripCounter = FVM_TRIP_COUNT_INIT_VAL;
    g_resetCounter = FVM_RESET_COUNT_INIT_VAL;
	for (i = 0u; i < g_pFvmConfig->txSecocMsgNum; i++)
	{
		g_pFvmConfig->pTxMsgBuffer[i].messageCounter = FVM_MSG_COUNT_INIT_VAL + 1u;
	} 
	for (i = 0; i < g_pFvmConfig->rxSecocMsgNum; i++)
	{
		g_pFvmConfig->pRxMsgBuffer[i].messageCounter = FVM_MSG_COUNT_INIT_VAL + 1u;
	}
    
    /* 从NVM读取行程计数器 */
    if (g_pFvmConfig != NULL && g_pFvmConfig->Fvm_ReadTripCounter != NULL)
    {  
        g_pFvmConfig->Fvm_ReadTripCounter(&g_tripCounter);
        if (g_tripCounter > FVM_TRIP_COUNT_MAX_VAL)
        {
            g_tripCounter = FVM_TRIP_COUNT_INIT_VAL;
        }
    }
    
    g_fvmStatus = FVM_IDLE;
    
    return E_OK;
}

/*************************************************
 Function: Fvm_Deinit
 Description: FVM模块去初始化
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
void Fvm_Deinit(void)
{
    g_fvmStatus = FVM_UNINIT;
    g_pFvmConfig = NULL;
}

/*************************************************
 Function: Fvm_SetTripCounter
 Description: 设置行程计数器
 Input: tripCounter 行程计数器值
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_SetTripCounter(uint32_t tripCounter)
{
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if(g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
        
        if (tripCounter > FVM_TRIP_COUNT_MAX_VAL)
        {
            if(g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }
    
    g_tripCounter = tripCounter;
    if (g_pFvmConfig != NULL && g_pFvmConfig->Fvm_SaveTripCounter != NULL)
    {
        g_pFvmConfig->Fvm_SaveTripCounter(tripCounter);
    }
    
    return E_OK;
}

/*************************************************
 Function: Fvm_GetTripCounter
 Description: 获取行程计数器
 Input: None
 Output: pTripCounter 输出的行程计数器指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetTripCounter(uint32_t* pTripCounter)
{
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
        
        if (pTripCounter == NULL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }
    
    *pTripCounter = g_tripCounter;
    
    return E_OK;
}

/*************************************************
 Function: Fvm_SetmessageCounter
 Description: 设置当前安全报文的消息计数器
 Input: canId CAN ID
        isTx 是否为发送消息（FVM_INDEX_CFG_TX-发送，FVM_INDEX_CFG_RX-接收）
        messageCounter 消息计数器
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_SetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t messageCounter)
{
    int16_t msgIndex;
    Fvm_FreshnessValue_t* pMsgBuffer;
    
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
    }
    
    /* 查找消息索引 */
    msgIndex = Fvm_FindMessageIndex(canId, isTx);
    if (msgIndex < 0)
    {
        return E_NOT_OK;
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
    
    return E_OK;
}

/*************************************************
 Function: Fvm_SetmessageCounter
 Description: 获取当前安全报文的消息计数器
 Input: canId CAN ID
        isTx 是否为发送消息（FVM_INDEX_CFG_TX-发送，FVM_INDEX_CFG_RX-接收）
 Output: messageCounter 输出的消息计数器指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetmessageCounter(uint32_t canId, Fvm_IndexCfgType isTx, uint32_t* pmessageCounter)
{
    int16_t msgIndex;
    Fvm_FreshnessValue_t* pMsgBuffer;
    
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
        if (pmessageCounter == NULL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }        
    }
    
    /* 查找消息索引 */
    msgIndex = Fvm_FindMessageIndex(canId, isTx);
    if (msgIndex < 0)
    {
        return E_NOT_OK;
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
    
    return E_OK;
}

/*************************************************
 Function: Fvm_SetResetCounter
 Description: 设置复位计数器
 Input: resetCounter 复位计数器值
 Output: void
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_SetResetCounter(uint16_t resetCounter)
{
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
    }
    
    g_resetCounter = resetCounter;
    
    return E_OK;
}

/*************************************************
 Function: Fvm_GetResetCounter
 Description: 获取复位计数器
 Input: None
 Output: pResetCounter 输出的复位计数器指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetResetCounter(uint16_t* pResetCounter)
{
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
        
        if (pResetCounter == NULL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }
    
    *pResetCounter = g_resetCounter;
    
    return E_OK;
}

/*************************************************
 Function: Fvm_GetFreshnessValue
 Description: 根据CAN ID获取完整新鲜值（用于发送）
 Input: canId CAN ID
 Output: pFreshnessBytes 输出的8字节新鲜值指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetFreshnessValue(uint32_t canId, uint8_t* pFreshnessBytes)
{
    int16_t msgIndex = 0;
    Fvm_FreshnessValue_t* pMsgBuffer;
    uint32_t messageCounter = 0u;

    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
        
        if (pFreshnessBytes == NULL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
        
        /* 检查messageCounter范围（22位） */
        if (messageCounter > 0x3FFFFFUL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }

    msgIndex = Fvm_FindMessageIndex(canId, FVM_INDEX_CFG_TX);
    if (msgIndex < 0)
    {
        if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return E_NOT_OK;
    }

    pMsgBuffer = &g_pFvmConfig->pTxMsgBuffer[msgIndex];
    messageCounter = pMsgBuffer->messageCounter;
    
    /* 增加消息计数器 */
    if(pMsgBuffer->messageCounter >= 0x3FFFFFUL)
    {
        pMsgBuffer->messageCounter = 0;
    }
    else
    {
        pMsgBuffer->messageCounter++;
    }
    
    /* 大端序 */
    pFreshnessBytes[0] = (uint8_t)((g_tripCounter >> 16) & 0xFFu);
    pFreshnessBytes[1] = (uint8_t)((g_tripCounter >> 8) & 0xFFu);
    pFreshnessBytes[2] = (uint8_t)(g_tripCounter & 0xFFu);
    pFreshnessBytes[3] = (uint8_t)((g_resetCounter >> 8) & 0xFFu);
    pFreshnessBytes[4] = (uint8_t)(g_resetCounter & 0xFFu);
    pFreshnessBytes[5] = (uint8_t)((messageCounter >> 14) & 0xFFu);
    pFreshnessBytes[6] = (uint8_t)((messageCounter >> 6) & 0xFFu);
    pFreshnessBytes[7] = (uint8_t)(((messageCounter & 0x3Fu) << 2) | (g_resetCounter & 0x03u));
    
    return E_OK;
}

// /*************************************************
//  Function: Fvm_VerifyFreshnessValue
//  Description: 验证新鲜值有效性，并构建完整新鲜值
//  Input: pMsgBufer 历史新鲜值信息
//         currentMsgCntL 当前接收的消息计数器低14位（从CAN消息中提取）
//         currentMsgRstCntL 当前接收的复位计数器低2位（从CAN消息中提取）
//  Output: pFreshnessBytes 输出的新鲜值指针
//  Return: E_OK-成功, E_NOT_OK-失败
//  Others:
// *************************************************/
// Std_ReturnType Fvm_VerifyFreshnessValue(uint32_t canId, uint16_t currentMsgCntL, uint8_t currentMsgRstCntL, uint8_t* pFreshnessBytes)
// {
//     int16_t msgIndex = 0;
//     Fvm_FreshnessValue_t* pMsgBuffer;
// 	uint8_t rstCntL = 0u;          /* 本地复位计数器的低2位 */
// 	uint64_t tripRstCnt = 0u;     /* 当前行程+复位计数器的组合值（40位） */
// 	uint64_t tripRstcntLast = 0u; /* 历史行程+复位计数器的组合值（40位） */
//     uint32_t pMsgCntOut = 0u;
//     uint32_t pTripCntOut = 0u;
//     uint16_t pRstCntOut = 0u;
    
//     if (g_pFvmConfig != NULL)
//     {
//         if (g_fvmStatus == FVM_UNINIT)
//         {
//             if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
//             {
//                 g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
//             }
//             return E_NOT_OK;
//         }
        
//         if (pFreshnessBytes == NULL)
//         {
//             if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
//             {
//                 g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
//             }
//             return E_NOT_OK;
//         }
//     }

//     msgIndex = Fvm_FindMessageIndex(canId, FVM_INDEX_CFG_RX);
//     if (msgIndex < 0)
//     {
//         if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
//         {
//             g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
//         }
//         return E_NOT_OK;
//     }

//     pMsgBuffer = &g_pFvmConfig->pRxMsgBuffer[msgIndex];

//     rstCntL = (int8_t)(g_resetCounter & 0x03u);
//     tripRstCnt = ((uint64_t)g_tripCounter << 16 ) + (uint64_t)g_resetCounter;
//     tripRstcntLast = ((uint64_t)pMsgBuffer->tripCounter << 16) + (uint64_t)pMsgBuffer->resetCounter;

// 	if (rstCntL == currentMsgRstCntL)
// 	{				
// 		/* 不需要调整，保持当前值 */
// 	}
// 	else if ((rstCntL - 1) == currentMsgRstCntL)
// 	{
// 		/* 减1，表示发生了借位 */
// 		tripRstCnt -= 1u;
// 	}
// 	else if ((rstCntL + 1) == currentMsgRstCntL)
// 	{
// 		/* 加1，表示发生了进位 */
// 		tripRstCnt += 1u;
// 	}
// 	else if (( rstCntL - 2) == currentMsgRstCntL)
// 	{
// 		/* 减2，表示发生了2次借位 */
// 		tripRstCnt -= 2u;
// 	}
// 	else if ((rstCntL + 2) == currentMsgRstCntL)
// 	{
// 		/* 加2，表示发生了2次进位 */
// 		tripRstCnt += 2u;
// 	}
// 	else
// 	{
// 		/* 获取新鲜值失败，返回错误 */
//         if (g_pFvmConfig != NULL && g_pFvmConfig->Fvm_ErrorNotification != NULL)
//         {
//             g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
//         }
// 		return E_NOT_OK;
// 	}

// 	if (tripRstCnt == tripRstcntLast)
// 	{
// 		if (currentMsgCntL > (pMsgBuffer->messageCounter & 0x3FFFu))/* 无进位 */
// 		{
// 			/* 低14位没有进位，高8位保持不变 */
// 			pMsgCntOut = (pMsgBuffer->messageCounter & 0x3FC000u) | currentMsgCntL;
// 		}
// 		else /* 有进位 */
// 		{
// 			/* 低14位发生了进位，需要增加高8位 */
// 			pMsgCntOut = ((pMsgBuffer->messageCounter & 0x3FC000u) + 0x4000u) | currentMsgCntL;
// 		}
		
// 		/* tripCounter和resetCounter保持历史值 */
// 		pTripCntOut = pMsgBuffer->tripCounter;
// 		pRstCntOut = pMsgBuffer->resetCounter;
// 	}
// 	else if (tripRstCnt > tripRstcntLast)
// 	{
// 		/* 新鲜值增大，H=0（不需要进位） */
// 		pMsgCntOut = currentMsgCntL;
// 		pTripCntOut = g_tripCounter;
// 		pRstCntOut = (uint16_t)tripRstCnt&0xFFFFu;
// 	}
// 	else
// 	{
// 		/* 新鲜值验证失败，返回错误 */
//         if (g_pFvmConfig != NULL && g_pFvmConfig->Fvm_ErrorNotification != NULL)
//         {
//             g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
//         }
// 		return -1;
// 	}

//     /* 更新历史新鲜值 */
//     pMsgBuffer->tripCounter = pTripCntOut;
//     pMsgBuffer->resetCounter = pRstCntOut;
//     pMsgBuffer->messageCounter = pMsgCntOut;

//     /* 大端序 */
//     pFreshnessBytes[0] = (uint8_t)((pTripCntOut >> 16) & 0xFFu);
//     pFreshnessBytes[1] = (uint8_t)((pTripCntOut >> 8) & 0xFFu);
//     pFreshnessBytes[2] = (uint8_t)(pTripCntOut & 0xFFu);
//     pFreshnessBytes[3] = (uint8_t)((pRstCntOut >> 8) & 0xFFu);
//     pFreshnessBytes[4] = (uint8_t)(pRstCntOut & 0xFFu);
//     pFreshnessBytes[5] = (uint8_t)((pMsgCntOut >> 14) & 0xFFu);
//     pFreshnessBytes[6] = (uint8_t)((pMsgCntOut >> 6) & 0xFFu);
//     pFreshnessBytes[7] = (uint8_t)(((pMsgCntOut & 0x3Fu) << 2) | (g_resetCounter & 0x03u));

//     return E_OK;
// }
/*************************************************
 Function: Fvm_VerifyFreshnessValue
 Description: 验证新鲜值有效性，并构建完整新鲜值
 Input: pMsgBufer 历史新鲜值信息
        currentMsgCntL 当前接收的消息计数器低6位（从CAN消息中提取）
        currentMsgRstCntL 当前接收的复位计数器低2位（从CAN消息中提取）
 Output: pFreshnessBytes 输出的新鲜值指针
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_VerifyFreshnessValue(uint32_t canId, uint16_t currentMsgCntL, uint8_t currentMsgRstCntL, uint8_t* pFreshnessBytes)
{
    int16_t msgIndex = 0;
    Fvm_FreshnessValue_t* pMsgBuffer;
    uint8_t rstCntL = 0u;          /* 本地复位计数器的低2位 */
    uint64_t tripRstCnt = 0u;     /* 当前行程+复位计数器的组合值（40位） */
    uint64_t tripRstcntLast = 0u; /* 历史行程+复位计数器的组合值（40位） */
    uint32_t pMsgCntOut = 0u;
    uint32_t pTripCntOut = 0u;
    uint16_t pRstCntOut = 0u;
    
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
        
        if (pFreshnessBytes == NULL)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }

    msgIndex = Fvm_FindMessageIndex(canId, FVM_INDEX_CFG_RX);
    if (msgIndex < 0)
    {
        if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return E_NOT_OK;
    }

    pMsgBuffer = &g_pFvmConfig->pRxMsgBuffer[msgIndex];

    rstCntL = (int8_t)(g_resetCounter & 0x03u);
    tripRstCnt = ((uint64_t)g_tripCounter << 16 ) + (uint64_t)g_resetCounter;
    tripRstcntLast = ((uint64_t)pMsgBuffer->tripCounter << 16) + (uint64_t)pMsgBuffer->resetCounter;

    if (rstCntL == currentMsgRstCntL)
    {                
        /* 不需要调整，保持当前值 */
    }
    else if ((rstCntL - 1) == currentMsgRstCntL)
    {
        /* 减1，表示发生了借位 */
        tripRstCnt -= 1u;
    }
    else if ((rstCntL + 1) == currentMsgRstCntL)
    {
        /* 加1，表示发生了进位 */
        tripRstCnt += 1u;
    }
    else if (( rstCntL - 2) == currentMsgRstCntL)
    {
        /* 减2，表示发生了2次借位 */
        tripRstCnt -= 2u;
    }
    else if ((rstCntL + 2) == currentMsgRstCntL)
    {
        /* 加2，表示发生了2次进位 */
        tripRstCnt += 2u;
    }
    else
    {
        /* 获取新鲜值失败，返回错误 */
        if (g_pFvmConfig != NULL && g_pFvmConfig->Fvm_ErrorNotification != NULL)
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return E_NOT_OK;
    }

    if (tripRstCnt == tripRstcntLast)
    {
        if (currentMsgCntL > (pMsgBuffer->messageCounter & 0x3Fu))/* 无进位 */
        {
            /* 低6位没有进位，高16位保持不变 */
            pMsgCntOut = (pMsgBuffer->messageCounter & 0x3FFFC0u) | currentMsgCntL;
        }
        else /* 有进位 */
        {
            /* 低6位发生了进位，需要增加高16位 */
            pMsgCntOut = ((pMsgBuffer->messageCounter & 0x3FFFC0u) + 0x40u) | currentMsgCntL;
        }
        
        /* tripCounter和resetCounter保持历史值 */
        pTripCntOut = pMsgBuffer->tripCounter;
        pRstCntOut = pMsgBuffer->resetCounter;
    }
    else if (tripRstCnt > tripRstcntLast)
    {
        /* 新鲜值增大，H=0（不需要进位） */
        pMsgCntOut = currentMsgCntL;
        pTripCntOut = g_tripCounter;
        pRstCntOut = (uint16_t)tripRstCnt&0xFFFFu;
    }
    else
    {
        /* 新鲜值验证失败，返回错误 */
        if (g_pFvmConfig != NULL && g_pFvmConfig->Fvm_ErrorNotification != NULL)
        {
            g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
        }
        return E_NOT_OK;
    }

    /* 更新历史新鲜值 */
    pMsgBuffer->tripCounter = pTripCntOut;
    pMsgBuffer->resetCounter = pRstCntOut;
    pMsgBuffer->messageCounter = pMsgCntOut;

    /* 大端序 */
    pFreshnessBytes[0] = (uint8_t)((pTripCntOut >> 16) & 0xFFu);
    pFreshnessBytes[1] = (uint8_t)((pTripCntOut >> 8) & 0xFFu);
    pFreshnessBytes[2] = (uint8_t)(pTripCntOut & 0xFFu);
    pFreshnessBytes[3] = (uint8_t)((pRstCntOut >> 8) & 0xFFu);
    pFreshnessBytes[4] = (uint8_t)(pRstCntOut & 0xFFu);
    pFreshnessBytes[5] = (uint8_t)((pMsgCntOut >> 14) & 0xFFu);
    pFreshnessBytes[6] = (uint8_t)((pMsgCntOut >> 6) & 0xFFu);
    pFreshnessBytes[7] = (uint8_t)(((pMsgCntOut & 0x3Fu) << 2) | (g_resetCounter & 0x03u));

    return E_OK;
}
/*************************************************
 Function: Fvm_ResetTripCounter
 Description: 行程计数器重置
 Input:  void
 Output: void
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_ResetTripCounter(void)
{
    return Fvm_SetTripCounter(0);
}

/*************************************************
 Function: Fvm_UpdateSynCounters
 Description: 根据同步报文更新行程计数器和复位计数器，重置消息计数器
 Input: tripCounter 行程计数器
        resetCounter 复位计数器
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_UpdateSynCounters(uint32_t tripCounter, uint16_t resetCounter)
{
    Std_ReturnType result;
    uint16_t i = 0u;
    
    if (g_pFvmConfig != NULL)
    {
        if (g_fvmStatus == FVM_UNINIT)
        {
            if (g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_NOT_INITIALIZED);
            }
            return E_NOT_OK;
        }
    }
    
    /* 更新Trip Counter */
    result = Fvm_SetTripCounter(tripCounter);
    if(result != E_OK)
    {
        return result;
    }
    
    /* 更新Reset Counter */
    result = Fvm_SetResetCounter(resetCounter);
    if(result != E_OK)
    {
        return result;
    }

	for (i = 0u; i < g_pFvmConfig->txSecocMsgNum; i++)
	{
		g_pFvmConfig->pTxMsgBuffer[i].messageCounter = FVM_MSG_COUNT_INIT_VAL + 1u;
	} 
	for (i = 0; i < g_pFvmConfig->rxSecocMsgNum; i++)
	{
		g_pFvmConfig->pRxMsgBuffer[i].messageCounter = FVM_MSG_COUNT_INIT_VAL + 1u;
	}
    
    return E_OK;
}

/*************************************************
 Function: Fvm_GetStatus
 Description: 获取FVM模块状态
 Input: pStatus 状态输出指针
 Output: None
 Return: E_OK-成功, E_NOT_OK-失败
 Others:
*************************************************/
Std_ReturnType Fvm_GetStatus(Fvm_StatusType* pStatus)
{
    if(g_pFvmConfig != NULL)
    {
        if(pStatus == NULL)
        {
            if(g_pFvmConfig->Fvm_ErrorNotification != NULL)
            {
                g_pFvmConfig->Fvm_ErrorNotification(FVM_E_INVALID_PARAM);
            }
            return E_NOT_OK;
        }
    }
    
    *pStatus = g_fvmStatus;
    
    return E_OK;
}

/*************************************************
 Function: Fvm_FindMessageIndex
 Description: 根据CAN ID查找消息索引
 Input: canId CAN ID
        isTx 是否为发送消息（FVM_INDEX_CFG_TX-发送，FVM_INDEX_CFG_RX-接收）
 Output: None
 Return: 索引
 Others:
*************************************************/
static int16_t Fvm_FindMessageIndex(uint32_t canId, Fvm_IndexCfgType isTx)
{
    uint16_t i = 0u;
    uint16_t msgNum = 0u;
    const SecocSdkMsg_t *pMsgConfig;
    
    if(g_pFvmConfig == NULL || g_fvmStatus == FVM_UNINIT)
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
    
    if(pMsgConfig == NULL)
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
