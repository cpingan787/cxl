/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Mcu_MemMap.h                                                */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2017-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision for sections for Memory Mapping                                  */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas.            */
/* Any warranty is expressly disclaimed and excluded by Renesas, either       */
/* expressed or implied, including but not limited to those for               */
/* non-infringement of  intellectual property, merchantability and/or fitness */
/* for the particular purpose.                                                */
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
 * V1.0.0:  31-Jan-2017  : Initial Version
 * V1.0.1:  24-Jul-2017  : Removed SPI related memory sections from Default
 *                         Section Mapping.
 * V1.0.2:  14-Dec-2017  : Following changes are done as part of merging
*                          activities ARDAABD-3490,
 *                         1. Removed MCU_<START/STOP>_SEC_VAR_8,
 *                            MCU_<START/STOP>_SEC_VAR_16,MCU_<START/STOP>_SEC_
 *                            VAR_32,MCU_<START/STOP>_SEC_VAR_FAST_8,MCU_<START
 *                            /STOP>_SEC_VAR_FAST_16, MCU_<START/STOP>_SEC_VAR_
 *                            FAST_32, MCU_<START/STOP>_SEC_VAR_UNSPECIFIED,
 *                            MCU_<START/STOP>_SEC_VAR_FAST_UNSPECIFIED,
 *                            MCU_<START/STOP>_SEC_CONFIG_VAR_NOINIT_UNSPECIFIED
 *                            , MCU_<START/STOP>_SEC_CONST_BOOLEAN,MCU_<START/
 *                            STOP>_SEC_CONST_8, MCU_<START/STOP>_SEC_CONST_16,
 *                            MCU_<START/STOP>_SEC_CONST_32, MCU_<START/STOP>_
 *                            SEC_VAR_FAST_BOOLEAN, MCU_<START/STOP>_SEC_VAR_
 *                            BOOLEAN, MCU_<START/STOP>_SEC_DBTOC_DATA_
 *                            UNSPECIFIED, MCU_<START/STOP>_SEC_BURAM_VAR_NO_
 *                            INIT_UNSPECIFIED.
 *                         2. Added MCU_<START/STOP>_SEC_VAR_INIT_BOOLEAN,
 *                            MCU_<START/STOP>_SEC_BURAM_VAR_NO_INIT_<8/32> and
 *                            MCU_<START/STOP>_CONFIG_DATA_8.
 *                         3. As part of merging activity #ARDAABD-3490,
 *                         a. Removed MCU_<START/STOP>_SEC_VAR_8,
 *                            MCU_<START/STOP>_SEC_VAR_16,MCU_<START/STOP>_SEC_
 *                            VAR_32,MCU_<START/STOP>_SEC_VAR_FAST_8,MCU_<START
 *                            /STOP>_SEC_VAR_FAST_16, MCU_<START/STOP>_SEC_VAR_
 *                            FAST_32, MCU_<START/STOP>_SEC_VAR_UNSPECIFIED,
 *                            MCU_<START/STOP>_SEC_VAR_FAST_UNSPECIFIED,
 *                            MCU_<START/STOP>_SEC_CONFIG_VAR_NOINIT_UNSPECIFIED
 *                            , MCU_<START/STOP>_SEC_CONST_BOOLEAN,MCU_<START/
 *                            STOP>_SEC_CONST_8, MCU_<START/STOP>_SEC_CONST_16,
 *                            MCU_<START/STOP>_SEC_CONST_32, MCU_<START/STOP>_
 *                            SEC_VAR_FAST_BOOLEAN, MCU_<START/STOP>_SEC_VAR_
 *                            BOOLEAN, MCU_<START/STOP>_SEC_DBTOC_DATA_
 *                            UNSPECIFIED, MCU_<START/STOP>_SEC_BURAM_VAR_NO_
 *                            INIT_UNSPECIFIED.Ref:ARDAABD-908
 *                         b. Added MCU_<START/STOP>_SEC_VAR_INIT_BOOLEAN,
 *                            MCU_<START/STOP>_SEC_BURAM_VAR_NO_INIT_<8/32> and
 *                            MCU_<START/STOP>_CONFIG_DATA_8.Ref:ARDAABD-908
 * V1.0.3:  09-Sep-2020  : Following changes are made :
 *                         1. As part of ARDAABD-1553, removed memory sections
 *                            used for retention ram (RRAM_CODE, RRAM_ROM_CODE).
 * V1.0.4:  01-Apr-2021  : As part of ARDAABD-5023, the following changes are
 *                         made:
 *                         a) Added '#pragma ghs startsda' before the start
 *                            of section 'MCU_CFG_DATA_8'.
 *                         b) Changed the define 'DEFAULT_STOP_SEC_CONST_8'
 *                            to 'DEFAULT_STOP_SEC_CONST_8BIT' to stop
 *                            section 'MCU_CFG_DATA_8'.
 *                         c) Copyright Information is updated.
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
#define MCU_MEMMAP_AR_RELEASE_MAJOR_VERSION      4
#define MCU_MEMMAP_AR_RELEASE_MINOR_VERSION      2
#define MCU_MEMMAP_AR_RELEASE_REVISION_VERSION   2

