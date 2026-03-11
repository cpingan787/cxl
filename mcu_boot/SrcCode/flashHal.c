#include "flashHal.h"
#include "logHal.h"
#include "string.h"

// 引入 AUTOSAR 相关的 Flash 和内存抽象头文件
#include "Fls.h"            
#include "MemIf_Types.h"    

// 默认的元数据信息
const static FlashHalMetaDataInfo_t g_flashHalMetaDataDefaultInfo = 
{
    .m_metaDataHeaderFlag      = FLASH_META_DATA_HEADER_END_FLAG,
    .m_metaBootFlag            = FLASH_BOOT_JUMP_ACTIVE_FLAG,
    .m_metaAppFlag             = FLASH_APP_BANKA_ACTIVE_FLAG,
    .m_metaEndFlag             = FLASH_META_DATA_HEADER_END_FLAG,
};

static uint8_t g_enterBootType = 0;
static FlashHalMetaDataInfo_t g_flashHalMetaDataInfo;

/*************************************************
  Function:       FlashHalInit
  Description:    初始化Flash模块
*************************************************/
int16_t FlashHalInit() 
{
    // 在 AUTOSAR 架构中，Fls_Init() 通常在 main.c 中系统初始化时被调用。
    // 这里只需返回成功即可。
    return FLASH_HAL_STATUS_OK;
}

/*************************************************
  Function:       FlashHalRead
  Description:    从 Flash 绝对地址读取数据
*************************************************/
int16_t FlashHalRead(uint32_t addr, uint8_t *data, uint32_t size)
{
    // RH850 的 Code/Data Flash 通常映射在 CPU 的统一寻址空间，可直接指针读取
    uint8_t *pDataAddress = (uint8_t *)addr;
    for(uint32_t i = 0; i < size; i++) 
    {
        data[i] = pDataAddress[i];
    }
    return FLASH_HAL_STATUS_OK;
}

/*************************************************
  Function:       FlashHalOtaFlashErase
  Description:    擦除对应的 Bank (OTA过程)
*************************************************/
int16_t FlashHalOtaFlashErase(uint8_t BankFlag)
{
    Std_ReturnType ret;
    uint32_t absoluteAddress;
    uint32_t relativeOffset;
    uint32_t eraseLength = FLASH_APP_SINGLE_SIZE; // 擦除整个分区

    if (BankFlag == FLASH_APP_BANKA_ID) {
        absoluteAddress = FLASH_APP_BANKA_ABSTRACT_ADDRESS;
    } else if (BankFlag == FLASH_APP_BANKB_ID) {
        absoluteAddress = FLASH_APP_BANKB_ABSTRACT_ADDRESS;
    } else {
        return FLASH_HAL_STATUS_ERR;
    }

    // TODO: AUTOSAR Fls_Erase/Fls_Write 通常使用的是相对于 Fls_BaseAddress 的偏移量
    // 如果你的 Fls 配置接收绝对地址，可以直接用 absoluteAddress。这里示范转为偏移量：
    relativeOffset = absoluteAddress - FLASH_BASE_ADDRESS;

    // 发起异步擦除请求
    ret = Fls_Erase((Fls_AddressType)relativeOffset, (Fls_LengthType)eraseLength);
    if(ret != E_OK) 
    {
        return FLASH_HAL_STATUS_ERR;
    }

    // 轮询等待擦除完成 (Bootloader 环境下允许使用 while 阻塞)
    while (Fls_GetStatus() != MEMIF_IDLE) 
    {
        Fls_MainFunction(); // 推动底层状态机
        // TODO: 如果有看门狗，请在这里加上喂狗代码，比如 Wdg_SetTriggerCondition(...)
    }
    
    return FLASH_HAL_STATUS_OK;
}

