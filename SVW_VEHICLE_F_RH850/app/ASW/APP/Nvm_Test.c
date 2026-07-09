#include "Std_Types.h"
#include "Fls.h"
#include "NVM.h"
#include "NvM_Inter.h"
#include "Dem.h"
#include "Mem_Test.h" 
#include "NvM_Cfg.h" 
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"

#define All_TC01    1u
#define All_TC04_E3    2u
#define All_TC04_E4    3u
#define All_TC05_E5    4u
#define All_TC06_E6    5u
#define All_TC07_E7    6u
#define All_TC08_E8    7u
#define All_TC09_E9    8u
#define All_TC10_EA    9u
#define All_TC10_EB    10u
#define All_TC11_EC    11u
#define All_TC12_ED    12u
#define All_TC14_EF    13u
#define All_TC15_F0    14u
#define All_TC16_FF    15u

#define SET_ZERO        STD_OFF

#define TC01_FN                  0x1u
#define TC02_FN                  0x2u
#define TC03_FN                  0x3u
#define TC04_FN                  0x4u
#define TC05_FN                  0x5u
#define TC06_FN                  0x6u
#define TC07_FN                  0x7u
#define TC08_FN                  0x8u
#define TC09_FN                  0x9u
#define TC10_FN                  0x10u
#define TC11_FN                  0x11u
#define TC12_FN                  0x12u
#define TC13_FN                  0x13u
#define TC14_FN                  0x14u
#define TC15_FN                  0x15u
#define TC16_FN                  0x16u
#define TC16_Verification_FN     0x17u
#define TC17_FN                  0x18u
#define TC18_FN                  0x19u
#define TC19_FN                  0x20u



uint32 init_expired_time = 0;
NvM_RequestResultType InitNvMWriteAllStatus = NVM_REQ_PENDING;

// 全局数组：存储每个 Block 的 RAM 起始地址
uint8* NvmBlockRamAddrs[NVM_BLOCK_NUM_ALL];
// 全局数组：存储每个 Block 的长度
uint16 NvmBlockLengths[NVM_BLOCK_NUM_ALL];


void FillAllBlocksWithIncrementPattern(uint16 decData)
{
    for (uint16 id = 1; id <= NVM_BLOCK_NUM_ALL; id++)
    {
        uint8* ramAddr = (uint8*)NvM_BlockDescriptor[id - 1].NvmRamBlockDataAddress;
        uint16 length = NvM_BlockDescriptor[id - 1].NvmNvBlockLength;
        
        // 存储到全局数组
        NvmBlockRamAddrs[id - 1] = ramAddr;
        NvmBlockLengths[id - 1] = length;
        
        switch (decData)
        {
        case All_TC01:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] = (i % 2 == 0) ? 0x01 : 0x02;
                }
            }
            break;
        case All_TC04_E3:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE3;
                }
            }
            break;
        case All_TC04_E4:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE4;
                }
            }
            break;
        case All_TC05_E5:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE5;
                }
            }
            break;
        case All_TC06_E6:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE6;
                }
            }
            break;
        case All_TC07_E7:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE7;
                }
            }
            break;
        case All_TC08_E8:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE8;
                }
            }
            break;
        case All_TC09_E9:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xE9;
                }
            }
            break;
        case All_TC10_EA:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xEA;
                }
            }
            break;
        case All_TC10_EB:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xEB;
                }
            }
            break;
        case All_TC11_EC:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xEC;
                }
            }
            break;
        case All_TC12_ED:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xED;
                }
            }
            break;
        case All_TC14_EF:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xEF;
                }
            }
            break;
        case All_TC15_F0:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                    ramAddr[i] =  0xF0;
                }
            }
            break;
        case All_TC16_FF:
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                {
                #if (STD_ON == SET_ZERO)

                    ramAddr[i] =  0x00;
                #endif
                #if (STD_OFF == SET_ZERO)

                    ramAddr[i] =  0xFF;
                #endif
                }
            }
            break;
        default:
            break;
        }
    }
}


void TC001_NvM_WriteAndReadAll(void)
{
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
		Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    //  填充所有 Block 的 RAM 数据
    FillAllBlocksWithIncrementPattern(All_TC01);

        // Dem_Shutdown();
	    NvM_WriteAll();
	    do
    	{
            //Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERA_INCLUDE_CRITICAL_SECTION);
		    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	  	init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
    	  	if(init_expired_time >= 500000)
    	  		break;

    	}while(InitNvMWriteAllStatus == NVM_REQ_PENDING);    

           if (InitNvMWriteAllStatus != NVM_REQ_OK)
            return;

        // 设置0xFF到所有 Block 的 RAM 数据
        for (uint16 idx = 0; idx < NVM_BLOCK_NUM_ALL; idx++)
        {
            uint8* ramAddr = NvmBlockRamAddrs[idx];
            uint16 length  = NvmBlockLengths[idx];
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                    ramAddr[i] = 0xFF;
            }
        }

        // 读取所有 Block 的 RAM 数据并验证
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        NvM_ReadAll();
        do
        {
            init_expired_time++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
            if (init_expired_time == 5000)
                break;
        }while(InitNvMWriteAllStatus == NVM_REQ_PENDING);
}