/*
 * File version information
 */
#define MCU_MEMMAP_SW_MAJOR_VERSION   1
#define MCU_MEMMAP_SW_MINOR_VERSION   0
#define MCU_MEMMAP_SW_PATCH_VERSION   0

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
/*             MCU                                                            */
/* -------------------------------------------------------------------------- */


#elif defined (MCU_START_SEC_VAR_INIT_BOOLEAN)
   #ifdef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_BOOLEAN_SEC_STARTED
     #undef  MCU_START_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_START_SEC_VAR_1BIT
   #endif
#elif defined (MCU_STOP_SEC_VAR_INIT_BOOLEAN)
   #ifndef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_BOOLEAN_SEC_STARTED
     #undef  MCU_STOP_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_STOP_SEC_VAR_1BIT
   #endif

#elif defined (MCU_START_SEC_VAR_NO_INIT_8)
   #ifdef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_8_SEC_STARTED
     #undef  MCU_START_SEC_VAR_NO_INIT_8
     #define DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #endif
#elif defined (MCU_STOP_SEC_VAR_NO_INIT_8)
   #ifndef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_8_SEC_STARTED
     #undef  MCU_STOP_SEC_VAR_NO_INIT_8
     #define DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #endif

#elif defined (MCU_START_SEC_VAR_NO_INIT_16)
   #ifdef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_16_SEC_STARTED
     #undef  MCU_START_SEC_VAR_NO_INIT_16
     #define DEFAULT_START_SEC_VAR_NOINIT_16BIT
   #endif
#elif defined (MCU_STOP_SEC_VAR_NO_INIT_16)
   #ifndef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_16_SEC_STARTED
     #undef  MCU_STOP_SEC_VAR_NO_INIT_16
     #define DEFAULT_STOP_SEC_VAR_NOINIT_16BIT
   #endif

#elif defined (MCU_START_SEC_VAR_NO_INIT_32)
   #ifdef VAR_NOINIT_32_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_32_SEC_STARTED
     #undef  MCU_START_SEC_VAR_NO_INIT_32
     #define DEFAULT_START_SEC_VAR_NOINIT_32BIT
   #endif
#elif defined (MCU_STOP_SEC_VAR_NO_INIT_32)
   #ifndef VAR_NOINIT_32_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_32_SEC_STARTED
     #undef  MCU_STOP_SEC_VAR_NO_INIT_32
     #define DEFAULT_STOP_SEC_VAR_NOINIT_32BIT
   #endif

#elif defined (MCU_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  MCU_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (MCU_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  MCU_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (MCU_START_SEC_BURAM_VAR_NO_INIT_8)
   #ifdef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_8_SEC_STARTED
     #undef  MCU_START_SEC_BURAM_VAR_NO_INIT_8
     #pragma ghs startsda
     #pragma ghs section sbss=".MCU_CFG_BURAM_NO_INIT_8"
   #endif
