/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Adc_MemMap.h                                                */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2025 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision for sections for ADC Memory Mapping                              */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas. Any        */
/* warranty is expressly disclaimed and excluded by Renesas, either expressed */
/* or implied, including but not limited to those for non-infringement of     */
/* intellectual property, merchantability and/or fitness for the particular   */
/* purpose.                                                                   */
/*                                                                            */
/* Renesas shall not have any obligation to maintain, service or provide bug  */
/* fixes for the supplied Product(s) and/or the Application.                  */
/*                                                                            */
/* Each User is solely responsible for determining the appropriateness of     */
/* using the Product(s) and assumes all risks associated with its exercise    */
/* of rights under this Agreement, including, but not limited to the risks    */
/* and costs of program errors, compliance with applicable laws, damage to    */
/* or loss of data, programs or equipment, and unavailability or              */
/* interruption of operations.                                                */
/*                                                                            */
/* Limitation of Liability                                                    */
/*                                                                            */
/* In no event shall Renesas be liable to the User for any incidental,        */
/* consequential, indirect, or punitive damage (including but not limited     */
/* to lost profits) regardless of whether such liability is based on breach   */
/* of contract, tort, strict liability, breach of warranties, failure of      */
/* essential purpose or otherwise and even if advised of the possibility of   */
/* such damages. Renesas shall not be liable for any services or products     */
/* provided by third party vendors, developers or consultants identified or   */
/* referred to the User by Renesas in connection with the Product(s) and/or   */
/* the Application.                                                           */
/*                                                                            */
/*============================================================================*/
/* Environment:                                                               */
/*              Devices:        X1x                                           */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V2.0.0:  23-Nov-2016  : Initial Version
 * V2.0.1:  21-Dec-2016  : Following changes are made:
 *                         1. As part ARDAABC-940, Removed unused memory
 *                            sections.
 * V2.0.2:  21-Dec-2016  : Following changes are made:
 *                         1. As part ARDAABC-940, renamed ADC_APPL_CODE_ROM
 *                            to ADC_CALLOUT_CODE_ROM.
 * V2.0.3:  01-June-2017 : Following changes are made:
 *                         1. As part ARDAABD-1494, removed SPI related
 *                            memory sections  from Default Section Mapping
 * V2.0.4:  24-Aug-2017 : Following changes are made:
 *                         1. As part ARDAABD-1494, redundant memory sections
 *                         are removed
 * V2.0.5:  20-Sep-2017 : Following changes are made:
 *                         1. As part of ARDAABD-2448,
 *                            ADC_START_SEC_VAR_DMA_DB_NO_INIT_ASIL_B_32,
 *                            ADC_STOP_SEC_VAR_DMA_DB_NO_INIT_ASIL_B_32,
 *                            ADC_START_SEC_VAR_DMA_NO_INIT_ASIL_B_16,
 *                            ADC_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_16,
 *                            ADC_START_SEC_VAR_DMA_NO_INIT_ASIL_B_32 and
 *                            ADC_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_32 sections
 *                            have been added.
 *                         2. ADC_START_SEC_DB_VAR_NOINIT_ASILB_32 ,
 *                            ADC_STOP_SEC_DB_VAR_NOINIT_ASILB_32 section
 *                            is removed
 * V2.0.6:  17-Oct-2017:   #ARDAABD:2453
 *                         1. Removed ADC_START_SEC_VAR_NO_INIT_ASIL_B_32 and
 *                            ADC_STOP_SEC_VAR_NO_INIT_ASIL_B_32 sections.
 * V2.0.7:  12-Apr-2018 : Following change is made:
 *                         1. As part of merging activity ticket ARDAABD-3452,
 *                            a.Following Sections are added:
 *                              ADC_<START/STOP>_SEC_CONFIG_DATA_ASIL_B_32,
 *                              ADC_<START/STOP>_SEC_CONFIG_DATA_ASIL_B_16,
 *                              ADC_<START/STOP>_SEC_CONFIG_DATA_ASIL_B_8.
 *                              Ref: ARDAABD-908
 * V2.0.8:  17-Jun-2021 : Following change is made:
 *                         1. As a part of JIRA ticket ARDAABD-5035,
 *                            a.Removed 'ASIL_B' from the memory section macros
 *                              as follow:
 *                               ADC_START_SEC_CALLOUT_CODE_ASIL_B
 *                               ADC_START_SEC_CODE_ASIL_B
 *                               ADC_START_SEC_CODE_FAST_ASIL_B
 *                               ADC_START_SEC_CONFIG_DATA_ASIL_B_16
 *                               ADC_START_SEC_CONFIG_DATA_ASIL_B_32
 *                               ADC_START_SEC_CONFIG_DATA_ASIL_B_8
 *                               ADC_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
 *                               ADC_START_SEC_CONST_ASIL_B_32
 *                               ADC_START_SEC_CONST_ASIL_B_UNSPECIFIED
 *                               ADC_START_SEC_VAR_DMA_DB_NO_INIT_ASIL_B_32
 *                               ADC_START_SEC_VAR_DMA_NO_INIT_ASIL_B_16
 *                               ADC_START_SEC_VAR_DMA_NO_INIT_ASIL_B_32
 *                               ADC_START_SEC_VAR_INIT_ASIL_B_BOOLEAN
 *                               ADC_START_SEC_VAR_NO_INIT_ASIL_B_8
 *                               ADC_START_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED
 *                               ADC_STOP_SEC_CALLOUT_CODE_ASIL_B
 *                               ADC_STOP_SEC_CODE_ASIL_B
 *                               ADC_STOP_SEC_CODE_FAST_ASIL_B
 *                               ADC_STOP_SEC_CONFIG_DATA_ASIL_B_16
 *                               ADC_STOP_SEC_CONFIG_DATA_ASIL_B_32
 *                               ADC_STOP_SEC_CONFIG_DATA_ASIL_B_8
 *                               ADC_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
 *                               ADC_STOP_SEC_CONST_ASIL_B_32
 *                               ADC_STOP_SEC_CONST_ASIL_B_UNSPECIFIED
 *                               ADC_STOP_SEC_VAR_DMA_DB_NO_INIT_ASIL_B_32
 *                               ADC_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_16
 *                               ADC_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_32
 *                               ADC_STOP_SEC_VAR_INIT_ASIL_B_BOOLEAN
 *                               ADC_STOP_SEC_VAR_NO_INIT_ASIL_B_8
 *                               ADC_STOP_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED
 *                               DEFAULT_START_SEC_VAR_DMA_NO_INIT_ASIL_B_16
 *                               DEFAULT_START_SEC_VAR_DMA_NO_INIT_ASIL_B_32
 *                               DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_16
 *                               DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_32
 * V2.0.9: 28-Sep-2025    : 1. As part of ARDAABD-4371, the following changes
 *                               are made:
 *                               a) Added Default start and stop section of code
 */
