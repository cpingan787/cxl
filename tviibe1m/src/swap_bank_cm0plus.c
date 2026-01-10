#include "cy_project.h"
#include "cy_device_headers.h"


#include "swap_bank_cm0plus.h"

extern void BACK_TO_START();

void SwitchMapB_ThenRestart(void)
{
    FLASHC->unFLASH_CTL.stcField.u1MAIN_MAP = CY_FLASH_MAPPING_B;
    FLASHC->unFLASH_CTL.u32Register;
    __ISB();
      FLASHC->unFLASH_CMD.stcField.u1INV = 0x1u;
    while(FLASHC->unFLASH_CMD.stcField.u1INV == 0x1u);
    BACK_TO_START();
    return;
}

void SwitchMapA(void)
{
    FLASHC->unFLASH_CTL.stcField.u1MAIN_MAP = CY_FLASH_MAPPING_A;
    FLASHC->unFLASH_CTL.u32Register;
    __ISB();
    FLASHC->unFLASH_CMD.stcField.u1INV = 0x1u;
    while(FLASHC->unFLASH_CMD.stcField.u1INV == 0x1u);
    return;
}