void TC002_WriteAndReadBlock_Multi(void)
{
    uint32 timeout;
    NvM_RequestResultType status;
    uint16 i;
    uint8 blkIdx;

    NvM_BlockIdType blockId;
    uint8* ramAddr;
    uint16 length;


    struct {
        NvM_BlockIdType id;
        uint8*          addr;
        uint16          length;
    } blocks[] = {
        {  2, NvMBlockRamBuffer2,  sizeof(NvMBlockRamBuffer2)  },
        {  5, NvMBlockRamBuffer5,  sizeof(NvMBlockRamBuffer5)  },
        {  6, NvMBlockRamBuffer6,  sizeof(NvMBlockRamBuffer6)  },
        {  7, NvMBlockRamBuffer7,  sizeof(NvMBlockRamBuffer7)  },
        {  8, NvMBlockRamBuffer8,  sizeof(NvMBlockRamBuffer8)  },
        {  9, NvMBlockRamBuffer9,  sizeof(NvMBlockRamBuffer9)  },
        { 10, NvMBlockRamBuffer10, sizeof(NvMBlockRamBuffer10) },
        { 11, NvMBlockRamBuffer11, sizeof(NvMBlockRamBuffer11) },
        { 12, NvMBlockRamBuffer12, sizeof(NvMBlockRamBuffer12) },
        { 13, NvMBlockRamBuffer13, sizeof(NvMBlockRamBuffer13) }
    };
     const uint8 numBlocks = sizeof(blocks) / sizeof(blocks[0]);

    for (blkIdx = 0; blkIdx < numBlocks; blkIdx++)
    {
         blockId = blocks[blkIdx].id;
         ramAddr = blocks[blkIdx].addr;
         length  = blocks[blkIdx].length;

        /* 将 RAM 数据全部设置为 0xE1 */
        for (i = 0; i < length; i++)
        {
            ramAddr[i] = 0xE1;
        }

        /* 调用 NvM_WriteBlock 写入 */
        if (NvM_WriteBlock(blockId, ramAddr) != E_OK)
        {
            continue;
        }

        timeout = 0;
        status = NVM_REQ_PENDING;
        do {
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(blockId, &status);
            if (++timeout >= 50000) break;
        } while (status == NVM_REQ_PENDING);

        if (status != NVM_REQ_OK) continue;


    }

    for (blkIdx = 0; blkIdx < numBlocks; blkIdx++)
    {
         blockId = blocks[blkIdx].id;
         ramAddr = blocks[blkIdx].addr;
         length  = blocks[blkIdx].length;
        /* RAM 数据（全部设为 0xFF） */
        for (i = 0; i < length; i++)
        {
            ramAddr[i] = 0xFF;
        }
    }

      blkIdx = 0;
      for (blkIdx = 0; blkIdx < numBlocks; blkIdx++)
      {
        NvM_BlockIdType blockId = blocks[blkIdx].id;
        uint8* ramAddr = blocks[blkIdx].addr;
          /* 调用 NvM_ReadBlock 读取恢复 */
          if (NvM_ReadBlock(blockId, ramAddr) != E_OK)
          {
              continue;
          }
    
          timeout = 0;
          status = NVM_REQ_PENDING;
          do {
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(blockId, &status);
              if (++timeout >= 50000) break;
          } while (status == NVM_REQ_PENDING);

      }
    
}

