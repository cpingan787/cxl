#include "Std_Types.h"
#include "Fls.h"
#include "NVM.h"
#include "NvM_Inter.h"
#include "Dem.h"
#include "Mem_Test.h"
uint8 ReadAppBuffer[512] = {0};
uint8 WriteAppBuffer[512] = {0};
Std_ReturnType FlsLoopCount = 0;

void Fls_test(void)
{
    Std_ReturnType GenReturnValue;

    for(FlsLoopCount = 0; FlsLoopCount < 8; FlsLoopCount++)
    {
        WriteAppBuffer[FlsLoopCount] = (0xAA+FlsLoopCount);
    }

    /**************************/
    /* Request Read Operation */
    /**************************/
    /* Read 512B from address 0x4000 */
    GenReturnValue = Fls_Read(0x4000, (uint8 *)&ReadAppBuffer[0], 0x0200);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount ++;
    }

    /***************************/
    /* Request Erase Operation */
    /***************************/
    /* Erase 1KB Data Flash starting from address 0x4000 */    
    GenReturnValue = Fls_Erase(0x4000, 0x0400);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount++;
    }
 
    /***************************/
    /* Request Write Operation */
    /***************************/
    /* Write 512B to address 0x4000 */	
    GenReturnValue = Fls_Write(0x4000, (const uint8 *)&WriteAppBuffer[0], 0x0200);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount++;
    }

    /**************************/
    /* Request Read Operation */
    /**************************/
    /* Read 512B from address 0x4000 */
    GenReturnValue = Fls_Read(0x4000, (uint8 *)&ReadAppBuffer[0], 0x0200);
    FlsLoopCount = 0;
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
        Fls_MainFunction();
        FlsLoopCount ++;
    }
}
uint8 secoc_count_r[4]={0};
uint8 secoc_count_w[4]={0x20,0x26,0x02,0x03};
uint8 NVM_test=0;
void NvM_test(void)
{

    if(NVM_test==1)
    {
    NvM_ReadBlock(NvMBlock_SecOc_count,secoc_count_r);

    while((NvM_MultiJob.ReqResult == NVM_REQ_PENDING))
    {
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        FlsLoopCount ++;
    }
    NVM_test=0;
    }else if(NVM_test==2)
    {
    NvM_WriteBlock(NvMBlock_SecOc_count,secoc_count_w);

    while((NvM_MultiJob.ReqResult == NVM_REQ_PENDING))
    {
        NvM_MainFunction();
        Fee_MainFunction();
        Fls_MainFunction();
        FlsLoopCount ++;
    }
     NVM_test=0;
    }

}
uint8 aging=0;
uint16 FlsCount = 0;
uint8 NVM_w_all=0;
void DTCMem_test(void)
{

    if(aging==1)
    {
    Dem_SetEventStatus(EventParameter_0x951171,DEM_EVENT_STATUS_FAILED);
    }else if(aging==2)
    {
    Dem_SetEventStatus(EventParameter_0x951171,DEM_EVENT_STATUS_PASSED);
    }
 
}
