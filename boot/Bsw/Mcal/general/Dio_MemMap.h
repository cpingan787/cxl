/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Dio_MemMap.h                                                */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2021 Renesas Electronics Corporation                     */
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
 * V1.0.0:  28-Nov-2016  : Initial Version
 * V1.0.1:  10-Jan-2017  : As part of ARDAABC-324 Jira ticket the following
 *                         changes done:
 *                         1) Copyright date updated
 *                         2) DIO memory mapping related code sections updated
 * V1.0.2   11-Jan-2017  : Following changes are made:
 *                         1. As part ARDAABC-324, renamed
 *                            DIO_START_SEC_DBTOC_DATA_UNSPECIFIED
 *                            to DIO_START_SEC_CONFIG_DATA_UNSPECIFIED
 *                            DIO_STOP_SEC_DBTOC_DATA_UNSPECIFIED
 *                            to DIO_STOP_SEC_CONFIG_DATA_UNSPECIFIED
 * V1.0.3:  27-Jan-2017  : Following changes are made:
 *                         1. As part ARDAABC-324, DIO related memmap changes
 *                           to support new code section location and to remove
 *                           sections with non conform names
 * V1.0.4:  12-Feb-2017  : Following changes are made:
 *                         1. As part of ARDAABC-626, memory sections updated
 *                            to fulfill ASR requirements
 *                         2. As part of ARDAABC-324, private code section
 *                            defined.
 * V1.0.5:  25-May-2017    Following changes are made :
 *                         1. As part of ARDAABD-1892,
 *                            Removed Un-Used section from DIO.
 * V1.0.6:  20-Nov-2017    Following changes are made :
 *                         1. As part of ARDAABD-2484,
 *                            Added memory section DIO_START_VAR_INIT_ASIL_B_16
 *                            and DIO_STOP_SEC_VAR_INIT_ASIL_B_16.
 *                         2. Removed Un-Used section from DIO.
 * V1.0.7:  25-Jul-2019 : Following changes are made:
 *                        1.As part of ARDAABD-4464,
 *                         Added error message when section is not defined.
 *                         #error "Dio_MemMap.h: No valid section define found"
 * V1.0.8:  28-Sep-2020 : As part of ARDAABD-4733, added the prefix "DIO_"
 *                        for version information.
 * V1.0.9:  08-Apr-2021 : As part of ARDAABD-5042, the following changes are
 *                        made:
 *                        a) Removed 'ASIL_B' from the definition of memory
 *                           sections 'DIO_START_SEC_VAR_INIT_ASIL_B_BOOLEAN',
 *                           'DIO_STOP_SEC_VAR_INIT_ASIL_B_BOOLEAN',
 *                           'DIO_START_SEC_VAR_INIT_ASIL_B_16',
 *                           'DIO_STOP_SEC_VAR_INIT_ASIL_B_16',
 *                           'DIO_START_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED',
 *                           'DIO_STOP_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED',
 *                           'DIO_START_SEC_CONST_ASIL_B_32',
 *                           'DIO_STOP_SEC_CONST_ASIL_B_32',
 *                           'DIO_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED',
 *                           'DIO_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED',
 *                           'DIO_START_SEC_CODE_ASIL_B' and
 *                           'DIO_STOP_SEC_CODE_ASIL_B'.
 *                        b) Copyright information has been updated.
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
#define DIO_MEMMAP_AR_RELEASE_MAJOR_VERSION      4
#define DIO_MEMMAP_AR_RELEASE_MINOR_VERSION      2
#define DIO_MEMMAP_AR_RELEASE_REVISION_VERSION   2

/*
 * File version information
 */
#define DIO_MEMMAP_SW_MAJOR_VERSION   1
#define DIO_MEMMAP_SW_MINOR_VERSION   0
#define DIO_MEMMAP_SW_PATCH_VERSION   0

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
/*                            DIO                                             */
/* -------------------------------------------------------------------------- */

#elif defined (DIO_START_SEC_VAR_INIT_BOOLEAN)
   #ifdef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_BOOLEAN_SEC_STARTED
     #undef  DIO_START_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_START_SEC_VAR_1BIT
   #endif
#elif defined (DIO_STOP_SEC_VAR_INIT_BOOLEAN)
   #ifndef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_BOOLEAN_SEC_STARTED
     #undef  DIO_STOP_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_STOP_SEC_VAR_1BIT
   #endif

#elif defined (DIO_START_SEC_VAR_INIT_16)
   #ifdef VAR_INIT_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_INIT_16_SEC_STARTED
     #undef  DIO_START_SEC_VAR_INIT_16
     #define DEFAULT_START_SEC_VAR_INIT_16BIT
   #endif
#elif defined (DIO_STOP_SEC_VAR_INIT_16)
   #ifndef VAR_INIT_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_INIT_16_SEC_STARTED
     #undef  DIO_STOP_SEC_VAR_INIT_16
     #define DEFAULT_STOP_SEC_VAR_INIT_16BIT
   #endif

#elif defined (DIO_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  DIO_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (DIO_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  DIO_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (DIO_START_SEC_CONST_32)
   #ifdef CONST_32_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONST_32_SEC_STARTED
     #undef  DIO_START_SEC_CONST_32
     #define DEFAULT_START_SEC_CONST_32BIT
   #endif
#elif defined (DIO_STOP_SEC_CONST_32)
   #ifndef CONST_32_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONST_32_SEC_STARTED
     #undef  DIO_STOP_SEC_CONST_32
     #define DEFAULT_STOP_SEC_CONST_32BIT
   #endif

#elif defined (DIO_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  DIO_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".DIO_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (DIO_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  DIO_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (DIO_START_SEC_CODE)
   #ifdef CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CODE_SEC_STARTED
     #undef  DIO_START_SEC_CODE
     #pragma ghs section text=".DIO_CODE_ROM"
   #endif
#elif defined (DIO_STOP_SEC_CODE)
   #ifndef CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  CODE_SEC_STARTED
     #undef  DIO_STOP_SEC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

/* -------------------------------------------------------------------------- */
/* End of module section mapping                                              */
/* -------------------------------------------------------------------------- */
#else
  #error "Dio_MemMap.h: No valid section define found"
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

#elif defined (DEFAULT_START_SEC_VAR_INIT_16BIT)
   #undef      DEFAULT_START_SEC_VAR_INIT_16BIT
   #pragma ghs startsda
   #pragma ghs section sdata=".RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_INIT_16BIT)
   #undef      DEFAULT_STOP_SEC_VAR_INIT_16BIT
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

#elif defined (DEFAULT_SPI_LOC_DATARAM1_START)
   #undef      DEFAULT_SPI_LOC_DATARAM1_START
   #pragma ghs startsda
   #pragma ghs section sdata=".LOCAL_RAM_AREA1"
#elif defined (DEFAULT_SPI_LOC_DATARAM1_STOP)
   #undef      DEFAULT_SPI_LOC_DATARAM1_STOP
   #pragma ghs section sdata=default
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

#elif defined (DEFAULT_START_SEC_CODE_LOCAL)
   #undef      DEFAULT_START_SEC_CODE_LOCAL
   #pragma ghs section text=".DEFAULT_CODE_ROM_LOCAL"
#elif defined (DEFAULT_STOP_SEC_CODE_LOCAL)
   #undef      DEFAULT_STOP_SEC_CODE_LOCAL
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