void TC003_NvM_WriteAndReadPRAMBlock(void)
{
    uint32 timeout;
    NvM_RequestResultType status;
    uint16 i;
    uint8 blkIdx;

    NvM_BlockIdType blockId;
    uint8* ramAddr;
    uint16 length;

    /*  下列数组替换为实际的 PRAM Block 信息，后面找到再换  */
    struct {
        NvM_BlockIdType id;
        uint8*          addr;
        uint16          length;
    } blocks[] = {
        /* TODO: 替换为实际 PRAM Block */
        /* 示例：{ 51, NvMBlockRamBuffer51, sizeof(NvMBlockRamBuffer51) }, */
        {  2, NvMBlockRamBuffer2,  sizeof(NvMBlockRamBuffer2)  },
        {  5, NvMBlockRamBuffer5,  sizeof(NvMBlockRamBuffer5)  },
        {  6, NvMBlockRamBuffer6,  sizeof(NvMBlockRamBuffer6)  },
        {  7, NvMBlockRamBuffer7,  sizeof(NvMBlockRamBuffer7)  },
        {  8, NvMBlockRamBuffer8,  sizeof(NvMBlockRamBuffer8)  },
        {  9, NvMBlockRamBuffer9,  sizeof(NvMBlockRamBuffer9)  },
        { 10, NvMBlockRamBuffer10, sizeof(NvMBlockRamBuffer10) },
        { 11, NvMBlockRamBuffer11, sizeof(NvMBlockRamBuffer11) },
        { 12, NvMBlockRamBuffer12, sizeof(NvMBlockRamBuffer12) },
        { 13, NvMBlockRamBuffer13, sizeof(NvMBlockRamBuffer13) }
    };
    const uint8 numBlocks = sizeof(blocks) / sizeof(blocks[0]);

    /* ========== 写入数据 ========== */
    for (blkIdx = 0; blkIdx < numBlocks; blkIdx++)
    {
         blockId = blocks[blkIdx].id;
         ramAddr = blocks[blkIdx].addr;
         length  = blocks[blkIdx].length;

        /* 将 RAM 数据全部设置为 0xE2 */
        for (i = 0; i < length; i++)
        {
            ramAddr[i] = 0xE2;
        }

        /* 调用 NvM_WritePRAMBlock 写入 */
        if (NvM_WritePRAMBlock(blockId) != E_OK)
        {
            continue;
        }

        timeout = 0;
        status = NVM_REQ_PENDING;
        do {
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(blockId, &status);
            if (++timeout >= 50000) break;
        } while (status == NVM_REQ_PENDING);

        if (status != NVM_REQ_OK) continue;
    }

    for (blkIdx = 0; blkIdx < numBlocks; blkIdx++)
    {
         blockId = blocks[blkIdx].id;
         ramAddr = blocks[blkIdx].addr;
         length  = blocks[blkIdx].length;
        /* RAM 数据（全部设为 0xFF） */
        for (i = 0; i < length; i++)
        {
            ramAddr[i] = 0xFF;
        }
    }

    /* ========== 读取恢复 ========== */
    for (blkIdx = 0; blkIdx < numBlocks; blkIdx++)
    {
        NvM_BlockIdType blockId = blocks[blkIdx].id;
        uint8* ramAddr = blocks[blkIdx].addr;

        /* 调用 NvM_ReadPRAMBlock 读取恢复 */
        if (NvM_ReadPRAMBlock(blockId) != E_OK)
        {
            continue;
        }

        timeout = 0;
        status = NVM_REQ_PENDING;
        do {
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(blockId, &status);
            if (++timeout >= 50000) break;
        } while (status == NVM_REQ_PENDING);

    }
}

void TC004_NvM_SetBlockProtection_True(void)
{
    NvM_BlockIdType blockId;   
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;

    while (NvM_MultiJob.Enqueue == STD_ON)
    {
		Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    //  填充所有 Block 的 RAM 数据
     FillAllBlocksWithIncrementPattern(All_TC04_E3);
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        // Dem_Shutdown();
	    NvM_WriteAll();
	    do
    	{
            //Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERA_INCLUDE_CRITICAL_SECTION);
		    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	  	init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
    	  	if(init_expired_time >= 500000) break;

    	}while(InitNvMWriteAllStatus == NVM_REQ_PENDING);    

           if (InitNvMWriteAllStatus != NVM_REQ_OK)
            return;

       FillAllBlocksWithIncrementPattern(All_TC04_E4);

         /* 对所有 Block 设置写保护 */
        for (blockId = 1; blockId <= NVM_BLOCK_NUM_ALL; blockId++)
        {
            NvM_SetBlockProtection(blockId, TRUE);
        }

    
            // Dem_Shutdown();
            NvM_WriteAll();
            init_expired_time = 0;
            InitNvMWriteAllStatus = NVM_REQ_PENDING;
	    do
    	{
            //Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERA_INCLUDE_CRITICAL_SECTION);
		    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	  	init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
    	  	if(init_expired_time >= 5000) break;

    	}while(InitNvMWriteAllStatus == NVM_REQ_PENDING);    



        // 读取所有 Block 的 RAM 数据并验证
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        NvM_ReadAll();
        do
        {
            init_expired_time++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
            if (init_expired_time >= 5000)
                break;
        }while(InitNvMWriteAllStatus == NVM_REQ_PENDING);
}



void TC005_NvM_SetBlockProtection_False(void)
{

     NvM_BlockIdType blockId;   
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
		Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    //  填充所有 Block 的 RAM 数据
     FillAllBlocksWithIncrementPattern(All_TC05_E5);
     
         /* 对所有 Block 设置未保护 */
        for (blockId = 1; blockId <= NVM_BLOCK_NUM_ALL; blockId++)
        {
            NvM_SetBlockProtection(blockId, FALSE);
        }

        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        // Dem_Shutdown();
	    NvM_WriteAll();
	    do
    	{
		    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	  	init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
    	  	if(init_expired_time >= 500000)
    	  		break;

    	}while(InitNvMWriteAllStatus == NVM_REQ_PENDING);    

           if (InitNvMWriteAllStatus != NVM_REQ_OK)
            return;




        // 设置0xFF到所有 Block 的 RAM 数据
        for (uint16 idx = 0; idx < NVM_BLOCK_NUM_ALL; idx++)
        {
            uint8* ramAddr = NvmBlockRamAddrs[idx];
            uint16 length  = NvmBlockLengths[idx];
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                    ramAddr[i] = 0xFF;
            }
        }


        // 读取所有 Block 的 RAM 数据并验证
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        NvM_ReadAll();
        do
        {
            init_expired_time++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
            if (init_expired_time == 5000)
                break;
        }while(InitNvMWriteAllStatus == NVM_REQ_PENDING);
}