/*************************************************
  Function:       FlashHalOtaFlashWrite
  Description:    将接收到的数据写入 Flash
*************************************************/
int16_t FlashHalOtaFlashWrite(uint32_t writeAddress, volatile uint8_t *pData, uint32_t length)
{
    Std_ReturnType ret;
    uint32_t relativeOffset;
    
    // 转为相对偏移量 (同上，请根据你 Fls 模块的实际要求决定是否转换)
    relativeOffset = writeAddress - FLASH_BASE_ADDRESS;

    // 发起异步写入请求
    ret = Fls_Write((Fls_AddressType)relativeOffset, (const uint8 *)pData, (Fls_LengthType)length);
    if(ret != E_OK) 
    {
        return FLASH_HAL_STATUS_ERR;
    }

    // 轮询等待写入完成
    while (Fls_GetStatus() != MEMIF_IDLE) 
    {
        Fls_MainFunction();
    }
    
    return FLASH_HAL_STATUS_OK;
}

/*************************************************
  Function:       FlashHalFlexWrite
  Description:    封装任意大小的写入（原为不跨扇区的封装，现直接调用Fls写入）
*************************************************/
ResultStatus_t FlashHalFlexWrite(uint32_t address, uint32_t length, uint8_t *pWriteData)  
{
    if(FLASH_HAL_STATUS_OK == FlashHalOtaFlashWrite(address, pWriteData, length)) 
    {
        return SUCC;
    }
    return ERR; 
}

/*************************************************
  Function:       FlashHalIsMetaDataValid
  Description:    校验元数据是否合法
*************************************************/
static ResultStatus_t FlashHalIsMetaDataValid(const FlashHalMetaDataInfo_t *pMetaData)
{
    if (pMetaData != NULL)
    {
        if((pMetaData->m_metaDataHeaderFlag == FLASH_META_DATA_HEADER_END_FLAG) &&
           (pMetaData->m_metaEndFlag == FLASH_META_DATA_HEADER_END_FLAG))
        {
            return SUCC;
        }
    }
    return ERR;
}

/*************************************************
  Function:       FlashHalGetMetaDataInfo
  Description:    读取元数据 (A区失效读B区，全失效用默认)
*************************************************/
ResultStatus_t FlashHalGetMetaDataInfo(FlashHalMetaDataInfo_t *pMetaData)
{
    FlashHalMetaDataInfo_t tempMeta;

    if (pMetaData == NULL) return ERR;

    // 读 Image A
    FlashHalRead(FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS, (uint8_t*)&tempMeta, sizeof(FlashHalMetaDataInfo_t));
    if (FlashHalIsMetaDataValid(&tempMeta) == SUCC)
    {
        memcpy(pMetaData, &tempMeta, sizeof(FlashHalMetaDataInfo_t));
        return SUCC;
    }

    // 读 Image B
    FlashHalRead(FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS, (uint8_t*)&tempMeta, sizeof(FlashHalMetaDataInfo_t));
    if (FlashHalIsMetaDataValid(&tempMeta) == SUCC)
    {
        memcpy(pMetaData, &tempMeta, sizeof(FlashHalMetaDataInfo_t));
        return SUCC;
    }

    // 都失败，使用默认值
    memcpy(pMetaData, &g_flashHalMetaDataDefaultInfo, sizeof(FlashHalMetaDataInfo_t));
    FlashHalWriteMetaDataInfo(&g_flashHalMetaDataDefaultInfo); // 恢复写入
    return SUCC;
}

/*************************************************
  Function:       FlashHalWriteMetaDataInfo
  Description:    双备份写入元数据 (写之前先擦除该扇区)
*************************************************/
ResultStatus_t FlashHalWriteMetaDataInfo(const FlashHalMetaDataInfo_t *pMetaData)
{
    if (pMetaData == NULL) return ERR;

    // 1. 擦除并写入 Image A
    uint32_t offsetA = FLASH_META_DATA_IMAGEA_HEADER_FLAG_ADDRESS - FLASH_BASE_ADDRESS;
    Fls_Erase((Fls_AddressType)offsetA, FLASH_SECTOR_SIZE); // 擦除包含元数据的扇区
    while (Fls_GetStatus() != MEMIF_IDLE) { Fls_MainFunction(); }
    
    Fls_Write((Fls_AddressType)offsetA, (const uint8 *)pMetaData, sizeof(FlashHalMetaDataInfo_t));
    while (Fls_GetStatus() != MEMIF_IDLE) { Fls_MainFunction(); }

    // 2. 擦除并写入 Image B
    uint32_t offsetB = FLASH_META_DATA_IMAGEB_HEADER_FLAG_ADDRESS - FLASH_BASE_ADDRESS;
    Fls_Erase((Fls_AddressType)offsetB, FLASH_SECTOR_SIZE); 
    while (Fls_GetStatus() != MEMIF_IDLE) { Fls_MainFunction(); }
    
    Fls_Write((Fls_AddressType)offsetB, (const uint8 *)pMetaData, sizeof(FlashHalMetaDataInfo_t));
    while (Fls_GetStatus() != MEMIF_IDLE) { Fls_MainFunction(); }

    return SUCC;
}

