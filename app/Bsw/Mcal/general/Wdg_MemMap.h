/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Wdg_MemMap.h                                                */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2020 Renesas Electronics Corporation                     */
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
 * V1.0.0:  26-Oct-2016  : Initial Version
 * V1.0.1:  17-Jan-2016  : Updated after #ARDAABD-408
 *                         VAR_NOINIT_16BIT  changed to VAR_NOINIT_16
 * V1.0.2:  04-Aug-2017  : Following changes are made:
 *                         1. As part ARDAABD-1494, removed SPI related
 *                            memory sections  from Default Section Mapping
 * V1.0.3:  06-Jun-2018  : Following changes are made:
 *                         1. As part of merging activity, #ARDAABD-3474
 *                         a. Removed unused memory sections like
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_
 *                            NOINIT_32,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_FAST_
 *                            UNSPECIFIED,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_CONFIG_VAR_
 *                            NOINIT_UNSPECIFIED,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_CONST_
 *                            BOOLEAN,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_CONST_8,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_CONST_16,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_CONST_32,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_CONST
 *                            _UNSPECIFIED,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_BOOLEAN,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_NOINIT
 *                            _BOOLEAN,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_FAST
 *                            _BOOLEAN,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_16,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_32,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_FAST_8,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_FAST_16,
 *                            WDG_59_DRIVERA/B/C_START/STOP_SEC_VAR_FAST_32.
 *                         b. WDG_59_DRIVERA_START/STOP_SEC_VAR_8 was renamed
 *                            as WDG_59_DRIVERA_START/STOP_SEC_VAR_INIT_8
 *                         c. WDG_59_DRIVERA_START/STOP_SEC_DBTOC_DATA_
 *                            UNSPECIFIED has been removed and mapped the
 *                            variables to WDG_59_DRIVERA_START/STOP_SEC_
 *                            CONFIG_DATA_UNSPECIFIED, Ref: ARDAABD-908.
 *                         2. As part of ARDAABD-3728,
 *                         a. WDG_59_DRIVERC_START/STOP_SEC_VAR_8 was renamed
 *                            as WDG_59_DRIVERC_START/STOP_SEC_VAR_INIT_8
 *                         b. WDG_59_DRIVERC_START/STOP_SEC_DBTOC_DATA_
 *                            UNSPECIFIED has been removed and mapped the
 *                            variables to WDG_59_DRIVERC_START/STOP_SEC_
 *                            CONFIG_DATA_UNSPECIFIED.
 * V1.0.4:  25-Sep-2020 :  As part of ARDAABD-4733, added the prefix "WDG_"
 *                         for version information.
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
#define WDG_MEMMAP_AR_RELEASE_MAJOR_VERSION      4
#define WDG_MEMMAP_AR_RELEASE_MINOR_VERSION      2
#define WDG_MEMMAP_AR_RELEASE_REVISION_VERSION   2

/*
 * File version information
 */
#define WDG_MEMMAP_SW_MAJOR_VERSION   1
#define WDG_MEMMAP_SW_MINOR_VERSION   0
#define WDG_MEMMAP_SW_PATCH_VERSION   0

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
 * This first #ifdef makes integration of delivered parts of WDG_MemMap.h
 * easier because every supplier starts with #elif
 */
#if defined (START_WITH_IF)

/* -------------------------------------------------------------------------- */
/*             WDG DRIVER A                                                   */
/* -------------------------------------------------------------------------- */

#elif defined (WDG_59_DRIVERA_START_SEC_VAR_INIT_8)
   #ifdef VAR_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_8_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_VAR_INIT_8
     #define DEFAULT_START_SEC_VAR_8BIT
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_VAR_INIT_8)
   #ifndef VAR_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_8_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_VAR_INIT_8
     #define DEFAULT_STOP_SEC_VAR_8BIT
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_VAR_NO_INIT_8)
   #ifdef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_8_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_VAR_NO_INIT_8
     #define DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_VAR_NO_INIT_8)
   #ifndef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_8_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_VAR_NO_INIT_8
     #define DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_VAR_NO_INIT_16)
   #ifdef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_16_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_VAR_NO_INIT_16
     #define DEFAULT_START_SEC_VAR_NOINIT_16BIT
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_VAR_NO_INIT_16)
   #ifndef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_16_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_VAR_NO_INIT_16
     #define DEFAULT_STOP_SEC_VAR_NOINIT_16BIT
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_A_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_PUBLIC_CODE)
   #ifdef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PUBLIC_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_PUBLIC_CODE
     #pragma ghs section text=".WDG59_A_PUBLIC_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_PUBLIC_CODE)
   #ifndef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PUBLIC_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_PUBLIC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_PRIVATE_CODE)
   #ifdef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PRIVATE_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_PRIVATE_CODE
     #pragma ghs section text=".WDG59_A_PRIVATE_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_PRIVATE_CODE)
   #ifndef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PRIVATE_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_PRIVATE_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_APPL_CODE)
   #ifdef APPL_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define APPL_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_APPL_CODE
     #pragma ghs section text=".WDG59_A_APPL_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_APPL_CODE)
   #ifndef APPL_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  APPL_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_APPL_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERA_START_SEC_CODE_FAST)
   #ifdef ISR_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define ISR_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_START_SEC_CODE_FAST
     #pragma ghs section text=".WDG_59_DRIVERA_FAST_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERA_STOP_SEC_CODE_FAST)
   #ifndef ISR_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  ISR_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERA_STOP_SEC_CODE_FAST
     #define DEFAULT_STOP_SEC_CODE
   #endif