void TC006_NvM_CancelWriteAll(void)
{

     NvM_BlockIdType blockId;   
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
		Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    //  填充所有 Block 的 RAM 数据
     FillAllBlocksWithIncrementPattern(All_TC06_E6);
     
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        // Dem_Shutdown();
	    NvM_WriteAll();

        // 立即取消当前的批量写入请求 
        NvM_CancelWriteAll();

	    do
    	{
		    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	  	init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
    	  	if(init_expired_time >= 500000)
    	  		break;

    	}while(InitNvMWriteAllStatus == NVM_REQ_PENDING);    

        // 设置0xFF到所有 Block 的 RAM 数据
        for (uint16 idx = 0; idx < NVM_BLOCK_NUM_ALL; idx++)
        {
            uint8* ramAddr = NvmBlockRamAddrs[idx];
            uint16 length  = NvmBlockLengths[idx];
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                    ramAddr[i] = 0xFF;
            }
        }


        // 读取所有 Block 的 RAM 数据并验证
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        NvM_ReadAll();
        do
        {
            init_expired_time++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
            if (init_expired_time == 5000)
                break;
        }while(InitNvMWriteAllStatus == NVM_REQ_PENDING);
}


void TC007_NvM_GetErrorStatus_OK(void)
{
    NvM_BlockIdType testBlockId;      /* 用于定位待写入的 Block */
    uint8* ramAddr;                   /* 对应 Block 的 RAM 缓冲区地址 */
    uint16 i;
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        if (init_expired_time >= 500000)
            break;
    }

    FillAllBlocksWithIncrementPattern(All_TC07_E7);

    testBlockId = NvMBlock_DIDF198;
    ramAddr = NvmBlockRamAddrs[testBlockId - 1];

    /* 调用 NvM_WriteBlock 写入 */
     NvM_WriteBlock(testBlockId, ramAddr);

    /* 异步轮询获取状态 */
    init_expired_time = 0;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* 若状态为 NVM_REQ_OK，则将 NVRAM Block2 (ID=2) 设置为 0xAA */
    if (InitNvMWriteStatus == NVM_REQ_OK)
    {
        uint8* ramAddr2 = NvmBlockRamAddrs[1]; 
        uint16 length2 = NvmBlockLengths[1];
        for (i = 0; i < length2; i++)
        {
            ramAddr2[i] = 0xAA;
        }
    }

    // test
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    NvM_ReadAll();                                    
    do {
        init_expired_time++;
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time == 5000)
            break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

}


void TC008_NvM_GetErrorStatus_Pending(void)
{

    NvM_BlockIdType testBlockId;      /* Used to locate the block to be written */
    uint8* ramAddr;                   /* RAM buffer address corresponding to the Block */
    uint16 i;
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        if (init_expired_time >= 500000)
            break;
    }

    FillAllBlocksWithIncrementPattern(All_TC08_E8);

    testBlockId = NvMBlock_DIDF198;
    ramAddr = NvmBlockRamAddrs[testBlockId - 1];

    /* Call NvM_WriteBlock to write */
    if (NvM_WriteBlock(testBlockId, ramAddr) != E_OK)
    {
        return;
    }


        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);


    /* If the status is NVM_REQ_OK, set NVRAM Block2 (ID=2) to 0xBB */
    if (InitNvMWriteAllStatus == NVM_REQ_PENDING)
    {
        uint8* ramAddr2 = NvmBlockRamAddrs[1]; 
        uint16 length2 = NvmBlockLengths[1];
        for (i = 0; i < length2; i++)
        {
            ramAddr2[i] = 0xBB;
        }
    }

}



void TC009_NvM_RecoverDataFromROMToRAM(void)
{

    NvM_BlockIdType testBlockId;      
    uint8* ramAddr2;
    uint16 length2;
    uint16 i;                               

    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    /* Fill the RAM data of all Blocks with 0xE9 */
    FillAllBlocksWithIncrementPattern(All_TC09_E9);

    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    // Dem_Shutdown();
    NvM_WriteAll();

    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);    

    if (InitNvMWriteAllStatus != NVM_REQ_OK)
        return;

    /* Manually disable NV Block3, triggering the ROM recovery mechanism */
      NvM_InvalidateNvBlock(NvMBlock_DIDF18B);   

    /* Set the data of NVROM Block2 to 0x00 */
        ramAddr2 = NvmBlockRamAddrs[1]; 
        length2 = NvmBlockLengths[1];
        for (i = 0; i < length2; i++)
        {
            ramAddr2[i] = 0x00;
        }
       testBlockId = NvMBlock_DIDF1A9;
      if (NvM_WriteBlock(testBlockId, ramAddr2) != E_OK)
        {
            return;
        }

    /* Read all Block RAM data and verify */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    NvM_ReadAll();
    do {
        init_expired_time++;
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time == 5000)
            break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

}