/*************************************************
  Function:       FlashHalWriteAppXSuccessFlag
  Description:    写入 APP 完整性校验标志
*************************************************/
void FlashHalWriteApp1SuccessFlag(uint32_t flagValue)
{
    FlashHalFlexWrite(FLASH_APP_BANKA_INTEGRITY_ADDRESS, sizeof(uint32_t), (uint8_t*)&flagValue);
}

void FlashHalWriteApp2SuccessFlag(uint32_t flagValue)
{
    FlashHalFlexWrite(FLASH_APP_BANKB_INTEGRITY_ADDRESS, sizeof(uint32_t), (uint8_t*)&flagValue);
}

/*************************************************
  Function:       FlashHalGetEnterBootType
  Description:    获取启动类型
*************************************************/
uint8_t FlashHalGetEnterBootType(void)
{
    return g_enterBootType;
}

/*************************************************
  Function:       FlashHalJumpToAppCheck
  Description:    校验 APP 标志，并执行到 RH850 APP 代码的跳转
*************************************************/
void FlashHalJumpToAppCheck(void)
{
    uint32_t appStartAddress = 0x00;
    uint8_t appStartFlag = 0x00; 

    // 获取当前元数据信息
    if(FlashHalGetMetaDataInfo(&g_flashHalMetaDataInfo) == SUCC)
    {
        // 判断当前是不是要求 Jump APP
        if(g_flashHalMetaDataInfo.m_metaBootFlag == FLASH_BOOT_JUMP_ACTIVE_FLAG)
        {
            // 获取目标启动分区
            if(g_flashHalMetaDataInfo.m_metaAppFlag == FLASH_APP_BANKA_ACTIVE_FLAG) {
                appStartFlag = 0x01; 
            } else if(g_flashHalMetaDataInfo.m_metaAppFlag == FLASH_APP_BANKB_ACTIVE_FLAG) {
                appStartFlag = 0x02;
            }

            // 获取目标跳转地址
            if(0x01 == appStartFlag) {
                appStartAddress = FLASH_APP_BANKA_CM4_BASE_ADDRESS; 
            } else if(0x02 == appStartFlag) {
                appStartAddress = FLASH_APP_BANKB_CM4_BASE_ADDRESS; 
            }

            // 如果标志合法，执行跳转
            if (appStartFlag != 0x00)
            {
                // TODO: 打印跳转信息
                TBOX_PRINT("Ready to Jump APP at 0x%08X\r\n", appStartAddress);

                // RH850 跳转核心操作：
                // 1. 关闭全局中断
                __asm("di"); // 或者使用你的 OS/编译器封装的 __DI() 或 DisableAllInterrupts()

                // 2. RH850 没有 ARM 那样的 VTOR(向量表重定向寄存器)，
                // 它的中断向量基址是通过系统寄存器 RBASE 或 EBASE 控制的。
                // 正常情况下由 APP 的启动代码(cstart.asm)自己去配置 RBASE，
                // Bootloader 只需要强制跳转到 APP 的复位入口（Reset Handler）即可。
                
                // 定义函数指针
                typedef void (*AppEntry_t)(void);
                AppEntry_t JumpToApp = (AppEntry_t)appStartAddress;
                
                // 3. 终极跳转 (永远不会返回)
                JumpToApp();
            }
        }
        else if(g_flashHalMetaDataInfo.m_metaBootFlag == FLASH_BOOT_OTA_ACTIVE_FLAG)
        {
            g_enterBootType = 1; // 标记处于 OTA Boot 模式，不跳转，留在 Boot 中接收数据
        }
    }
}