/* -------------------------------------------------------------------------- */
/*             WDG DRIVER B                                                   */
/* -------------------------------------------------------------------------- */
#elif defined (WDG_59_DRIVERB_START_SEC_VAR_INIT_8)
   #ifdef VAR_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_8_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_VAR_INIT_8
     #define DEFAULT_START_SEC_VAR_8BIT
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_VAR_INIT_8)
   #ifndef VAR_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_8_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_VAR_INIT_8
     #define DEFAULT_STOP_SEC_VAR_8BIT
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_VAR_NO_INIT_8)
   #ifdef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_8_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_VAR_NO_INIT_8
     #define DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_VAR_NO_INIT_8)
   #ifndef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_8_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_VAR_NO_INIT_8
     #define DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_VAR_NO_INIT_16)
   #ifdef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_16_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_VAR_NO_INIT_16
     #define DEFAULT_START_SEC_VAR_NOINIT_16BIT
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_VAR_NO_INIT_16)
   #ifndef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_16_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_VAR_NO_INIT_16
     #define DEFAULT_STOP_SEC_VAR_NOINIT_16BIT
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_B_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_PUBLIC_CODE)
   #ifdef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PUBLIC_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_PUBLIC_CODE
     #pragma ghs section text=".WDG59_B_PUBLIC_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_PUBLIC_CODE)
   #ifndef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PUBLIC_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_PUBLIC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_PRIVATE_CODE)
   #ifdef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PRIVATE_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_PRIVATE_CODE
     #pragma ghs section text=".WDG59_B_PRIVATE_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_PRIVATE_CODE)
   #ifndef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PRIVATE_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_PRIVATE_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_APPL_CODE)
   #ifdef APPL_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define APPL_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_APPL_CODE
     #pragma ghs section text=".WDG59_B_APPL_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_APPL_CODE)
   #ifndef APPL_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  APPL_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_APPL_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERB_START_SEC_CODE_FAST)
   #ifdef ISR_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define ISR_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_START_SEC_CODE_FAST
     #pragma ghs section text=".WDG_59_DRIVERB_FAST_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERB_STOP_SEC_CODE_FAST)
   #ifndef ISR_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  ISR_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERB_STOP_SEC_CODE_FAST
     #define DEFAULT_STOP_SEC_CODE
   #endif

/* -------------------------------------------------------------------------- */
/*             WDG DRIVER C                                                   */
/* -------------------------------------------------------------------------- */

#elif defined (WDG_59_DRIVERC_START_SEC_VAR_INIT_8)
   #ifdef VAR_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_8_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_VAR_INIT_8
     #define DEFAULT_START_SEC_VAR_8BIT
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_VAR_INIT_8)
   #ifndef VAR_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_8_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_VAR_INIT_8
     #define DEFAULT_STOP_SEC_VAR_8BIT
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_VAR_NO_INIT_8)
   #ifdef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_8_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_VAR_NO_INIT_8
     #define DEFAULT_START_SEC_VAR_NOINIT_8BIT
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_VAR_NO_INIT_8)
   #ifndef VAR_NOINIT_8_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_8_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_VAR_NO_INIT_8
     #define DEFAULT_STOP_SEC_VAR_NOINIT_8BIT
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_VAR_NO_INIT_16)
   #ifdef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_16_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_VAR_NO_INIT_16
     #define DEFAULT_START_SEC_VAR_NOINIT_16BIT
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_VAR_NO_INIT_16)
   #ifndef VAR_NOINIT_16_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_16_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_VAR_NO_INIT_16
     #define DEFAULT_STOP_SEC_VAR_NOINIT_16BIT
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".WDG59_C_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_PUBLIC_CODE)
   #ifdef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PUBLIC_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_PUBLIC_CODE
     #pragma ghs section text=".WDG59_C_PUBLIC_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_PUBLIC_CODE)
   #ifndef PUBLIC_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PUBLIC_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_PUBLIC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_PRIVATE_CODE)
   #ifdef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define PRIVATE_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_PRIVATE_CODE
     #pragma ghs section text=".WDG59_C_PRIVATE_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_PRIVATE_CODE)
   #ifndef PRIVATE_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  PRIVATE_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_PRIVATE_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_APPL_CODE)
   #ifdef APPL_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define APPL_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_APPL_CODE
     #pragma ghs section text=".WDG59_C_APPL_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_APPL_CODE)
   #ifndef APPL_CODE_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  APPL_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_APPL_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

#elif defined (WDG_59_DRIVERC_START_SEC_CODE_FAST)
   #ifdef ISR_CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define ISR_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_START_SEC_CODE_FAST
     #pragma ghs section text=".WDG_59_DRIVERC_FAST_CODE_ROM"
   #endif
#elif defined (WDG_59_DRIVERC_STOP_SEC_CODE_FAST)
   #ifndef ISR_CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  ISR_CODE_SEC_STARTED
     #undef  WDG_59_DRIVERC_STOP_SEC_CODE_FAST
     #define DEFAULT_STOP_SEC_CODE
   #endif

/* -------------------------------------------------------------------------- */
/* End of module section mapping                                              */
/* -------------------------------------------------------------------------- */
#else
  #error "Wdg_MemMap.h: No valid section define found"
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