void TC010_NvM_ReadAndWriteAllSimultaneously(void)
{

     NvM_BlockIdType blockId;   
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
		Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    //  Fill RAM data for all Blocks
     FillAllBlocksWithIncrementPattern(All_TC10_EA);

        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        // Dem_Shutdown();
	    NvM_WriteAll();
	    do
    	{
		    Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	  	init_expired_time++;
              NvM_MainFunction();
              Fee_MainFunction();
              Fls_MainFunction();
              NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
    	  	if(init_expired_time >= 500000)
    	  		break;

    	}while(InitNvMWriteAllStatus == NVM_REQ_PENDING);    

           if (InitNvMWriteAllStatus != NVM_REQ_OK)
            return;

       FillAllBlocksWithIncrementPattern(All_TC10_EB);
      
        NvM_ReadAll();
        NvM_WriteAll();

        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000)
                break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
}


void TC011_NvM_WriteAndReadAllSimultaneously(void)
{

     NvM_BlockIdType blockId;   
    
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
		Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
    	init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0,&InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    //  Fill RAM data for all Blocks
     FillAllBlocksWithIncrementPattern(All_TC11_EC);
      
        NvM_WriteAll();
        NvM_ReadAll();

        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000)
                break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

         // Set 0xFF to the RAM data of all Blocks
        for (uint16 idx = 0; idx < NVM_BLOCK_NUM_ALL; idx++)
        {
            uint8* ramAddr = NvmBlockRamAddrs[idx];
            uint16 length  = NvmBlockLengths[idx];
            if (ramAddr != NULL_PTR)
            {
                for (uint16 i = 0; i < length; i++)
                    ramAddr[i] = 0xFF;
            }
        }

        /* Read all Block RAM data and verify */
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        NvM_ReadAll();
        do {
            init_expired_time++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
            if (init_expired_time == 5000)
                break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
}


void TC012_NvM_WriteAllAndWriteBlockSimultaneously(void)
{
    NvM_BlockIdType testBlockId;
    uint8* ramAddrSingle;

    /* Waiting queue is idle */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    }

    /* Fill the RAM data of all Blocks with 0xED */
    FillAllBlocksWithIncrementPattern(All_TC12_ED);

    /* Select Block 8 and use its real RAM buffer directly */
    testBlockId = NvMBlock_DIDF198;
    ramAddrSingle = (uint8*)NvMBlockRamBuffer8;   

    NvM_WriteAll();
    NvM_WriteBlock(testBlockId, ramAddrSingle);

    /* Waiting for multiple tasks to complete */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /*  Wait for a single task to complete */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
        if (init_expired_time >= 50000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Fill all blocks with 0xFF */
    FillAllBlocksWithIncrementPattern(All_TC16_FF);

    /* Use ReadBlock to read back Block 8 alone, using the real buffer */
    NvM_ReadBlock(testBlockId, ramAddrSingle);


    /* 等待读取完成 */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
        if (init_expired_time >= 50000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

}

void TC013_NvM_ReadAllAndReadBlockSimultaneously(void)
{

    NvM_BlockIdType testBlockId;          /* A single block used for concurrent ReadBlock */
    uint8* ramAddrSingle;                 /* The RAM buffer of the block */
    uint16 i;
          

    /* Wait for the previous batch tasks to complete */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    }

    /* Fill RAM data for all Blocks */
    FillAllBlocksWithIncrementPattern(All_TC11_EC);
    // Dem_Shutdown();
    NvM_WriteAll();

    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Set 0xFF to all blocks */
    for (uint16 idx = 0; idx < NVM_BLOCK_NUM_ALL; idx++)
    {
        uint8* ramAddr = NvmBlockRamAddrs[idx];
        uint16 length  = NvmBlockLengths[idx];
        if (ramAddr != NULL_PTR)
        {
            for (uint16 i = 0; i < length; i++)
                ramAddr[i] = 0xEE;
        }
    }

          
       /* Initiate ReadAll and ReadBlock at the same time */
        testBlockId = NvMBlock_DIDF198;
        ramAddrSingle = NvmBlockRamAddrs[testBlockId - 1];

        NvM_ReadAll();
        NvM_ReadBlock(testBlockId, ramAddrSingle);
  
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            init_expired_time++;
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_MainFunction();
            NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
            if (init_expired_time == 5000)
                break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

        /*  Wait for a single task to complete */
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
        if (init_expired_time >= 50000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
}


void TC014_NvM_ReadAllAndWriteBlockSimultaneously(void)
{

    NvM_BlockIdType testBlockId;          /* Single block used for concurrent WriteBlock */
    uint8* ramAddrSingle;                 /* The RAM buffer of this block */
    uint16 i;

    /* Wait for the previous batch tasks to complete and ensure multiple queues are idle */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    }

    /* Initial data: Write all 0xED to Flash */
    FillAllBlocksWithIncrementPattern(All_TC12_ED);
    // Dem_Shutdown();
    NvM_WriteAll();
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /*  Set all Block RAM to 0xEF */
    FillAllBlocksWithIncrementPattern(All_TC14_EF);

    /* Select a Block as the object for concurrent writing */
    testBlockId = NvMBlock_DIDF1A9;   /* Block ID = 4 */
    ramAddrSingle = NvmBlockRamAddrs[testBlockId - 1];

    /* First ReadAll, then immediately WriteBlock */
    NvM_ReadAll();                                   
    NvM_WriteBlock(testBlockId, ramAddrSingle);


    /* --------------------------------------------------- */

    /* Waiting for multiple block operations (ReadAll) to complete */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Driver waits for a single block write to complete */
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    /* Finally, use ReadBlock to read the Block separately */
     NvM_ReadBlock(testBlockId, ramAddrSingle);
    {
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        init_expired_time = 0;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
    }
}


