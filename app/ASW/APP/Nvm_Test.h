/*******************************************************************************
**                                                                            **
**  FILENAME    : Com_Test.c                                                  **
**                                                                            **
**  Created on  :                                                             **
**  Author      :                                                  **
**  Vendor      :                                                             **
**  DESCRIPTION :                                     **
**                                                                            **
**  SPECIFICATION(S) : AUTOSAR Classic Platform 4.2.2 and R19-11              **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/


/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
#define  Mem_testMODE  STD_ON
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

extern void NvM_Test(void);
extern void TC001_NvM_WriteAndReadAll(void);
extern void FillAllBlocksWithIncrementPattern(void);
extern void TC002_WriteAndReadBlock_Multi(void);
extern void TC003_NvM_WriteAndReadPRAMBlock(void);
extern void TC004_NvM_SetBlockProtection_True(void);
extern void TC005_NvM_SetBlockProtection_False(void);
extern void TC006_NvM_CancelWriteAll(void);
extern void TC007_NvM_GetErrorStatus_OK(void);
extern void TC008_NvM_GetErrorStatus_Pending(void);
extern void TC009_NvM_RecoverDataFromROMToRAM(void);
extern void TC010_NvM_ReadAndWriteAllSimultaneously(void);
extern void TC011_NvM_WriteAndReadAllSimultaneously(void);
extern void TC012_NvM_WriteAllAndWriteBlockSimultaneously(void);
extern void TC013_NvM_ReadAllAndReadBlockSimultaneously(void);
extern void TC014_NvM_ReadAllAndWriteBlockSimultaneously(void);
extern void TC015_NvM_WriteAllAndReadBlockSimultaneously(void);
extern void TC016_NvM_PowerOffDuringStorage(void);
extern void TC017_NvM_WriteBlock_InvalidAddress(void);
extern void TC018_NvM_PageSwap_Normal(void);
extern void TC019_NvM_PageSwap_PowerLoss(void);

extern void Nvm_Test_Function(uint16 SerialNumber);

