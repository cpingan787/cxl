/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Port_MemMap.h                                               */
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
 * V1.0.0:  15-Nov-2016  : Initial Version
 * V1.0.1:  24-Nov-2016  : As part of ARDAABC-542 Jira ticket, the following
 *                         updates were made:
 *                         1. Removed sections that do not Apply to Port module.
 *                         1. Removed memory section duplicates.
 *                         2. Removed "PUBLIC" from section names and section
 *                            open/close.
 *                         3. Removed PORT_START_SEC_CONFIG_CONST_UNSPECIFIED
 *                            and PORT_STOP_SEC_CONFIG_CONST_UNSPECIFIED
 *                            sections.
 *                            PORT_START_SEC_CONST_ASIL_B_UNSPECIFIED and
 *                            PORT_STOP_SEC_CONST_ASIL_B_UNSPECIFIED will be
 *                            used instead.
 * V1.0.2:  14-Jun-2017  : As per JIRA ARDAABD-1494, following changes are made:
 *                         1. #ifdef is changed to #ifndef and Removed duplicate
 *                            sections.
 *                         2. Copyright information is updated.
 * V1.0.3:  23-Aug-2017  : As part of ARDAABD-1494, Removed the unused memory
 *                         sections.
 * V1.0.4:  05-JuL-2019  : As part of ARDAABD-4140, following changes are made:
 *                         1. Change
 *                            PORT_START_SEC_VAR_ASIL_B_NO_INIT_UNSPECIFIED to
 *                            PORT_START_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED.
 *                         2. Copyright was updated.
 * V1.0.5:  28-Sep-2020 :  As part of ARDAABD-4733, added the prefix "PORT_"
 *                          for version information.
 * V1.0.6:  31-Mar-2021 : As part of ARDAABD-5045, the following changes are
 *                        made:
 *                        a) Removed 'ASIL_B' from the definition of memory
 *                        sections 'PORT_START_SEC_VAR_INIT_ASIL_B_BOOLEAN',
 *                        'PORT_STOP_SEC_VAR_INIT_ASIL_B_BOOLEAN',
 *                        'PORT_START_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED',
 *                        'PORT_STOP_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED',
 *                        'PORT_START_SEC_CONST_ASIL_B_UNSPECIFIED',
 *                        'PORT_STOP_SEC_CONST_ASIL_B_UNSPECIFIED',
 *                        'PORT_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED',
 *                        'PORT_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED',
 *                        'PORT_START_SEC_CODE_ASIL_B' and
 *                        'PORT_STOP_SEC_CODE_ASIL_B'.
 *                        b) Copyright information has been updated.
 *                        c) 'Module' is updated in file banner.
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
#define PORT_MEMMAP_AR_RELEASE_MAJOR_VERSION      4
#define PORT_MEMMAP_AR_RELEASE_MINOR_VERSION      2
#define PORT_MEMMAP_AR_RELEASE_REVISION_VERSION   2

/*
 * File version information
 */
#define PORT_MEMMAP_SW_MAJOR_VERSION   1
#define PORT_MEMMAP_SW_MINOR_VERSION   0
#define PORT_MEMMAP_SW_PATCH_VERSION   0

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
/*             PORT                                                           */
/* -------------------------------------------------------------------------- */

#elif defined (PORT_START_SEC_VAR_INIT_BOOLEAN)
   #ifdef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_BOOLEAN_SEC_STARTED
     #undef  PORT_START_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_START_SEC_VAR_1BIT
   #endif
#elif defined (PORT_STOP_SEC_VAR_INIT_BOOLEAN)
   #ifndef VAR_BOOLEAN_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_BOOLEAN_SEC_STARTED
     #undef  PORT_STOP_SEC_VAR_INIT_BOOLEAN
     #define DEFAULT_STOP_SEC_VAR_1BIT
   #endif

#elif defined (PORT_START_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifdef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  PORT_START_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #endif
#elif defined (PORT_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
   #ifndef VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  VAR_NOINIT_UNSPECIFIED_SEC_STARTED
     #undef  PORT_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
     #define DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #endif

#elif defined (PORT_START_SEC_CONST_UNSPECIFIED)
   #ifdef CONST_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONST_UNSPECIFIED_SEC_STARTED
     #undef  PORT_START_SEC_CONST_UNSPECIFIED
     #define DEFAULT_START_SEC_CONST_UNSPECIFIED
   #endif
#elif defined (PORT_STOP_SEC_CONST_UNSPECIFIED)
   #ifndef CONST_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONST_UNSPECIFIED_SEC_STARTED
     #undef  PORT_STOP_SEC_CONST_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (PORT_START_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifdef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  PORT_START_SEC_CONFIG_DATA_UNSPECIFIED
     #pragma ghs startsda
     #pragma ghs section rosdata=".PORT_CFG_DATA_UNSPECIFIED"
   #endif
#elif defined (PORT_STOP_SEC_CONFIG_DATA_UNSPECIFIED)
   #ifndef CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #error "Memory section is not started"
   #else
     #undef  CONFIG_DATA_UNSPECIFIED_SEC_STARTED
     #undef  PORT_STOP_SEC_CONFIG_DATA_UNSPECIFIED
     #define DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #endif

#elif defined (PORT_START_SEC_CODE)
   #ifdef CODE_SEC_STARTED
     #error "Memory section is not stopped"
   #else
     #define CODE_SEC_STARTED
     #undef  PORT_START_SEC_CODE
     #pragma ghs section text=".PORT_CODE_ROM"
   #endif
#elif defined (PORT_STOP_SEC_CODE)
   #ifndef CODE_SEC_STARTED
      #error "Memory section is not started"
   #else
     #undef  CODE_SEC_STARTED
     #undef  PORT_STOP_SEC_CODE
     #define DEFAULT_STOP_SEC_CODE
   #endif

/* -------------------------------------------------------------------------- */
/* End of module section mapping                                              */
/* -------------------------------------------------------------------------- */
#else
  #error "Port_MemMap.h: No valid section define found"
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
#elif defined (DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED)
   #undef      DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
   #pragma ghs startsda
   #pragma ghs section sbss=".NOINIT_RAM_UNSPECIFIED"
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED)
   #undef      DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED
   #pragma ghs section sbss=default
   #pragma ghs endsda

/* -------------------------------------------------------------------------- */
/* ROM constants                                                              */
/* -------------------------------------------------------------------------- */
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