void TC015_NvM_WriteAllAndReadBlockSimultaneously(void)
{

    NvM_BlockIdType testBlockId;          /* Single block used for concurrent WriteBlock */
    uint8* ramAddrSingle;                 /* The RAM buffer of the Block */
    uint16 i;

    /* Wait for the previous batch tasks to complete and ensure multiple queues are idle */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    }

    /* Initial data: Write all 0xEF to Flash */
    FillAllBlocksWithIncrementPattern(All_TC14_EF);
    NvM_WriteAll();
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Set the RAM of all Blocks to 0xF0  */
    FillAllBlocksWithIncrementPattern(All_TC15_F0);

    /* Select a Block as the object for concurrent writing */
    testBlockId = NvMBlock_DIDF1A9;   /* Block ID = 2 */
    ramAddrSingle = NvmBlockRamAddrs[testBlockId - 1];
    NvM_WriteAll();                             
    /* Waiting for multiple block operations (NvM_WriteAll) to complete  */
    NvM_ReadBlock(testBlockId, ramAddrSingle);
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    init_expired_time = 0;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Wait for ReadBlock to read the Block separately */
     NvM_ReadBlock(testBlockId, ramAddrSingle);
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        init_expired_time = 0;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    NvM_WriteAll();                             
    NvM_ReadAll();                             
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    init_expired_time = 0;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        NvM_GetErrorStatus(testBlockId, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
    
}


/* Shared by TC016_Part2_Verify and TC016_NvM_PowerOffDuringStorage */
static NvM_BlockIdType TC16_BlockMin = 34;   /* Use Block 34, length 1 */
static NvM_BlockIdType TC16_BlockMax = 47;   /* Use Block 47, length 254 */
static uint16 TC16_LengthMin = 1;
static uint16 TC16_LengthMax = 254;
static uint8 TC16_WriteCount = 0;
uint8* const Block_Min = NvMBlockRamBuffer34;   /* Smallest block */
uint8* const Block_Max = NvMBlockRamBuffer47;   /* largest piece */


#define TC16_COUNT_BLOCK_ID         50
#define TC16_COUNT_BLOCK_ADDR       NvMBlockRamBuffer50
#define TC16_COUNT_BLOCK_LENGTH     1