/******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/*
 * AUTOSAR specification version information
 */
#define ADC_MEMMAP_AR_RELEASE_MAJOR_VERSION      4
#define ADC_MEMMAP_AR_RELEASE_MINOR_VERSION      2
#define ADC_MEMMAP_AR_RELEASE_REVISION_VERSION   2

/*
 * File version information
 */
#define ADC_MEMMAP_SW_MAJOR_VERSION   2
#define ADC_MEMMAP_SW_MINOR_VERSION   0
#define ADC_MEMMAP_SW_PATCH_VERSION   0

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Module section mapping                                **
*******************************************************************************/
/*
 * The symbol 'START_WITH_IF' is undefined.
 *
 * Thus, the preprocessor continues searching for defined symbols
 * This first #ifdef makes integration of delivered parts of MemMap.h
 * easier because every supplier starts with #elif
 */
#if defined (START_WITH_IF)

/* -------------------------------------------------------------------------- */
/*             ADC                                                            */
/* -------------------------------------------------------------------------- */

#elif defined (ADC_START_SEC_VAR_INIT_BOOLEAN)
   #ifdef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_BOOLEAN_SEC_STARTED
     #undef  ADC_START_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_START_SEC_VAR_1BIT
   #endif
#elif defined (ADC_STOP_SEC_VAR_INIT_BOOLEAN)
   #ifndef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_BOOLEAN_SEC_STARTED
     #undef  ADC_STOP_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_STOP_SEC_VAR_1BIT
   #endif

#elif defined (ADC_START_SEC_VAR_NO_INIT_8)
   #ifdef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_8_SEC_STARTED
     #undef  ADC_START_SEC_VAR_NO_INIT_8
     #define DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #endif
#elif defined (ADC_STOP_SEC_VAR_NO_INIT_8)
   #ifndef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_8_SEC_STARTED
     #undef  ADC_STOP_SEC_VAR_NO_INIT_8
     #define DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #endif
#elif defined (ADC_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  ADC_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (ADC_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  ADC_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (ADC_START_SEC_CONST_32)
   #ifdef CONST_32_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONST_32_SEC_STARTED
     #undef  ADC_START_SEC_CONST_32
     #define DEFAULT_START_SEC_CONST_32BIT
   #endif
#elif defined (ADC_STOP_SEC_CONST_32)
   #ifndef CONST_32_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONST_32_SEC_STARTED
     #undef  ADC_STOP_SEC_CONST_32
     #define DEFAULT_STOP_SEC_CONST_32BIT
   #endif

