/***************************************************************************//**
* \file main_cm0plus.c
*
* \version 1.0
*
* \brief Main file for CM0+
*
********************************************************************************
* \copyright
* Copyright 2016-2020, Cypress Semiconductor Corporation. All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "cy_project.h"
#include "cy_device_headers.h"
#include "swap_bank_cm0plus.h"
#include "tvii_fota_update_hal.h"
#include "crypto/cy_crypto_config.h"

//volatile static const uint8_t m_bootSoftwareVersion[16] @ 0x10003000 = "V1.1";


const cy_stc_flash_blankcheck_config_t blankCheckConfig =
{
    .addrToBeChecked       = (uint32_t *)CFLASH_BANK_ACTIVE_ADDRESS,
    .numOfWordsToBeChecked = 1,
};

static cy_un_flash_context_t sromContext = { 0 };

void FlashInit(void)
{
    // TODO: These registers are not open for users, and should be set "1" in boot rom code
    //       However Boot rom does not support that for now. This is a tempolary code to enable the bits. (YOTS)
    Cy_Flashc_MainWriteEnable();
    Cy_Flashc_WorkWriteEnable();

    //Cy_Flashc_SetMainBankMode(CY_FLASH_SINGLE_BANK_MODE);
    Cy_Flashc_SetMainBankMode(CY_FLASH_DUAL_BANK_MODE);
    Cy_Flashc_CM0_CacheDisable();
    Cy_Flashc_InvalidateFlashCacheBuffer();

    Cy_FlashInit(false);
    CYREG_FLASHC_FLASH_CTL->stcField.u1WORK_ERR_SILENT = 1;
    //Cy_Flashc_MainWriteDisable();
}

void FlashSwitchFlow(void)
{
    uint32_t status = Cy_Flash_BlankCheck(&sromContext, &blankCheckConfig, CY_FLASH_DRIVER_BLOCKING);
    if (status != CY_FLASH_DRV_SUCCESS)
    {
        if (FOTA_BankActiveFlagRead() == CFLASH_BANKB_ACTIVE_FLAG) //���б�־BankB
        {
            if (FOTA_BankAPPIntegrityFlagRead(1) == CFLASH_BANK_APP_INTEGRITY_ENABLE) //BankB��������Ч
            {
                SwitchMapB_ThenRestart();
            }
            else if (FOTA_BankAPPIntegrityFlagRead(0) == CFLASH_BANK_APP_INTEGRITY_ENABLE) //BankA��������Ч
            {
                // SwitchMapA();
                // Do nothing
                FOTA_BankActiveFlagUpdate(0);
            }
        }
        else if (FOTA_BankActiveFlagRead() == CFLASH_BANKA_ACTIVE_FLAG) //���б�־BankA
        {
            if (FOTA_BankAPPIntegrityFlagRead(0) == CFLASH_BANK_APP_INTEGRITY_ENABLE) //BankA��������Ч
            {
                // SwitchMapA();
                // Do nothing
            }
            else if (FOTA_BankAPPIntegrityFlagRead(1) == CFLASH_BANK_APP_INTEGRITY_ENABLE)
            {
                FOTA_BankActiveFlagUpdate(1);
                SwitchMapB_ThenRestart();
            }

        }
        else
        {
            if (FOTA_BankAPPIntegrityFlagRead(0) == CFLASH_BANK_APP_INTEGRITY_ENABLE)
            {
                // SwitchMapA();
                // Do nothing
                FOTA_BankActiveFlagUpdate(0);
            }
            else if (FOTA_BankAPPIntegrityFlagRead(1) == CFLASH_BANK_APP_INTEGRITY_ENABLE)
            {
                FOTA_BankActiveFlagUpdate(1);
                SwitchMapB_ThenRestart();
            }
        }
    }
    else
    {
        // SwitchMapA();
        // Do nothing
    }
}

static uint8_t putIntoDeepSleep = 0;

#define IPC_RELEASE_INT_NUMBER  6   /* Release interrupt number. This interrup is handled by notifier (CM4) */
#define IPC_NOTIFY_INT_NUMBER   7   /* Notify interrupt number. This interrup is handled by notifiee (CM0+) */
#define CY_IPC_CHAN_USRPIPE_CM4 7