void TC016_Part2_Verify(void)
{

    uint16 i;

        /* Wait for the previous batch tasks to complete */
    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    }

    // You can clear the data first to ensure the counter is at 0.
    #if (STD_ON == SET_ZERO)
        FillAllBlocksWithIncrementPattern(All_TC16_FF);
        NvM_WriteAll();
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
    #endif


    if (NvM_ReadBlock(TC16_COUNT_BLOCK_ID, TC16_COUNT_BLOCK_ADDR) == E_OK)
    {
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        init_expired_time = 0;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(TC16_COUNT_BLOCK_ID, &InitNvMWriteAllStatus);
            if (init_expired_time >= 50000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);
        TC16_WriteCount = TC16_COUNT_BLOCK_ADDR[0];  /* Read Count */
    }
    else
    {
        TC16_WriteCount = 0;  /*First run, initialized to 0 */
    }




       /* Read and verify the maximum block (should be all 0x00) */
     NvM_ReadBlock(TC16_BlockMax, Block_Max);
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        init_expired_time = 0;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(TC16_BlockMax, &InitNvMWriteAllStatus);
            if (init_expired_time >= 50000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

        // for (i = 0; i < TC16_LengthMax; i++)
        // {
        //     if (Block_Max[i] != 0x00){
        //         return;
        //     }
        // }

    /* Read and verify the minimum block (should be 0xF5 count) */
     NvM_ReadBlock(TC16_BlockMin, Block_Min);
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        init_expired_time = 0;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(TC16_BlockMin, &InitNvMWriteAllStatus);
            if (init_expired_time >= 50000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

        // uint8 expected = 0xF5 + TC16_WriteCount;
        // for (i = 0; i < TC16_LengthMin; i++)
        // {
        //     if (Block_Min[i] != expected){
        //         return;
        //     }
        // }

}

void TC016_NvM_PowerOffDuringStorage(void)
{

    uint16 i;

    TC016_Part2_Verify();

    /* Increment the count by 1 */
    TC16_COUNT_BLOCK_ADDR[0] = TC16_WriteCount + 1;
    NvM_WriteBlock(TC16_COUNT_BLOCK_ID, TC16_COUNT_BLOCK_ADDR);
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    init_expired_time = 0;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(TC16_COUNT_BLOCK_ID, &InitNvMWriteAllStatus);
        if (init_expired_time >= 50000) break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);



    /* Set minimum block data = 0xF5   Count */
    for (i = 0; i < TC16_LengthMin; i++)
    {
        Block_Min[i] = 0xF5 + TC16_WriteCount;
    }

    /* Set maximum block data = 0xF6   Count */
    for (i = 0; i < TC16_LengthMax; i++)
    {
        Block_Max[i] = 0xF6 + TC16_WriteCount;
    }

    /* Write the smallest block first and wait for completion */
    NvM_WriteBlock(TC16_BlockMin, Block_Min);
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        init_expired_time = 0;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(TC16_BlockMin, &InitNvMWriteAllStatus);
            if (init_expired_time >= 50000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Write the largest block again — perform a power-off during the waiting process! */
        NvM_WriteBlock(TC16_BlockMax, Block_Max);
        do {
            while (1);
        } while (1);

}





void TC017_NvM_WriteBlock_InvalidAddress(void)
{

    uint16 i;
    uint16 invalidValue = 0x100;

    init_expired_time = 0;
    InitNvMWriteAllStatus = NVM_REQ_PENDING;
    do {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(NvMBlock_DIDF1A9, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000)
            break;
    } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* Test invalid BlockId = 0*/
    for (i = 0; i < sizeof(NvMBlockRamBuffer2); i++)
    {
        NvMBlockRamBuffer2[i] = 0xBB;
    }

    NvM_WriteBlock(invalidValue, NvMBlockRamBuffer2);  
    
}



void TC018_NvM_PageSwap_Normal(void)
{

    uint16 i;
    uint16 loop;
    volatile uint16 stop;

    /* ---- Wait for the NvM queue to be idle---- */
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    }


        // for (uint16 idx = 1; idx <= NVM_BLOCK_NUM_ALL; idx++)
        // {
        //     uint8* ramAddr = (uint8*)NvM_BlockDescriptor[idx - 1].NvmRamBlockDataAddress;
        //     uint16 length = NvM_BlockDescriptor[idx - 1].NvmNvBlockLength;
        //     if (idx == 3 || idx == 58)    
        //     { 
        //         continue; 
        //     }
        //     NvmBlockRamAddrs[idx - 1] = ramAddr;
        //     NvmBlockLengths[idx - 1] = length;
        // }


    FillAllBlocksWithIncrementPattern(All_TC11_EC);
    //     NvM_WriteAll();
    //         init_expired_time = 0;
    // InitNvMWriteAllStatus = NVM_REQ_PENDING;
    // do {
    //     init_expired_time++;
    //       NvM_MainFunction();
    //       Fee_MainFunction();
    //      Fls_MainFunction();
    //     NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
    //     if (init_expired_time == 5000) break;
    // } while(InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* ---- Repeatedly write Block 48  ---- */
    for (loop = 0; loop < 1120; loop++)
    {
        /* Fill in increasing data to make it easier to distinguish each write */
        for (i = 0; i < sizeof(NvMBlockRamBuffer48); i++)
        {
           NvMBlockRamBuffer48[i] = (uint8)(loop + 0xEB);
        }

       NvM_WriteBlock(NvMBlock_Reserved_block1, NvMBlockRamBuffer48);

        /* Waiting for write to complete */
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(NvMBlock_Reserved_block1, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);




        // for (uint16 idx = 0; idx < NVM_BLOCK_NUM_ALL; idx++)
        // {
        //     uint8* ramAddr = NvmBlockRamAddrs[idx];
        //     uint16 length  = NvmBlockLengths[idx];
        //      if (idx == 2 || idx == 57)
        //      {
        //         continue;
        //      }
        //     if (ramAddr != NULL_PTR)
        //     {
        //         for (uint16 i = 0; i < length; i++)
        //             ramAddr[i] = (uint8)(loop + 0xEB);
        //     }
        // }

        //         NvM_WriteAll();
        //         init_expired_time = 0;
        // InitNvMWriteAllStatus = NVM_REQ_PENDING;
        // do {
        //     init_expired_time++;
        //       NvM_MainFunction();
        //       Fee_MainFunction();
        //      Fls_MainFunction();
        //     NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        //    if (init_expired_time >= 500000) break;
        // } while(InitNvMWriteAllStatus == NVM_REQ_PENDING);



        if (loop == 20){
             volatile stop = loop;
        };  
        if (loop == 42){
              stop = loop;
        };   
        if (loop == 84){
              stop = loop;

        };  
        if (loop == 30){};  
        if (loop == 50){};   
    }

}