#elif defined (MCU_STOP_SEC_BURAM_VAR_NO_INIT_8)
   #ifndef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_8_SEC_STARTED
     #undef  MCU_STOP_SEC_BURAM_VAR_NO_INIT_8
     #pragma ghs section sbss=default
     #pragma ghs endsda
   #endif

#elif defined (MCU_START_SEC_BURAM_VAR_NO_INIT_32)
   #ifdef VAR_NOINIT_32_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_32_SEC_STARTED
     #undef  MCU_START_SEC_BURAM_VAR_NO_INIT_32
     #pragma ghs startsda
     #pragma ghs section sbss=".MCU_CFG_BURAM_NO_INIT_32"
   #endif
#elif defined (MCU_STOP_SEC_BURAM_VAR_NO_INIT_32)
   #ifndef VAR_NOINIT_32_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_32_SEC_STARTED
     #undef  MCU_STOP_SEC_BURAM_VAR_NO_INIT_32
     #pragma ghs section sbss=default
     #pragma ghs endsda
   #endif

#elif defined (MCU_START_SEC_CONST_UNSPECIFIED)
   #ifdef CONST_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONST_UNSPECIFIED_SEC_STARTED
     #undef  MCU_START_SEC_CONST_UNSPECIFIED
     #define DEFAULT_START_SEC_CONST_UNSPECIFIED
   #endif
#elif defined (MCU_STOP_SEC_CONST_UNSPECIFIED)
   #ifndef CONST_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONST_UNSPECIFIED_SEC_STARTED
     #undef  MCU_STOP_SEC_CONST_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (MCU_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  MCU_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (MCU_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  MCU_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (MCU_START_SEC_CONFIG_DATA_8)
   #ifdef CONFIG_DATA_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_8_SEC_STARTED
     #undef  MCU_START_SEC_CONFIG_DATA_8
     #pragma ghs startsda
     #pragma ghs section rosdata=".MCU_CFG_DATA_8"
   #endif
#elif defined (MCU_STOP_SEC_CONFIG_DATA_8)
   #ifndef CONFIG_DATA_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_8_SEC_STARTED
     #undef  MCU_STOP_SEC_CONFIG_DATA_8
     #define DEFAULT_STOP_SEC_CONST_8BIT
   #endif

#elif defined (MCU_START_SEC_PUBLIC_CODE)
   #ifdef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PUBLIC_CODE_SEC_STARTED
     #undef  MCU_START_SEC_PUBLIC_CODE
     #pragma ghs section text=".MCU_PUBLIC_CODE_ROM"
   #endif
#elif defined (MCU_STOP_SEC_PUBLIC_CODE)
   #ifndef PUBLIC_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  PUBLIC_CODE_SEC_STARTED
     #undef  MCU_STOP_SEC_PUBLIC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (MCU_START_SEC_PRIVATE_CODE)
   #ifdef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PRIVATE_CODE_SEC_STARTED
     #undef  MCU_START_SEC_PRIVATE_CODE
     #pragma ghs section text=".MCU_PRIVATE_CODE_ROM"
   #endif
#elif defined (MCU_STOP_SEC_PRIVATE_CODE)
   #ifndef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PRIVATE_CODE_SEC_STARTED
     #undef  MCU_STOP_SEC_PRIVATE_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (MCU_START_SEC_CODE_FAST)
   #ifdef ISR_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define ISR_CODE_SEC_STARTED
     #undef  MCU_START_SEC_CODE_FAST
     #pragma ghs section text=".MCU_FAST_CODE_ROM"
   #endif
#elif defined (MCU_STOP_SEC_CODE_FAST)
   #ifndef ISR_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  ISR_CODE_SEC_STARTED
     #undef  MCU_STOP_SEC_CODE_FAST
     #define DEFAULT_STOP_SEC_CODE
   #endif

/* -------------------------------------------------------------------------- */
/* End of module section mapping                                              */
/* -------------------------------------------------------------------------- */
#else
  #error "Mcu_MemMap.h: No valid section define found"
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