#elif defined (ADC_START_SEC_CONST_UNSPECIFIED)
   #ifdef CONST_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONST_UNSPECIFIED_SEC_STARTED
     #undef  ADC_START_SEC_CONST_UNSPECIFIED
     #define DEFAULT_START_SEC_CONST_UNSPECIFIED
   #endif
#elif defined (ADC_STOP_SEC_CONST_UNSPECIFIED)
   #ifndef CONST_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONST_UNSPECIFIED_SEC_STARTED
     #undef  ADC_STOP_SEC_CONST_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (ADC_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  ADC_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".ADC_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (ADC_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  ADC_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (ADC_START_SEC_CONFIG_DATA_8)
   #ifdef CONFIG_DATA_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_8_SEC_STARTED
     #undef  ADC_START_SEC_CONFIG_DATA_8
     #pragma ghs startsda
     #pragma ghs section rosdata=".ADC_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (ADC_STOP_SEC_CONFIG_DATA_8)
   #ifndef CONFIG_DATA_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_8_SEC_STARTED
     #undef  ADC_STOP_SEC_CONFIG_DATA_8
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (ADC_START_SEC_CONFIG_DATA_16)
   #ifdef CONFIG_DATA_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_16_SEC_STARTED
     #undef  ADC_START_SEC_CONFIG_DATA_16
     #pragma ghs startsda
     #pragma ghs section rosdata=".ADC_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (ADC_STOP_SEC_CONFIG_DATA_16)
   #ifndef CONFIG_DATA_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_16_SEC_STARTED
     #undef  ADC_STOP_SEC_CONFIG_DATA_16
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (ADC_START_SEC_CONFIG_DATA_32)
   #ifdef CONFIG_DATA_32_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_32_SEC_STARTED
     #undef  ADC_START_SEC_CONFIG_DATA_32
      #pragma ghs startsda
     #pragma ghs section rosdata=".ADC_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (ADC_STOP_SEC_CONFIG_DATA_32)
   #ifndef CONFIG_DATA_32_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_32_SEC_STARTED
     #undef  ADC_STOP_SEC_CONFIG_DATA_32
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (ADC_START_SEC_CODE)
   #ifdef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PUBLIC_CODE_SEC_STARTED
     #undef  ADC_START_SEC_CODE
     #pragma ghs section text=".ADC_PUBLIC_CODE_ROM"
   #endif
#elif defined (ADC_STOP_SEC_CODE)
   #ifndef PUBLIC_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  PUBLIC_CODE_SEC_STARTED
     #undef  ADC_STOP_SEC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (ADC_START_SEC_CALLOUT_CODE)
   #ifdef APPL_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define APPL_CODE_SEC_STARTED
     #undef  ADC_START_SEC_CALLOUT_CODE
     #pragma ghs section text=".ADC_CALLOUT_CODE_ROM"
   #endif
#elif defined (ADC_STOP_SEC_CALLOUT_CODE)
   #ifndef APPL_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  APPL_CODE_SEC_STARTED
     #undef  ADC_STOP_SEC_CALLOUT_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (ADC_START_SEC_CODE_FAST)
   #ifdef ISR_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define ISR_CODE_SEC_STARTED
     #undef  ADC_START_SEC_CODE_FAST
     #pragma ghs section text=".ADC_FAST_CODE_ROM"
   #endif
#elif defined (ADC_STOP_SEC_CODE_FAST)
   #ifndef ISR_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  ISR_CODE_SEC_STARTED
     #undef  ADC_STOP_SEC_CODE_FAST
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (ADC_START_SEC_VAR_DMA_DB_NO_INIT_32)
   #ifdef VAR_PWMDIAG_DOUBLE_BUFF_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_PWMDIAG_DOUBLE_BUFF_STARTED
     #undef  ADC_START_SEC_VAR_DMA_DB_NO_INIT_32
     #pragma ghs startsda
     #pragma ghs section sbss=".ADC_DOUBLE_BUFF_RAM"
   #endif
#elif defined (ADC_STOP_SEC_VAR_DMA_DB_NO_INIT_32)
   #ifndef VAR_PWMDIAG_DOUBLE_BUFF_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_PWMDIAG_DOUBLE_BUFF_STARTED
     #undef  ADC_STOP_SEC_VAR_DMA_DB_NO_INIT_32
     #pragma ghs section sbss=default
     #pragma ghs endsda
   #endif

#elif defined (ADC_START_SEC_VAR_DMA_NO_INIT_16)
   #ifdef VAR_NOINIT_DMA_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_DMA_16_SEC_STARTED
     #undef  ADC_START_SEC_VAR_DMA_NO_INIT_16
     #pragma ghs startsda
     #pragma ghs section sbss=".NOINIT_ADC_DMA_RAM"
   #endif