void TC019_NvM_PageSwap_PowerLoss(void)
{

    uint16 i;
    uint16 loop;
    volatile uint16 stop;

    /* ---- Wait for the NvM queue to be idle --- */
    while (NvM_MultiJob.Enqueue == STD_ON)
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        init_expired_time++;
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
        if (init_expired_time >= 500000) break;
    }

    FillAllBlocksWithIncrementPattern(All_TC11_EC);
    //     NvM_WriteAll();
    //         init_expired_time = 0;
    // InitNvMWriteAllStatus = NVM_REQ_PENDING;
    // do {
    //     init_expired_time++;
    //       NvM_MainFunction();
    //       Fee_MainFunction();
    //      Fls_MainFunction();
    //     NvM_GetErrorStatus(0, &InitNvMWriteAllStatus);
    //     if (init_expired_time == 5000) break;
    // } while(InitNvMWriteAllStatus == NVM_REQ_PENDING);

    /* ---- Repeatedly write Block 48  ---- */
    for (loop = 0; loop < 1120; loop++)
    {
        /* Fill in incremental data to make it easier to distinguish each write */
        for (i = 0; i < sizeof(NvMBlockRamBuffer48); i++)
        {
           NvMBlockRamBuffer48[i] = (uint8)(loop + 0xEB);
        }

       NvM_WriteBlock(NvMBlock_Reserved_block1, NvMBlockRamBuffer48);

        /* Waiting for write to complete */
        init_expired_time = 0;
        InitNvMWriteAllStatus = NVM_REQ_PENDING;
        do {
            Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
            init_expired_time++;
            NvM_MainFunction();
            Fee_MainFunction();
            Fls_MainFunction();
            NvM_GetErrorStatus(NvMBlock_Reserved_block1, &InitNvMWriteAllStatus);
            if (init_expired_time >= 500000) break;
        } while (InitNvMWriteAllStatus == NVM_REQ_PENDING);

    }

}



void Nvm_Test_Function(uint16 SerialNumber){
          switch (SerialNumber)
        {
          case TC01_FN:
            TC001_NvM_WriteAndReadAll();
          break;
          case TC02_FN:
            TC002_WriteAndReadBlock_Multi();
          break;
          case TC03_FN:
            TC003_NvM_WriteAndReadPRAMBlock();
          break;
          case TC04_FN:
            TC004_NvM_SetBlockProtection_True();
          break;
          case TC05_FN:
            TC005_NvM_SetBlockProtection_False();
          break;
          case TC06_FN:
            TC006_NvM_CancelWriteAll();
          break;
          case TC07_FN:
            TC007_NvM_GetErrorStatus_OK();
          break;
          case TC08_FN:
            TC008_NvM_GetErrorStatus_Pending();
          break;
          case TC09_FN:
            TC009_NvM_RecoverDataFromROMToRAM();
          break;
          case TC10_FN:
            TC010_NvM_ReadAndWriteAllSimultaneously();
          break;
          case TC11_FN:
            TC011_NvM_WriteAndReadAllSimultaneously();
          break;
          case TC12_FN:
            TC012_NvM_WriteAllAndWriteBlockSimultaneously();
          break;
          case TC13_FN:
            TC013_NvM_ReadAllAndReadBlockSimultaneously();
          break;
          case TC14_FN:
            TC014_NvM_ReadAllAndWriteBlockSimultaneously();
          break;
          case TC15_FN:
            TC015_NvM_WriteAllAndReadBlockSimultaneously();
          break;
          case TC16_FN:
            TC016_NvM_PowerOffDuringStorage();
          break;
          case TC16_Verification_FN:
            TC016_Part2_Verify();
          break;
          case TC17_FN:
            TC017_NvM_WriteBlock_InvalidAddress();
          break;
          case TC18_FN:
            TC018_NvM_PageSwap_Normal();
          break;
          case TC19_FN:
            TC019_NvM_PageSwap_PowerLoss();
          break;
           default:
            break;
        }
}






// uint8 secoc_nvm_count_r[4]={0};
// uint8 secoc_nvm_count_w[4]={0x20,0x26,0x02,0x03};
// uint8 NVM_Test=2;
// void NvM_Test(void)
// {

//     if(NVM_Test==1)
//     {
//     NvM_ReadBlock(NvMBlock_SecOc_count,secoc_nvm_count_r);

//     while((NvM_MultiJob.ReqResult == NVM_REQ_PENDING))
//     {
//         NvM_MainFunction();
//         Fee_MainFunction();
//         Fls_MainFunction();
//     }
//     NVM_Test=2;
//     }else if(NVM_Test==2)
//     {
//     NvM_WriteBlock(NvMBlock_SecOc_count,secoc_nvm_count_w);

//     while((NvM_MultiJob.ReqResult == NVM_REQ_PENDING))
//     {
//         NvM_MainFunction();
//         Fee_MainFunction();
//         Fls_MainFunction();
//     }
//      NVM_Test=1;
//     }

// }