#elif defined (DEFAULT_START_SEC_VAR_8BIT)
   #undef      DEFAULT_START_SEC_VAR_8BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_8BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_8BIT)
   #undef      DEFAULT_STOP_SEC_VAR_8BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_16BIT)
   #undef      DEFAULT_START_SEC_VAR_16BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_16BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_16BIT)
   #undef      DEFAULT_STOP_SEC_VAR_16BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_32BIT)
   #undef      DEFAULT_START_SEC_VAR_32BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_32BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_32BIT)
   #undef      DEFAULT_STOP_SEC_VAR_32BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_UNSPECIFIED)
   #undef      DEFAULT_START_SEC_VAR_UNSPECIFIED
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_UNSPECIFIED)
   #undef      DEFAULT_STOP_SEC_VAR_UNSPECIFIED
   #pragma ghs section sdata=default
   #pragma ghs endsda

/* -------------------------------------------------------------------------- */
/* RAM variables not initialized                                              */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_NOINIT_1BIT)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_1BIT
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_1BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_1BIT)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_1BIT
   #pragma ghs section sbss=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_8BIT)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_8BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_8BIT)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #pragma ghs section sbss=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_16BIT)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_16BIT
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_16BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_16BIT)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_16BIT
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

/* -------------------------------------------------------------------------- */
/* RAM variables frequently used or accessed bitwise                          */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_FAST_1BIT)
   #undef      DEFAULT_START_SEC_VAR_FAST_1BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".FAST_RAM_1BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_1BIT)
   #undef      DEFAULT_STOP_SEC_VAR_FAST_1BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_FAST_8BIT)
   #undef      DEFAULT_START_SEC_VAR_FAST_8BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".FAST_RAM_8BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_8BIT)
   #undef      DEFAULT_STOP_SEC_VAR_FAST_8BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_FAST_16BIT)
   #undef      DEFAULT_START_SEC_VAR_FAST_16BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".FAST_RAM_16BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_16BIT)
   #undef      DEFAULT_STOP_SEC_VAR_FAST_16BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_FAST_32BIT)
   #undef      DEFAULT_START_SEC_VAR_FAST_32BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".FAST_RAM_32BIT"
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_32BIT)
   #undef      DEFAULT_STOP_SEC_VAR_FAST_32BIT
   #pragma ghs section sdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_VAR_FAST_UNSPECIFIED)
   #undef      DEFAULT_START_SEC_VAR_FAST_UNSPECIFIED
   #pragma ghs startsda
   #pragma ghs section sdata=".FAST_RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_UNSPECIFIED)
   #undef      DEFAULT_STOP_SEC_VAR_FAST_UNSPECIFIED
   #pragma ghs section sdata=default
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
/* ROM FAR constants                                                          */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_CONST_1BIT_FAR)
   #undef      DEFAULT_START_SEC_CONST_1BIT_FAR
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_FAR_ROM_1BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_1BIT_FAR)
   #undef      DEFAULT_STOP_SEC_CONST_1BIT_FAR
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_8BIT_FAR)
   #undef      DEFAULT_START_SEC_CONST_8BIT_FAR
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_FAR_ROM_8BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_8BIT_FAR)
   #undef      DEFAULT_STOP_SEC_CONST_8BIT_FAR
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_16BIT_FAR)
   #undef      DEFAULT_START_SEC_CONST_16BIT_FAR
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_FAR_ROM_16BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_16BIT_FAR)
   #undef      DEFAULT_STOP_SEC_CONST_16BIT_FAR
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_32BIT_FAR)
   #undef      DEFAULT_START_SEC_CONST_32BIT_FAR
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_FAR_ROM_32BIT"
#elif defined (DEFAULT_STOP_SEC_CONST_32BIT_FAR)
   #undef      DEFAULT_STOP_SEC_CONST_32BIT_FAR
   #pragma ghs section rosdata=default
   #pragma ghs endsda

#elif defined (DEFAULT_START_SEC_CONST_UNSPECIFIED_FAR)
   #undef      DEFAULT_START_SEC_CONST_UNSPECIFIED_FAR
   #pragma ghs startsda
   #pragma ghs section rosdata=".CONST_FAR_ROM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_CONST_UNSPECIFIED_FAR)
   #undef      DEFAULT_STOP_SEC_CONST_UNSPECIFIED_FAR
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