static cy_stc_sysint_irq_t stcSysIntIpcNotifyInt = 
{
    .sysIntSrc = (cy_en_intr_t)(cpuss_interrupts_ipc_0_IRQn + CY_IPC_CHAN_USRPIPE_CM4),
    .intIdx    = CPUIntIdx2_IRQn,
    .isEnabled = true
};

/*****************************************************************************
 ** \brief IpcNotifyInt_ISR
 *****************************************************************************/
void IpcNotifyInt_ISR(void)
{
    uint32_t interruptMasked = 
            Cy_IPC_Drv_ExtractAcquireMask
            (
                Cy_IPC_Drv_GetInterruptStatusMasked
                (
                    Cy_IPC_Drv_GetIntrBaseAddr(IPC_NOTIFY_INT_NUMBER)
                )
            );
    /* Check if the interrupt is caused by the notifier channel */
    if (interruptMasked == (1uL << CY_IPC_CHAN_USRPIPE_CM4))
    {
        /* Clear the interrupt */
        Cy_IPC_Drv_ClearInterrupt
        (
            Cy_IPC_Drv_GetIntrBaseAddr(IPC_NOTIFY_INT_NUMBER), 
            CY_IPC_NO_NOTIFICATION,
            interruptMasked
        );

        uint32_t u32Led;
        if(CY_IPC_DRV_SUCCESS == Cy_IPC_Drv_ReadMsgWord(Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4), &u32Led))
        {
            switch(u32Led)
            {
                case 0:
                    
                    break;
                case 1:
                    putIntoDeepSleep = 1;
                    break;
                case 2:
                    
                    break;
                default:
                    break;
            }
        }
        /* Finally relase the lock */
        Cy_IPC_Drv_ReleaseNotify(Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4), (1u << IPC_RELEASE_INT_NUMBER));
    }
}

void MCWDT_Init(void)
{
    /*********************************************************************/
    /*****      Set Core DeepSleep of which can pause counter        *****/
    /*********************************************************************/
    Cy_MCWDT_CpuSelectForDpSlpPauseAction(MCWDT0, CY_MCWDT_PAUSED_BY_DPSLP_CM0);

    /*********************************************************************/
    /*****                        Set actions                        *****/
    /*********************************************************************/
    Cy_MCWDT_SetLowerAction(MCWDT0, CY_MCWDT_COUNTER0, CY_MCWDT_ACTION_NONE);
    Cy_MCWDT_SetUpperAction(MCWDT0, CY_MCWDT_COUNTER0, CY_MCWDT_ACTION_NONE);
    Cy_MCWDT_SetWarnAction(MCWDT0, CY_MCWDT_COUNTER0, CY_MCWDT_WARN_ACTION_NONE);

    Cy_MCWDT_SetLowerAction(MCWDT0, CY_MCWDT_COUNTER1, CY_MCWDT_ACTION_NONE);
    Cy_MCWDT_SetUpperAction(MCWDT0, CY_MCWDT_COUNTER1, CY_MCWDT_ACTION_FAULT_THEN_RESET); // sub counter 1 upper limit causes to reset
    Cy_MCWDT_SetWarnAction(MCWDT0, CY_MCWDT_COUNTER1, CY_MCWDT_WARN_ACTION_NONE);

    Cy_MCWDT_SetSubCounter2Action(MCWDT0, CY_MCWDT_CNT2_ACTION_NONE);

    /*********************************************************************/
    /*****                      Set limit values                     *****/
    /*********************************************************************/
    Cy_MCWDT_SetLowerLimit(MCWDT0, CY_MCWDT_COUNTER0, 0, 0);
    Cy_MCWDT_SetWarnLimit(MCWDT0, CY_MCWDT_COUNTER0, 0, 0);
    Cy_MCWDT_SetUpperLimit(MCWDT0, CY_MCWDT_COUNTER0, 100, 0);

    Cy_MCWDT_SetLowerLimit(MCWDT0, CY_MCWDT_COUNTER1, 0, 0);
    Cy_MCWDT_SetWarnLimit(MCWDT0, CY_MCWDT_COUNTER1, 0, 0);
    Cy_MCWDT_SetUpperLimit(MCWDT0, CY_MCWDT_COUNTER1, 64000, 0);  /* 2 sec when clk_lf = 32KHz */

    Cy_MCWDT_SetToggleBit(MCWDT0, CY_MCWDT_CNT2_MONITORED_BIT15); // means 32768 count period


    /*********************************************************************/
    /*****                        Set options                        *****/
    /*********************************************************************/
    Cy_MCWDT_SetAutoService(MCWDT0, CY_MCWDT_COUNTER0, 0ul); // disable
    Cy_MCWDT_SetAutoService(MCWDT0, CY_MCWDT_COUNTER1, 0ul); // disable

    Cy_MCWDT_SetSleepDeepPause(MCWDT0, CY_MCWDT_COUNTER0, 1ul); // enable
    Cy_MCWDT_SetSleepDeepPause(MCWDT0, CY_MCWDT_COUNTER1, 1ul); // enable
    Cy_MCWDT_SetSleepDeepPause(MCWDT0, CY_MCWDT_COUNTER2, 1ul); // enable

    Cy_MCWDT_SetDebugRun(MCWDT0, CY_MCWDT_COUNTER0, 1ul); // enable
    Cy_MCWDT_SetDebugRun(MCWDT0, CY_MCWDT_COUNTER1, 1ul); // enable
    Cy_MCWDT_SetDebugRun(MCWDT0, CY_MCWDT_COUNTER2, 1ul); // enable

    Cy_MCWDT_Enable(MCWDT0, 
                    CY_MCWDT_CTR_Msk,  // enable all counter
                    0);

    while(Cy_MCWDT_GetEnabledStatus(MCWDT0, CY_MCWDT_COUNTER0) != 1ul);
    while(Cy_MCWDT_GetEnabledStatus(MCWDT0, CY_MCWDT_COUNTER1) != 1ul);
    while(Cy_MCWDT_GetEnabledStatus(MCWDT0, CY_MCWDT_COUNTER2) != 1ul);
}