#elif defined (ADC_STOP_SEC_VAR_DMA_NO_INIT_16)
   #ifndef VAR_NOINIT_DMA_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_DMA_16_SEC_STARTED
     #undef  ADC_STOP_SEC_VAR_DMA_NO_INIT_16
     #pragma ghs section sbss=default
     #pragma ghs endsda
   #endif

#elif defined (ADC_START_SEC_VAR_DMA_NO_INIT_32)
   #ifdef VAR_NOINIT_DMA_32_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_DMA_32_SEC_STARTED
     #undef  ADC_START_SEC_VAR_DMA_NO_INIT_32
     #pragma ghs startsda
     #pragma ghs section sbss=".NOINIT_ADC_DMA_RAM"
   #endif
#elif defined (ADC_STOP_SEC_VAR_DMA_NO_INIT_32)
   #ifndef VAR_NOINIT_DMA_32_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_DMA_32_SEC_STARTED
     #undef  ADC_STOP_SEC_VAR_DMA_NO_INIT_32
     #pragma ghs section sbss=default
     #pragma ghs endsda
   #endif

#else
  #error "MemMap.h: No valid section define found"
#endif  /* START_WITH_IF */


/*******************************************************************************
**                      Default section mapping                               **
*******************************************************************************/
/* general start of #elif chain whith #if                                     */
#if defined (START_WITH_IF)

/* -------------------------------------------------------------------------- */
/* RAM variables initialized from ROM on reset                                */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_1BIT)
   #undef      DEFAULT_START_SEC_VAR_1BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_1BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_1BIT)
   #undef      DEFAULT_STOP_SEC_VAR_1BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

/* -------------------------------------------------------------------------- */
/* RAM variables not initialized                                              */
/* -------------------------------------------------------------------------- */

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_8BIT)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_8BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_8BIT)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #pragma ghs section sbss=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_32BIT)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_32BIT
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_32BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_32BIT)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_32BIT
   #pragma ghs section sbss=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #pragma ghs section sbss=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_DMA_NO_INIT_32)
   #undef      DEFAULT_START_SEC_VAR_DMA_NO_INIT_32
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_ADC_DMA_RAM"
#elif defined (DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_32)
   #undef      DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_32
   #pragma ghs section sbss=default
   #pragma ghs endsda
   #elif defined (DEFAULT_START_SEC_VAR_DMA_NO_INIT_16)
   #undef      DEFAULT_START_SEC_VAR_DMA_NO_INIT_16
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_ADC_DMA_RAM"
#elif defined (DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_16)
   #undef      DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_16
   #pragma ghs section sbss=default
   #pragma ghs endsda
     #elif defined (DEFAULT_START_SEC_VAR_DMA_NO_INIT_32)
   #undef      DEFAULT_START_SEC_VAR_DMA_NO_INIT_32
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_32)
   #undef      DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_32
   #pragma ghs section sbss=default
   #pragma ghs endsda

   #elif defined (DEFAULT_START_SEC_VAR_DMA_NO_INIT_16)
   #undef      DEFAULT_START_SEC_VAR_DMA_NO_INIT_16
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_16)
   #undef      DEFAULT_STOP_SEC_VAR_DMA_NO_INIT_16
   #pragma ghs section sbss=default
   #pragma ghs endsda

/* -------------------------------------------------------------------------- */
/* ROM constants                                                              */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_CONST_1BIT)
   #undef      DEFAULT_START_SEC_CONST_1BIT
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_1BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_1BIT)
   #undef      DEFAULT_STOP_SEC_CONST_1BIT
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_8BIT)
   #undef      DEFAULT_START_SEC_CONST_8BIT
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_8BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_8BIT)
   #undef      DEFAULT_STOP_SEC_CONST_8BIT
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_16BIT)
   #undef      DEFAULT_START_SEC_CONST_16BIT
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_16BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_16BIT)
   #undef      DEFAULT_STOP_SEC_CONST_16BIT
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_32BIT)
   #undef      DEFAULT_START_SEC_CONST_32BIT
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_32BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_32BIT)
   #undef      DEFAULT_STOP_SEC_CONST_32BIT
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_UNSPECIFIED)
   #undef      DEFAULT_START_SEC_CONST_UNSPECIFIED
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_ROM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_CONST_UNSPECIFIED)
   #undef      DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #pragma ghs section rosdata=default
   #pragma ghs endsda
/* -------------------------------------------------------------------------- */
/* ROM code                                                                   */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_CODE)
   #undef      DEFAULT_START_SEC_CODE
   #pragma ghs section text=".DEFAULT_CODE_ROM"
#elif defined (DEFAULT_STOP_SEC_CODE)
   #undef      DEFAULT_STOP_SEC_CODE
   #pragma ghs section text=default

/* ---------------------------------------------------------------------------*/
/* End of default section mapping                                             */
/* ---------------------------------------------------------------------------*/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif  /* START_WITH_IF */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