void PeripheralDriverHal_FeedMCWDT(void)
{
    Cy_MCWDT_ClearWatchdog(MCWDT0, CY_MCWDT_COUNTER1);
    Cy_MCWDT_WaitForCounterReset(MCWDT0, CY_MCWDT_COUNTER1);
}
uint32_t Test;
cy_stc_crypto_server_context_t cryptoServerCtx;
cy_stc_crypto_context_t        cryptoCtx;
    uint8_t SHA512_hash[512 / 8];

    const uint8_t AesEcbKey128[] =
{
    0x2b,0x7e,0x15,0x16,0x28,0xae,0xd2,0xa6,0xab,0xf7,0x15,0x88,0x09,0xcf,0x4f,0x3c,
};

uint8_t AesEcb128CypherTxt[16];
    
int main(void)
{
    SystemInit();

    __enable_irq(); /* Enable global interrupts. */
    FlashInit();
    if (Cy_Flashc_GetMainMap() == CY_FLASH_MAPPING_A)
    {
        uint32_t status = Cy_Flash_BlankCheck(&sromContext, &blankCheckConfig, CY_FLASH_DRIVER_BLOCKING);
        if (status != CY_FLASH_DRV_SUCCESS)
        {
            if (FOTA_BankBCM0IntegrityFlagRead() != CFLASH_BANK_APP_INTEGRITY_ENABLE)
            {
                //ÿ��BANK��ǰ32KΪCM0���룬���BANKBû��д�������д�����
                FOTA_SectorEraseFlash(CFLASH_BANKB_BASE_ADDRESS); //����32K
                FOTA_SectorEraseFlash(CFLASH_BANKB_BASE_ADDRESS + 0x8000); //����32K
                FOTA_SectorEraseFlash(CFLASH_BANKB_BASE_ADDRESS + 0x10000); //����32K

                uint32_t DataBuf[128];
                uint16_t i = 0;
                uint16_t j = 0;
                uint32_t m_flashAddress = 0x12000000;

                while (m_flashAddress < 0x12018000)
                {
                    for (i = 0; i < 128; i++)
                    {
                        DataBuf[i] = *(uint32_t *)(0x10000000UL + (j * 4));
                        j++;
                    }
                    FOTA_ProgramFlash(m_flashAddress, 512, DataBuf);
                    m_flashAddress += 512;
                }
                Cy_Flashc_WorkWriteDisable();
                FOTA_BankBCM0IntegrityFlagUpdate(1);
            }
        }
        FlashSwitchFlow();
    }
    else
    {
        // This program has been switched mapping B, and already be restarted.
    }

    {
        Cy_Crypto_Server_Start(&cryptoConfig, &cryptoServerCtx);

        /* Enable CRYPTO regarding IRQn */
        /* In this examle 2 of crypto regarding interrupt uses same number,
            so just one invoking NVIC setting is needed.
                CY_CRYPTO_NOTIFY_INTR_NR    == 
                CY_CRYPTO_ERROR_INTR_NR
        */
        NVIC_SetPriority(CY_CRYPTO_NOTIFY_CPU_INT_IDX, 0);
        NVIC_ClearPendingIRQ(CY_CRYPTO_NOTIFY_CPU_INT_IDX);
        NVIC_EnableIRQ(CY_CRYPTO_NOTIFY_CPU_INT_IDX);
    }
#if 0
    cy_stc_crypto_context_sha_t cryptoShaContext;
cy_stc_crypto_context_aes_t cryptoAesContext;
        {
        cy_en_crypto_status_t status;
        do
        {
            status = Cy_Crypto_Init(&cryptoConfig, &cryptoCtx);
        } while(status != CY_CRYPTO_SUCCESS);
        Cy_Crypto_Enable(&cryptoCtx);
    }
    for(int a = 0;a < 10;a++)
    {
    const uint8_t SHA512_224_Vector0_Msg0[] = "abc";
        Cy_Crypto_Sha_Run
        (
            &cryptoCtx,
            &cryptoShaContext,
            SHA512_224_Vector0_Msg0,
            sizeof(SHA512_224_Vector0_Msg0) / sizeof(SHA512_224_Vector0_Msg0[0]) - 1,
            SHA512_hash,
            CY_CRYPTO_MODE_SHA512
        );
        /* Wait for completion */
        Cy_Crypto_Sync(true, &cryptoCtx);

        Cy_Crypto_Aes_Ecb_Run
        (
            &cryptoCtx,
            &cryptoAesContext,
            CY_CRYPTO_ENCRYPT,
            &AesEcbKey128,
            CY_CRYPTO_KEY_AES_128,
            AesEcb128CypherTxt,
            SHA512_hash
        );
        /* Wait for completion */
        Cy_Crypto_Sync(true, &cryptoCtx);
    }
#endif
    /* Enable CM4.  CY_CORTEX_M4_APPL_ADDR must be updated if CM4 memory layout is changed. */
    Cy_SysEnableApplCore(CY_CORTEX_M4_APPL_ADDR); 

    /* Don't set the release interrupt. */
    /* If user needs to use the release interrupt on the client side (in this example CM4)
     * user must set it after CM0+ server works.
     */
    Cy_IPC_Drv_SetInterruptMask
    (
        Cy_IPC_Drv_GetIntrBaseAddr(IPC_NOTIFY_INT_NUMBER),
        CY_IPC_NO_NOTIFICATION,
        (1uL << CY_IPC_CHAN_USRPIPE_CM4)
    );

    /* Setup IPC interrupt line */
    Cy_SysInt_InitIRQ(&stcSysIntIpcNotifyInt);
    Cy_SysInt_SetSystemIrqVector((cy_en_intr_t)(cpuss_interrupts_ipc_0_IRQn + CY_IPC_CHAN_USRPIPE_CM4), IpcNotifyInt_ISR);
    NVIC_ClearPendingIRQ(CPUIntIdx2_IRQn);
    NVIC_EnableIRQ(CPUIntIdx2_IRQn);

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */

    MCWDT_Init();
    
    for(;;)
    {
        // Wait 0.05 [s]
        //Cy_SysTick_DelayInUs(50000);

        if(putIntoDeepSleep == 1)
        {           
            Cy_SysPm_DeepSleep(CY_SYSPM_WAIT_FOR_INTERRUPT);

            putIntoDeepSleep = 0;
        }
       PeripheralDriverHal_FeedMCWDT();
    }
}



/* [] END OF FILE */
