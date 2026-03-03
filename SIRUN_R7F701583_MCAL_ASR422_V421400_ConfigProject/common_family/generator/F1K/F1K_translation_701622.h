/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = F1K_translation_701622.h                                    */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015 - 2019 Renesas Electronics Corporation                   */
/*============================================================================*/
/* Purpose:                                                                   */
/* This translation file maps device file macros with user defined            */
/* (RENESAS_SCIT) macros.  Generator uses this translation file in order to   */
/* avoid hard coding of base addresses or the usage of device header file     */
/* macros directly.                                                           */
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
/*              Devices:        R7F701622                                     */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:   07-Sep-2015  : Initial version.
 * V1.0.1:   29-Sep-2015  : The following changes are made:
 *                          1. The macros for INTP vectors and offset of
 *                          respective filter register are added as part of ICU
 *                          module.
 *                          2. The interrupt vector values for the ADC module
 *                          and respective DMA interrupt vector are corrected.
 *                          3. The unwanted DMa macro from ADC module section
 *                          are removed.
 *                          4. Macro required for the GPT module are added.
 *                          5. The macro for the unsupported PWM Diag channels
 *                          interrupt vector are corrected.
 *                          6. The comments are corrected for the number of pins
 *                          of the device.
 * V1.0.2:   14-Oct-2015  : Macro required for the LIN, FLS, SPI and CAN modules
 *                          are added.
 * V1.0.3:   14-Dec-2015  : As part of F1K Ver4.00.01 release, the macros
 *                          RENESAS_ADC_DEVICE and RENESAS_MAX_DIAG_CHANNEL are
 *                          added for ADC module and renamed macros for DMA
 *                          driver.
 * V1.0.4:   06-Jan-2016  : The following changes are made:
 *                          1. As part of JIRA ARDAAGA-21 LIST OF
 *                          AVAILABLE REGISTERS is corrected.
 *                          2. Macro PORT_DNFAEN_REG_AVAILABLE,
 *                          PORT_RENESAS_IOHOLD, PORT_RENESAS_PROTCMD0,
 *                          PORT_RENESAS_PROTS0  is added.
 *                          3. Macros for LIST OF PORT GROUPS SUPPORTING
 *                          DEEPSTOP MODE is added.
 *                          4. Added Macros RENESAS_MOSCE and RENESAS_ROSCE
 *                          5. 'RENESAS_ICRCANGRECC1_IMR' and
 *                          'RENESAS_ICRCANGRECC0_IMR' are added.
 *                          6. 'RENESAS_RSCAN_MAX_RAMPAGES_R7F701587' is added.
 *                          7. 'F1X_PREMIUM_DEVICE' macro is added.
 * V2.0.0:  28-Oct-2016   : Switch from PE to VCI registers
 * V2.0.1:  04-Nov-2016   : As part of JIRA ARDAABD-714 : Add suffixes for VCI
 *                          registers
 * V2.0.2:  06-Dec-2016   : Update section "Macros for PWM and  ICU Drivers"
 *                          #ARDAABD-862
 * V2.0.3:  31-Jan-2017   : As part of ARDAABD-714 added suffix for
 *                          RENESAS_CF1STERSTR_VCI register
 * V2.0.4:  09-Feb-2017   #ARDAABD-891
 *                         1. Development branches merged
 * V2.1.0  02-Mar-2017    : #ARDAABD-1071
 *                          1. Added Can related macro defines.
 * V2.1.1:  24-May-2017   : Added macros for DIO driver .
 * V2.1.2:  21-Jul-2017   : Added macros for DMA and corrected CSIH macros.
 * V2.1.3:  14-Aug-2017   :1. Added macros to get the number of Timer units for
 *                           ICU, GPT and PWM.
 *                         2.Macros are added for ADC for F1K/F1KM specific
 *                           functionalities
 *                         3.Macros are added for SPI for F1K/F1KM specific
 *                           functionalities
 *                         4.Macros are added for PORT for F1K/F1KM specific
 *                           functionalities.
 * V2.1.4:  22-Jan-2018   :1. Added macros for RxFifo reg 7 for CAN
 * V2.1.5:  14-May-2018   : Following Changes are made:
 *                          1. As part of merging activity, #ARDAABD-3474
 *                             a. Added macros for WDG driver, Ref:ARDAABD-2158.
 *                          2. As part of merging activity, #ARDAABD-3456
 *                             a. Added macros for CAN driver, Ref:ARDAABD-2158.
 *                          3. As part of merging activity, #ARDAABD-3454
 *                             a. Removed IMR macros and added ICR macros for
 *                                PWM driver.
 *                                Ref:ARDAABD-2158.
 *                          4. As part of merging activity, #ARDAABD-3472
 *                             a. List of not supported alternative modes of
 *                                Port Driver is updated. Ref:ARDAABD-2158.
 *                          5. As part of merging activity, #ARDAABD-3452
 *                             a. Removed IMR macros for ADC driver.
 *                                Ref:ARDAABD-2158.
 *                          6. As part of merging activity, #ARDAABD-3488
 *                             a. Removed IMR macros and added ICR macros for
 *                                LIN driver.Ref:ARDAABD-2158.
 *                          7. As part of #ARDAABD-3614, added memory range
 *                             macros for RAMTST.
 *                          8. As part of ARDAABD-2415,added device specific
 *                             macro for MCU driver.
 *                          9. As part of ARDAABD-2047, RENESAS_RSCAN0CFDRPGACC0
 *                             macro is added.
 * V2.1.6:  15-Jun-2018  : As part of merging activity #ARDAABD-3120,
 *                         Following changes are made:
 *                         1.Define the sub container name for TCODE.
 * V2.1.7:  16-Oct-2019  : Updated macros used for SPI, CAN, FR.
 * 
 */
/******************************************************************************/
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
#define F1X_PREMIUM_DEVICE 1
#define RENESAS_F1X_DEVICE   F1K

/* EXTERNAL INTERRUPT EDGE DETECTION REGISTERS */
#define RENESAS_FCLA0CTL0_ADC0      FCLA0CTL0_ADC0
#define RENESAS_FCLA0CTL0_ADC1      FCLA0CTL0_ADC1
#define RENESAS_FCLA0CTL1_ADC0      FCLA0CTL1_ADC0
#define RENESAS_FCLA0CTL1_ADC1      FCLA0CTL1_ADC1
#define RENESAS_FCLA0CTL2_ADC0      FCLA0CTL2_ADC0
#define RENESAS_FCLA0CTL2_ADC1      FCLA0CTL2_ADC1

#define RENESAS_DNFAADCTL0CTL       DNFAADCTL0CTL
#define RENESAS_DNFAADCTL0EN        DNFAADCTL0EN
#define RENESAS_DNFAADCTL0ENL       DNFAADCTL0ENL
#define RENESAS_DNFAADCTL1CTL       DNFAADCTL1CTL
#define RENESAS_DNFAADCTL1EN        DNFAADCTL1EN
#define RENESAS_DNFAADCTL1ENL       DNFAADCTL1ENL
#define RENESAS_DNFATAUD0ICTL       DNFATAUD0ICTL
#define RENESAS_DNFATAUD0IEN        DNFATAUD0IEN
#define RENESAS_DNFATAUD0IENH       DNFATAUD0IENH
#define RENESAS_DNFATAUD0IENL       DNFATAUD0IENL
#define RENESAS_DNFATAUB0ICTL       DNFATAUB0ICTL
#define RENESAS_DNFATAUB0IEN        DNFATAUB0IEN
#define RENESAS_DNFATAUB0IENH       DNFATAUB0IENH
#define RENESAS_DNFATAUB0IENL       DNFATAUB0IENL
#define RENESAS_DNFATAUB1ICTL       DNFATAUB1ICTL
#define RENESAS_DNFATAUB1IEN        DNFATAUB1IEN
#define RENESAS_DNFATAUB1IENH       DNFATAUB1IENH
#define RENESAS_DNFATAUB1IENL       DNFATAUB1IENL
#define RENESAS_DNFAENCA0ICTL       DNFAENCA0ICTL
#define RENESAS_DNFAENCA0IEN        DNFAENCA0IEN
#define RENESAS_DNFAENCA0IENL       DNFAENCA0IENL

/*******************************************************************************
**                 Macros for WUF Register                                    **
*******************************************************************************/
#define RENESAS_WUF0         STBC_WUF0WUF0
#define RENESAS_WUF_ISO0     STBC_WUFISOWUF_ISO0
#define RENESAS_WUF20        STBC_WUF20WUF20
#define RENESAS_WUFC0        STBC_WUF0WUFC0
#define RENESAS_WUFC_ISO0    STBC_WUFISOWUFC_ISO0
#define RENESAS_WUFC20       STBC_WUF20WUFC20
#define RENESAS_WUFMSK0      STBC_WUF0WUFMSK0
#define RENESAS_WUFMSK_ISO0  STBC_WUFISOWUFMSK_ISO0
#define RENESAS_WUFMSK20     STBC_WUF20WUFMSK20

/*******************************************************************************
**                 Macros for Port Driver                                     **
*******************************************************************************/

/*LIST OF AVAILABLE PORT GROUPS AND PINS */
#define RENESAS_PORTGROUP0_PINS              0-14
#define RENESAS_PORTGROUP1_PINS              0-11
#define RENESAS_PORTGROUP8_PINS              0-12
#define RENESAS_PORTGROUP9_PINS              0-6
#define RENESAS_PORTGROUP10_PINS             0-15
#define RENESAS_PORTGROUP11_PINS             0-15
#define RENESAS_PORTGROUP12_PINS             0-2
#define RENESAS_PORTGROUP18_PINS             0-3
#define RENESAS_PORTGROUP20_PINS             4-5
#define RENESAS_PORTGROUPANALOG0_PINS        0-15
#define RENESAS_PORTGROUPANALOG1_PINS        0-7
#define RENESAS_PORTGROUPJTAG0_PINS          0-6
#define RENESAS_PORTGROUPINPUT0_PINS         0-0

/*LIST OF NOT AVAILABLE PINS */
#define RENESAS_PG0_PINS_UNAVAILBALE        15-15
#define RENESAS_PG1_PINS_UNAVAILBALE        12-15
#define RENESAS_PG8_PINS_UNAVAILBALE        13-15
#define RENESAS_PG9_PINS_UNAVAILBALE        7-15
#define RENESAS_PG12_PINS_UNAVAILBALE       3-15
#define RENESAS_PG18_PINS_UNAVAILBALE       4-15
#define RENESAS_PG20_PINS_UNAVAILBALE       0-3_6-15

/* LIST OF AVAILABLE REGISTERS FOR PORT GROUPS */
/*******************************************************************************
BIT0 - PSR, BIT1 - PIS, BIT2 - PISE, BIT3 - PISA, BIT4 - PIBC, BIT5 - PIPC,
BIT6 - PU, BIT7 - PD, BIT8 -  PBDC BIT9 - PODC, BIT10 - PODCE, BIT11 - PDSC,
BIT12 - PUCC,  BIT13 - PINV, BIT14 - PFCE, BIT15 - PFC, BIT16 - PFCAE,
BIT17 - PMCSR, BIT18 - PMSR, BIT19 - PPROTS BIT20 - PPCMD, BIT21 - NA,
BIT22 - NA, BIT23 - NA, BIT24 - NA, BIT25 - NA, BIT26 - NA, BIT27 - NA,
BIT28 - NA, BIT29 - NA, BIT30 - NA, BIT31 -  NA
*******************************************************************************/
#define RENESAS_PG0_AVAILABLE_REG            0x001FCBF3
#define RENESAS_PG1_AVAILABLE_REG            0x001FCBD3
#define RENESAS_PG8_AVAILABLE_REG            0x001EC3D3
#define RENESAS_PG9_AVAILABLE_REG            0x001EC3D3
#define RENESAS_PG10_AVAILABLE_REG           0x001FCBF3
#define RENESAS_PG11_AVAILABLE_REG           0x001FCBF3
#define RENESAS_PG12_AVAILABLE_REG           0x001FCBD3
#define RENESAS_PG18_AVAILABLE_REG           0x001E8BD3
#define RENESAS_PG20_AVAILABLE_REG           0x001FCBD3

#define RENESAS_PISA_REG_AVAILABLE           0
#define RENESAS_PPCMD_32BIT_REG_AVAILABLE    0x01
#define RENESAS_PPROTS_32BIT_REG_AVAILABLE   0x01
#define PORT_DNFAEN_REG_AVAILABLE            0x01
#define PORT_RENESAS_IOHOLD                  0x01
#define PORT_RENESAS_PROTCMD0                0x01
#define PORT_RENESAS_PROTS0                  0x01

/* LIST OF PORT GROUPS SUPPORTING DEEPSTOP MODE */
#define RENESAS_PG9_DEEPSTOP_SUPP            0x01
#define RENESAS_PG10_DEEPSTOP_SUPP           0x01
#define RENESAS_PG11_DEEPSTOP_SUPP           0x01
#define RENESAS_PG12_DEEPSTOP_SUPP           0x01
#define RENESAS_PG18_DEEPSTOP_SUPP           0x01
#define RENESAS_PG20_DEEPSTOP_SUPP           0x01
#define RENESAS_ANPG1_DEEPSTOP_SUPP          0x01

/* Offset for accessing the Analog filter control registers */
#define RENESAS_FCLA0CTL0_NMI_OFFSET         0x0000
#define RENESAS_FCLA0CTL0_INTPL_OFFSET       0x0020
#define RENESAS_FCLA0CTL1_INTPL_OFFSET       0x0024
#define RENESAS_FCLA0CTL2_INTPL_OFFSET       0x0028
#define RENESAS_FCLA0CTL3_INTPL_OFFSET       0x002C
#define RENESAS_FCLA0CTL4_INTPL_OFFSET       0x0030
#define RENESAS_FCLA0CTL5_INTPL_OFFSET       0x0034
#define RENESAS_FCLA0CTL6_INTPL_OFFSET       0x0038
#define RENESAS_FCLA0CTL7_INTPL_OFFSET       0x003C
#define RENESAS_FCLA0CTL0_INTPH_OFFSET       0x0040
#define RENESAS_FCLA0CTL1_INTPH_OFFSET       0x0044
#define RENESAS_FCLA0CTL2_INTPH_OFFSET       0x0048
#define RENESAS_FCLA0CTL3_INTPH_OFFSET       0x004C
#define RENESAS_FCLA0CTL4_INTPH_OFFSET       0x0050
#define RENESAS_FCLA0CTL5_INTPH_OFFSET       0x0054
#define RENESAS_FCLA0CTL6_INTPH_OFFSET       0x0058
#define RENESAS_FCLA0CTL7_INTPH_OFFSET       0x005C

#define RENESAS_FCLA0CTL0_ADC0_OFFSET        0x0060
#define RENESAS_FCLA0CTL1_ADC0_OFFSET        0x0064
#define RENESAS_FCLA0CTL2_ADC0_OFFSET        0x0068
#define RENESAS_FCLA0CTL0_ADC1_OFFSET        0x0080
#define RENESAS_FCLA0CTL1_ADC1_OFFSET        0x0084
#define RENESAS_FCLA0CTL2_ADC1_OFFSET        0x0088

/* LIST OF NOT SUPPORTED ALTERNATIVE MODES */
/* IF THE MODE IS NOT APPLICABLE/AVAILBLE FOR THIS DEVICE */
/* IT SHOULD BE CAPTURED HERE. */
/* POSSIBLE VALUE IS ONLY 0*/
#define RENESAS_P0_11_RLIN26RX_AT4IN         0
#define RENESAS_P0_12_RLIN26TX_AT4OUT        0
#define RENESAS_P11_3_TAUB1I1_AT3IN          0
#define RENESAS_P11_3_TAUB1O1_AT3OUT         0
#define RENESAS_P11_4_TAUB1I3_AT3IN          0
#define RENESAS_P11_4_TAUB1O3_AT3OUT         0
#define RENESAS_P11_5_TAUB1I5_AT4IN          0
#define RENESAS_P11_5_TAUB1O5_AT4OUT         0
#define RENESAS_P11_6_TAUB1I7_AT4IN          0
#define RENESAS_P11_6_TAUB1O7_AT4OUT         0
#define RENESAS_P11_7_TAUB1I9_AT4IN          0
#define RENESAS_P11_7_TAUB1O9_AT4OUT         0
#define RENESAS_P11_8_TAUB1I11_AT3IN         0
#define RENESAS_P11_8_TAUB1O11_AT3OUT        0
#define RENESAS_P11_9_TAUB1I13_AT3IN         0
#define RENESAS_P11_9_TAUB1O13_AT3OUT        0
#define RENESAS_P11_10_TAUB1I15_AT3IN        0
#define RENESAS_P11_10_TAUB1O15_AT3OUT       0
#define RENESAS_P11_11_TAUB1I0_AT3IN         0
#define RENESAS_P11_11_TAUB1O0_AT3OUT        0
#define RENESAS_P11_12_TAUB1I2_AT3IN         0
#define RENESAS_P11_12_TAUB1O2_AT3OUT        0
#define RENESAS_P11_13_TAUB1I4_AT3IN         0
#define RENESAS_P11_13_TAUB1O4_AT3OUT        0
#define RENESAS_P11_14_TAUB1I6_AT3IN         0
#define RENESAS_P11_14_TAUB1O6_AT3OUT        0
#define RENESAS_P11_15_TAUB1I8_AT3IN         0
#define RENESAS_P11_15_TAUB1O8_AT3OUT        0
#define RENESAS_P12_0_TAUB1I10_AT3IN         0
#define RENESAS_P12_0_TAUB1O10_AT3OUT        0
#define RENESAS_P12_1_TAUB1I12_AT3IN         0
#define RENESAS_P12_1_TAUB1O12_AT3OUT        0
#define RENESAS_P12_2_TAUB1I14_AT3IN         0
#define RENESAS_P12_2_TAUB1O14_AT3OUT        0
#define RENESAS_P18_3_PWGA71O_AT1OUT         0

/*******************************************************************************
**                     Macros for DIO Driver                                  **
*******************************************************************************/

#define RENESAS_P0   PORTGROUP_0_BITS_0_TO_14
#define RENESAS_P1   PORTGROUP_1_BITS_0_TO_11
#define RENESAS_P8   PORTGROUP_8_BITS_0_TO_12
#define RENESAS_P9   PORTGROUP_9_BITS_0_TO_6
#define RENESAS_P10  PORTGROUP_10_BITS_0_TO_15
#define RENESAS_P11  PORTGROUP_11_BITS_0_TO_15
#define RENESAS_P12  PORTGROUP_12_BITS_0_TO_2
#define RENESAS_P18  PORTGROUP_18_BITS_0_TO_3
#define RENESAS_P20  PORTGROUP_20_BITS_4_TO_5
#define RENESAS_AP0  PORTGROUPANALOG_0_BITS_0_TO_15
#define RENESAS_AP1  PORTGROUPANALOG_1_BITS_0_TO_7
#define RENESAS_JP0  PORTGROUPJTAG_0_BITS_0_TO_6
#define RENESAS_IP0  PORTGROUPINPUT_0_BITS_0_TO_0

/*******************************************************************************
**                 Macros for Watchdog Driver                                 **
*******************************************************************************/

#define RENESAS_ICWDTA0_IMR      40
#define RENESAS_ICWDTA1_IMR      41
#define RENESAS_ICWDTA0_ICR      ICWDTA0
#define RENESAS_ICWDTA1_ICR      ICWDTA1

/*******************************************************************************
**              Common Macros for ICU, GPT and PWM Drivers                    **
*******************************************************************************/

#define RENESAS_TAUDUNIT_SUPPORTED                0-0
#define RENESAS_TAUBUNIT_SUPPORTED                0-0
#define RENESAS_TAUJUNIT_SUPPORTED                0-1
#define RENESAS_OSTM_SUPPORTED                    0-4
#define RENESAS_INTP_SUPPORTED                    0-15

/* Interrupt control registers for PWGA */
#define RENESAS_ICPWGA0     ICPWGA0
#define RENESAS_ICPWGA1     ICPWGA1
#define RENESAS_ICPWGA2     ICPWGA2
#define RENESAS_ICPWGA3     ICPWGA3
#define RENESAS_ICPWGA4     ICPWGA4
#define RENESAS_ICPWGA5     ICPWGA5
#define RENESAS_ICPWGA6     ICPWGA6
#define RENESAS_ICPWGA7     ICPWGA7
#define RENESAS_ICPWGA8     ICPWGA8
#define RENESAS_ICPWGA9     ICPWGA9
#define RENESAS_ICPWGA10    ICPWGA10
#define RENESAS_ICPWGA11    ICPWGA11
#define RENESAS_ICPWGA12    ICPWGA12
#define RENESAS_ICPWGA13    ICPWGA13
#define RENESAS_ICPWGA14    ICPWGA14
#define RENESAS_ICPWGA15    ICPWGA15
#define RENESAS_ICPWGA16    ICPWGA16
#define RENESAS_ICPWGA17    ICPWGA17
#define RENESAS_ICPWGA18    ICPWGA18
#define RENESAS_ICPWGA19    ICPWGA19
#define RENESAS_ICPWGA20    ICPWGA20
#define RENESAS_ICPWGA21    ICPWGA21
#define RENESAS_ICPWGA22    ICPWGA22
#define RENESAS_ICPWGA23    ICPWGA23
#define RENESAS_ICPWGA24    ICPWGA24
#define RENESAS_ICPWGA25    ICPWGA25
#define RENESAS_ICPWGA26    ICPWGA26
#define RENESAS_ICPWGA27    ICPWGA27
#define RENESAS_ICPWGA28    ICPWGA28
#define RENESAS_ICPWGA29    ICPWGA29
#define RENESAS_ICPWGA30    ICPWGA30
#define RENESAS_ICPWGA31    ICPWGA31
#define RENESAS_ICPWGA32    ICPWGA32
#define RENESAS_ICPWGA33    ICPWGA33
#define RENESAS_ICPWGA34    ICPWGA34
#define RENESAS_ICPWGA35    ICPWGA35
#define RENESAS_ICPWGA36    ICPWGA36
#define RENESAS_ICPWGA37    ICPWGA37
#define RENESAS_ICPWGA38    ICPWGA38
#define RENESAS_ICPWGA39    ICPWGA39
#define RENESAS_ICPWGA40    ICPWGA40
#define RENESAS_ICPWGA41    ICPWGA41
#define RENESAS_ICPWGA42    ICPWGA42
#define RENESAS_ICPWGA43    ICPWGA43
#define RENESAS_ICPWGA44    ICPWGA44
#define RENESAS_ICPWGA45    ICPWGA45
#define RENESAS_ICPWGA46    ICPWGA46
#define RENESAS_ICPWGA47    ICPWGA47
#define RENESAS_ICPWGA48    ICPWGA48
#define RENESAS_ICPWGA49    ICPWGA49
#define RENESAS_ICPWGA50    ICPWGA50
#define RENESAS_ICPWGA51    ICPWGA51
#define RENESAS_ICPWGA52    ICPWGA52
#define RENESAS_ICPWGA53    ICPWGA53
#define RENESAS_ICPWGA54    ICPWGA54
#define RENESAS_ICPWGA55    ICPWGA55
#define RENESAS_ICPWGA56    ICPWGA56
#define RENESAS_ICPWGA57    ICPWGA57
#define RENESAS_ICPWGA58    ICPWGA58
#define RENESAS_ICPWGA59    ICPWGA59
#define RENESAS_ICPWGA60    ICPWGA60
#define RENESAS_ICPWGA61    ICPWGA61
#define RENESAS_ICPWGA62    ICPWGA62
#define RENESAS_ICPWGA63    ICPWGA63

/*******************************************************************************
**                     Macros for PWM and ICU Drivers                         **
*******************************************************************************/
/* 144 pin device is having 64 PWM diag channels */
#define RENESAS_PWGA_R7F701622        64

/* 176 pin device is having these Timer units for PWM */
#define RENESAS_TAUJ0_AVAILABILITY      1
#define RENESAS_TAUJ1_AVAILABILITY      1
#define RENESAS_TAUD0_AVAILABILITY      1
#define RENESAS_TAUB0_AVAILABILITY      1
#define RENESAS_TAUB1_AVAILABILITY      1
#define RENESAS_PWM_DIAG_CHANNELGROUP_SUPPORT     0
#define RENESAS_PWM_PERIOD_SELECTION_SUPPORT      0
#define RENESAS_TRIGGER_CONTROL_SUPPORT           0
#define RENESAS_DIAG_CHANNELS_AVAILABILITY        0-63

#define RENESAS_INTP0_CTL         RENESAS_FCLA0CTL0_INTPL_OFFSET
#define RENESAS_INTP1_CTL         RENESAS_FCLA0CTL1_INTPL_OFFSET
#define RENESAS_INTP2_CTL         RENESAS_FCLA0CTL2_INTPL_OFFSET
#define RENESAS_INTP3_CTL         RENESAS_FCLA0CTL3_INTPL_OFFSET
#define RENESAS_INTP4_CTL         RENESAS_FCLA0CTL4_INTPL_OFFSET
#define RENESAS_INTP5_CTL         RENESAS_FCLA0CTL5_INTPL_OFFSET
#define RENESAS_INTP6_CTL         RENESAS_FCLA0CTL6_INTPL_OFFSET
#define RENESAS_INTP7_CTL         RENESAS_FCLA0CTL7_INTPL_OFFSET
#define RENESAS_INTP8_CTL         RENESAS_FCLA0CTL0_INTPH_OFFSET
#define RENESAS_INTP9_CTL         RENESAS_FCLA0CTL1_INTPH_OFFSET
#define RENESAS_INTP10_CTL        RENESAS_FCLA0CTL2_INTPH_OFFSET
#define RENESAS_INTP11_CTL        RENESAS_FCLA0CTL3_INTPH_OFFSET
#define RENESAS_INTP12_CTL        RENESAS_FCLA0CTL4_INTPH_OFFSET
#define RENESAS_INTP13_CTL        RENESAS_FCLA0CTL5_INTPH_OFFSET
#define RENESAS_INTP14_CTL        RENESAS_FCLA0CTL6_INTPH_OFFSET
#define RENESAS_INTP15_CTL        RENESAS_FCLA0CTL7_INTPH_OFFSET

#define RENESAS_ICP0_IMR          37
#define RENESAS_ICP1_IMR          38
#define RENESAS_ICP2_IMR          39
#define RENESAS_ICP3_IMR          43
#define RENESAS_ICP4_IMR          44
#define RENESAS_ICP5_IMR          45
#define RENESAS_ICP6_IMR          128
#define RENESAS_ICP7_IMR          129
#define RENESAS_ICP8_IMR          130
#define RENESAS_ICP9_IMR          205
#define RENESAS_ICP10_IMR         46
#define RENESAS_ICP11_IMR         47
#define RENESAS_ICP12_IMR         131
#define RENESAS_ICP13_IMR         206
#define RENESAS_ICP14_IMR         207
#define RENESAS_ICP15_IMR         208

#define RENESAS_TAUD0CMUR0        0xffe200c0UL
#define RENESAS_TAUD0CMUR1        0xffe200c4UL
#define RENESAS_TAUD0CMUR2        0xffe200c8UL
#define RENESAS_TAUD0CMUR3        0xffe200ccUL
#define RENESAS_TAUD0CMUR4        0xffe200d0UL
#define RENESAS_TAUD0CMUR5        0xffe200d4UL
#define RENESAS_TAUD0CMUR6        0xffe200d8UL
#define RENESAS_TAUD0CMUR7        0xffe200dcUL
#define RENESAS_TAUD0CMUR8        0xffe200e0UL
#define RENESAS_TAUD0CMUR9        0xffe200e4UL
#define RENESAS_TAUD0CMUR10       0xffe200e8UL
#define RENESAS_TAUD0CMUR11       0xffe200ecUL
#define RENESAS_TAUD0CMUR12       0xffe200f0UL
#define RENESAS_TAUD0CMUR13       0xffe200f4UL
#define RENESAS_TAUD0CMUR14       0xffe200f8UL
#define RENESAS_TAUD0CMUR15       0xffe200fcUL
#define RENESAS_TAUB0CMUR0        0xffe300c0UL
#define RENESAS_TAUB0CMUR1        0xffe300c4UL
#define RENESAS_TAUB0CMUR2        0xffe300c8UL
#define RENESAS_TAUB0CMUR3        0xffe300ccUL
#define RENESAS_TAUB0CMUR4        0xffe300d0UL
#define RENESAS_TAUB0CMUR5        0xffe300d4UL
#define RENESAS_TAUB0CMUR6        0xffe300d8UL
#define RENESAS_TAUB0CMUR7        0xffe300dcUL
#define RENESAS_TAUB0CMUR8        0xffe300e0UL
#define RENESAS_TAUB0CMUR9        0xffe300e4UL
#define RENESAS_TAUB0CMUR10       0xffe300e8UL
#define RENESAS_TAUB0CMUR11       0xffe300ecUL
#define RENESAS_TAUB0CMUR12       0xffe300f0UL
#define RENESAS_TAUB0CMUR13       0xffe300f4UL
#define RENESAS_TAUB0CMUR14       0xffe300f8UL
#define RENESAS_TAUB0CMUR15       0xffe300fcUL
#define RENESAS_TAUB1CMUR0        0xffe310c0UL
#define RENESAS_TAUB1CMUR1        0xffe310c4UL
#define RENESAS_TAUB1CMUR2        0xffe310c8UL
#define RENESAS_TAUB1CMUR3        0xffe310ccUL
#define RENESAS_TAUB1CMUR4        0xffe310d0UL
#define RENESAS_TAUB1CMUR5        0xffe310d4UL
#define RENESAS_TAUB1CMUR6        0xffe310d8UL
#define RENESAS_TAUB1CMUR7        0xffe310dcUL
#define RENESAS_TAUB1CMUR8        0xffe310e0UL
#define RENESAS_TAUB1CMUR9        0xffe310e4UL
#define RENESAS_TAUB1CMUR10       0xffe310e8UL
#define RENESAS_TAUB1CMUR11       0xffe310ecUL
#define RENESAS_TAUB1CMUR12       0xffe310f0UL
#define RENESAS_TAUB1CMUR13       0xffe310f4UL
#define RENESAS_TAUB1CMUR14       0xffe310f8UL
#define RENESAS_TAUB1CMUR15       0xffe310fcUL
#define RENESAS_TAUJ0CMUR0        0xffe50020UL
#define RENESAS_TAUJ0CMUR1        0xffe50024UL
#define RENESAS_TAUJ0CMUR2        0xffe50028UL
#define RENESAS_TAUJ0CMUR3        0xffe5002cUL
#define RENESAS_TAUJ1CMUR0        0xffe51020UL
#define RENESAS_TAUJ1CMUR1        0xffe51024UL
#define RENESAS_TAUJ1CMUR2        0xffe51028UL
#define RENESAS_TAUJ1CMUR3        0xffe5102cUL
#define RENESAS_TAUD0CDR0         0xffe20000UL
#define RENESAS_TAUD0CDR1         0xffe20004UL
#define RENESAS_TAUD0CDR2         0xffe20008UL
#define RENESAS_TAUD0CDR3         0xffe2000cUL
#define RENESAS_TAUD0CDR4         0xffe20010UL
#define RENESAS_TAUD0CDR5         0xffe20014UL
#define RENESAS_TAUD0CDR6         0xffe20018UL
#define RENESAS_TAUD0CDR7         0xffe2001cUL
#define RENESAS_TAUD0CDR8         0xffe20020UL
#define RENESAS_TAUD0CDR9         0xffe20024UL
#define RENESAS_TAUD0CDR10        0xffe20028UL
#define RENESAS_TAUD0CDR11        0xffe2002cUL
#define RENESAS_TAUD0CDR12        0xffe20030UL
#define RENESAS_TAUD0CDR13        0xffe20034UL
#define RENESAS_TAUD0CDR14        0xffe20038UL
#define RENESAS_TAUD0CDR15        0xffe2003cUL
#define RENESAS_TAUB0CDR0         0xffe30000UL
#define RENESAS_TAUB0CDR1         0xffe30004UL
#define RENESAS_TAUB0CDR2         0xffe30008UL
#define RENESAS_TAUB0CDR3         0xffe3000cUL
#define RENESAS_TAUB0CDR4         0xffe30010UL
#define RENESAS_TAUB0CDR5         0xffe30014UL
#define RENESAS_TAUB0CDR6         0xffe30018UL
#define RENESAS_TAUB0CDR7         0xffe3001cUL
#define RENESAS_TAUB0CDR8         0xffe30020UL
#define RENESAS_TAUB0CDR9         0xffe30024UL
#define RENESAS_TAUB0CDR10        0xffe30028UL
#define RENESAS_TAUB0CDR11        0xffe3002cUL
#define RENESAS_TAUB0CDR12        0xffe30030UL
#define RENESAS_TAUB0CDR13        0xffe30034UL
#define RENESAS_TAUB0CDR14        0xffe30038UL
#define RENESAS_TAUB0CDR15        0xffe3003cUL
#define RENESAS_TAUB1CDR0         0xffe31000UL
#define RENESAS_TAUB1CDR1         0xffe31004UL
#define RENESAS_TAUB1CDR2         0xffe31008UL
#define RENESAS_TAUB1CDR3         0xffe3100cUL
#define RENESAS_TAUB1CDR4         0xffe31010UL
#define RENESAS_TAUB1CDR5         0xffe31014UL
#define RENESAS_TAUB1CDR6         0xffe31018UL
#define RENESAS_TAUB1CDR7         0xffe3101cUL
#define RENESAS_TAUB1CDR8         0xffe31020UL
#define RENESAS_TAUB1CDR9         0xffe31024UL
#define RENESAS_TAUB1CDR10        0xffe31028UL
#define RENESAS_TAUB1CDR11        0xffe3102cUL
#define RENESAS_TAUB1CDR12        0xffe31030UL
#define RENESAS_TAUB1CDR13        0xffe31034UL
#define RENESAS_TAUB1CDR14        0xffe31038UL
#define RENESAS_TAUB1CDR15        0xffe3103cUL
#define RENESAS_TAUJ0CDR0         0xffe50000UL
#define RENESAS_TAUJ0CDR1         0xffe50004UL
#define RENESAS_TAUJ0CDR2         0xffe50008UL
#define RENESAS_TAUJ0CDR3         0xffe5000cUL
#define RENESAS_TAUJ1CDR0         0xffe51000UL
#define RENESAS_TAUJ1CDR1         0xffe51004UL
#define RENESAS_TAUJ1CDR2         0xffe51008UL
#define RENESAS_TAUJ1CDR3         0xffe5100cUL
#define RENESAS_FCLA0CTL0_NMI     0xffc34000UL
#define RENESAS_FCLA0CTL0_INTPL   0xffc34020UL
#define RENESAS_FCLA0CTL1_INTPL   0xffc34024UL
#define RENESAS_FCLA0CTL2_INTPL   0xffc34028UL
#define RENESAS_FCLA0CTL3_INTPL   0xffc3402cUL
#define RENESAS_FCLA0CTL4_INTPL   0xffc34030UL
#define RENESAS_FCLA0CTL5_INTPL   0xffc34034UL
#define RENESAS_FCLA0CTL6_INTPL   0xffc34038UL
#define RENESAS_FCLA0CTL7_INTPL   0xffc3403cUL
#define RENESAS_FCLA0CTL0_INTPH   0xffc34040UL
#define RENESAS_FCLA0CTL1_INTPH   0xffc34044UL
#define RENESAS_FCLA0CTL2_INTPH   0xffc34048UL
#define RENESAS_FCLA0CTL3_INTPH   0xffc3404cUL
#define RENESAS_FCLA0CTL4_INTPH   0xffc34050UL
#define RENESAS_FCLA0CTL5_INTPH   0xffc34054UL
#define RENESAS_FCLA0CTL6_INTPH   0xffc34058UL
#define RENESAS_FCLA0CTL7_INTPH   0xffc3405cUL


/*******************************************************************************
**                     Macros for MCU Drivers                                 **
*******************************************************************************/

#define MCU_TOTAL_SEQUENCER_TAUJ_INSTANCES      1
#define MCU_TOTAL_BACKUP_PORT_INSTANCES         13
#define MCU_TOTAL_CLK_SRC_REG_INSTANCES         12
#define MCU_TOTAL_CLK_SRC_ACTVC_REG_INSTANCES   12
#define MCU_TOTAL_CLK_DIV_REG_INSTANCES         8
#define MCU_TOTAL_CLK_DIV_ACTV_REG_INSTANCES    8
#define MCU_TOTAL_CLK_STPMSK_INSTANCES          8

#define RENESAS_CPU_LOCAL_RAM   4273897472_4273930239
#define RENESAS_CPU_RETEN_RAM   4273930240_4273995775
#define RENESAS_LOCAL_RAM_SELF  4275994624_4276027391
#define RENESAS_RETEN_RAM_SELF  4276027392_4276092927
/* Interrupt control register for ICCWEND */
#define RENESAS_LPS_ICCWEND_IMR    112

#define RENESAS_MOSCE        MOSCE
#define RENESAS_ROSCE        ROSCE
#define RENESAS_DEVICE_PIN                        F1K_144PIN

/*******************************************************************************
**                 Macros for ADC Driver                                      **
*******************************************************************************/
#define RENESAS_ADC_DEVICE       F1K

#define RENESAS_ICADCA0I1_DMA    4
#define RENESAS_ICADCA0I2_DMA    5
#define RENESAS_ICADCA0I3_DMA    6
#define RENESAS_ICADCA0I4_DMA    7
#define RENESAS_ICQFULL_ISR      91


#define RENESAS_ICADCA1I1_DMA    103
#define RENESAS_ICADCA1I2_DMA    104
#define RENESAS_ICADCA1I3_DMA    105
#define RENESAS_ICADCA1I4_DMA    106

#define RENESAS_MAX_DIAG_CHANNEL   63
/* Available PWM Diag Channels for 144 pin Devices */

#define RENESAS_PWM_DIAG_CH00    1
#define RENESAS_PWM_DIAG_CH01    1
#define RENESAS_PWM_DIAG_CH02    1
#define RENESAS_PWM_DIAG_CH03    1
#define RENESAS_PWM_DIAG_CH04    1
#define RENESAS_PWM_DIAG_CH05    1
#define RENESAS_PWM_DIAG_CH06    1
#define RENESAS_PWM_DIAG_CH07    1
#define RENESAS_PWM_DIAG_CH08    1
#define RENESAS_PWM_DIAG_CH09    1
#define RENESAS_PWM_DIAG_CH10    1
#define RENESAS_PWM_DIAG_CH11    1
#define RENESAS_PWM_DIAG_CH12    1
#define RENESAS_PWM_DIAG_CH13    1
#define RENESAS_PWM_DIAG_CH14    1
#define RENESAS_PWM_DIAG_CH15    1
#define RENESAS_PWM_DIAG_CH16    1
#define RENESAS_PWM_DIAG_CH17    1
#define RENESAS_PWM_DIAG_CH18    1
#define RENESAS_PWM_DIAG_CH19    1
#define RENESAS_PWM_DIAG_CH20    1
#define RENESAS_PWM_DIAG_CH21    1
#define RENESAS_PWM_DIAG_CH22    1
#define RENESAS_PWM_DIAG_CH23    1
#define RENESAS_PWM_DIAG_CH24    1
#define RENESAS_PWM_DIAG_CH25    1
#define RENESAS_PWM_DIAG_CH26    1
#define RENESAS_PWM_DIAG_CH27    1
#define RENESAS_PWM_DIAG_CH28    1
#define RENESAS_PWM_DIAG_CH29    1
#define RENESAS_PWM_DIAG_CH30    1
#define RENESAS_PWM_DIAG_CH31    1
#define RENESAS_PWM_DIAG_CH32    1
#define RENESAS_PWM_DIAG_CH33    1
#define RENESAS_PWM_DIAG_CH34    1
#define RENESAS_PWM_DIAG_CH35    1
#define RENESAS_PWM_DIAG_CH36    1
#define RENESAS_PWM_DIAG_CH37    1
#define RENESAS_PWM_DIAG_CH38    1
#define RENESAS_PWM_DIAG_CH39    1
#define RENESAS_PWM_DIAG_CH40    1
#define RENESAS_PWM_DIAG_CH41    1
#define RENESAS_PWM_DIAG_CH42    1
#define RENESAS_PWM_DIAG_CH43    1
#define RENESAS_PWM_DIAG_CH44    1
#define RENESAS_PWM_DIAG_CH45    1
#define RENESAS_PWM_DIAG_CH46    1
#define RENESAS_PWM_DIAG_CH47    1
#define RENESAS_PWM_DIAG_CH48    1
#define RENESAS_PWM_DIAG_CH49    1
#define RENESAS_PWM_DIAG_CH50    1
#define RENESAS_PWM_DIAG_CH51    1
#define RENESAS_PWM_DIAG_CH52    1
#define RENESAS_PWM_DIAG_CH53    1
#define RENESAS_PWM_DIAG_CH54    1
#define RENESAS_PWM_DIAG_CH55    1
#define RENESAS_PWM_DIAG_CH56    1
#define RENESAS_PWM_DIAG_CH57    1
#define RENESAS_PWM_DIAG_CH58    1
#define RENESAS_PWM_DIAG_CH59    1
#define RENESAS_PWM_DIAG_CH60    1
#define RENESAS_PWM_DIAG_CH61    1
#define RENESAS_PWM_DIAG_CH62    1
#define RENESAS_PWM_DIAG_CH63    1

/* Pin available for ADC0 */
#define RENESAS_ADC0_CHANL_PIN                    PIN_0-35
/* Pin available for ADC1 */
#define RENESAS_ADC1_CHANL_PIN                    PIN_0-7_16-19
/* Diag Channel available for ADC0 */
#define RENESAS_ADC_DIAG_CHANL                    PIN_0-63
/* Maximum number of DMA Channel */
#define RENESAS_ADC_DMA_CHANL_MAX                 15
/* ADC Device Variant */
#define RENESAS_ADC_DEVICE_VARIANT                F1K
/* ADC Device HW trigger Number available  */
#define RENESAS_ADC_HW_TRIGGER_CHECK              3
/* Total Number of Pin available in controller */
#define RENESAS_ADC_DEVICE_PIN                    144
/* ADC Device ADC1 availability */
#define RENESAS_ADC_HWUNIT1_AVBL                  1
/* ADC Device LPS mode availability */
#define RENESAS_ADC_HWUNIT_LPS                    0
/* ADC Device maximum Limit check registers available */
#define RENESAS_ADC_LIMITCHK_NUM                  3
/* ADC Device Variant */
#define RENESAS_ADC_DEVICE_F1KM                   0
/* ADC Device Variant */
#define RENESAS_ADC_DEVICE_F1KM_S4                0
/* ADC External mux available HW/SW */
#define RENESAS_ADC_EXTMUX_SPRT                   SW_MUX

/*******************************************************************************
**                 Macros for DMA Driver                                      **
*******************************************************************************/

#define RENESAS_DSA0       DMACDSA0
#define RENESAS_DSA1       DMACDSA1
#define RENESAS_DSA2       DMACDSA2
#define RENESAS_DSA3       DMACDSA3
#define RENESAS_DSA4       DMACDSA4
#define RENESAS_DSA5       DMACDSA5
#define RENESAS_DSA6       DMACDSA6
#define RENESAS_DSA7       DMACDSA7
#define RENESAS_DSA8       DMACDSA8
#define RENESAS_DSA9       DMACDSA9
#define RENESAS_DSA10      DMACDSA10
#define RENESAS_DSA11      DMACDSA11
#define RENESAS_DSA12      DMACDSA12
#define RENESAS_DSA13      DMACDSA13
#define RENESAS_DSA14      DMACDSA14
#define RENESAS_DSA15      DMACDSA15

#define RENESAS_DMACT0IC     INTC2ICDMA0
#define RENESAS_DMACT1IC     INTC2ICDMA1
#define RENESAS_DMACT2IC     INTC2ICDMA2
#define RENESAS_DMACT3IC     INTC2ICDMA3
#define RENESAS_DMACT4IC     INTC2ICDMA4
#define RENESAS_DMACT5IC     INTC2ICDMA5
#define RENESAS_DMACT6IC     INTC2ICDMA6
#define RENESAS_DMACT7IC     INTC2ICDMA7
#define RENESAS_DMACT8IC     INTC2ICDMA8
#define RENESAS_DMACT9IC     INTC2ICDMA9
#define RENESAS_DMACT10IC    INTC2ICDMA10
#define RENESAS_DMACT11IC    INTC2ICDMA11
#define RENESAS_DMACT12IC    INTC2ICDMA12
#define RENESAS_DMACT13IC    INTC2ICDMA13
#define RENESAS_DMACT14IC    INTC2ICDMA14
#define RENESAS_DMACT15IC    INTC2ICDMA15

#define RENESAS_DMACT00IC_IMR    60
#define RENESAS_DMACT01IC_IMR    61
#define RENESAS_DMACT02IC_IMR    62
#define RENESAS_DMACT03IC_IMR    63
#define RENESAS_DMACT04IC_IMR    64
#define RENESAS_DMACT05IC_IMR    65
#define RENESAS_DMACT06IC_IMR    66
#define RENESAS_DMACT07IC_IMR    67
#define RENESAS_DMACT08IC_IMR    68
#define RENESAS_DMACT09IC_IMR    69
#define RENESAS_DMACT10IC_IMR    70
#define RENESAS_DMACT11IC_IMR    71
#define RENESAS_DMACT12IC_IMR    72
#define RENESAS_DMACT13IC_IMR    73
#define RENESAS_DMACT14IC_IMR    74
#define RENESAS_DMACT15IC_IMR    75

/*******************************************************************************
**                     Macros for GPT Drivers                                 **
*******************************************************************************/

/* Interrupt control registers for TAUD */
#define RENESAS_ICTAUD0I0       ICTAUD0I0
#define RENESAS_ICTAUD0I1       ICTAUD0I1
#define RENESAS_ICTAUD0I2       ICTAUD0I2
#define RENESAS_ICTAUD0I3       ICTAUD0I3
#define RENESAS_ICTAUD0I4       ICTAUD0I4
#define RENESAS_ICTAUD0I5       ICTAUD0I5
#define RENESAS_ICTAUD0I6       ICTAUD0I6
#define RENESAS_ICTAUD0I7       ICTAUD0I7
#define RENESAS_ICTAUD0I8       ICTAUD0I8
#define RENESAS_ICTAUD0I9       ICTAUD0I9
#define RENESAS_ICTAUD0I10      ICTAUD0I10
#define RENESAS_ICTAUD0I11      ICTAUD0I11
#define RENESAS_ICTAUD0I12      ICTAUD0I12
#define RENESAS_ICTAUD0I13      ICTAUD0I13
#define RENESAS_ICTAUD0I14      ICTAUD0I14
#define RENESAS_ICTAUD0I15      ICTAUD0I15

/* Interrupt control registers for TAUB */
#define RENESAS_ICTAUB0I0       ICTAUB0I0
#define RENESAS_ICTAUB0I1       ICTAUB0I1
#define RENESAS_ICTAUB0I2       ICTAUB0I2
#define RENESAS_ICTAUB0I3       ICTAUB0I3
#define RENESAS_ICTAUB0I4       ICTAUB0I4
#define RENESAS_ICTAUB0I5       ICTAUB0I5
#define RENESAS_ICTAUB0I6       ICTAUB0I6
#define RENESAS_ICTAUB0I7       ICTAUB0I7
#define RENESAS_ICTAUB0I8       ICTAUB0I8
#define RENESAS_ICTAUB0I9       ICTAUB0I9
#define RENESAS_ICTAUB0I10      ICTAUB0I10
#define RENESAS_ICTAUB0I11      ICTAUB0I11
#define RENESAS_ICTAUB0I12      ICTAUB0I12
#define RENESAS_ICTAUB0I13      ICTAUB0I13
#define RENESAS_ICTAUB0I14      ICTAUB0I14
#define RENESAS_ICTAUB0I15      ICTAUB0I15

/* Interrupt control registers for TAUJ */
#define RENESAS_ICTAUJ0I0       ICTAUJ0I0
#define RENESAS_ICTAUJ0I1       ICTAUJ0I1
#define RENESAS_ICTAUJ0I2       ICTAUJ0I2
#define RENESAS_ICTAUJ0I3       ICTAUJ0I3
#define RENESAS_ICTAUJ1I0       ICTAUJ1I0
#define RENESAS_ICTAUJ1I1       ICTAUJ1I1
#define RENESAS_ICTAUJ1I2       ICTAUJ1I2
#define RENESAS_ICTAUJ1I3       ICTAUJ1I3

/* Interrupt control registers for OSTM0 */
#define RENESAS_ICOSTM0IIC      ICOSTM0

/* Interrupt control registers for OSTM0 */
#define RENESAS_ICOSTM0IIC_IMR   84


/*******************************************************************************
**                 Macros for LIN Driver                                      **
*******************************************************************************/

#define RENESAS_ICRLIN20             ICRLIN20
#define RENESAS_ICRLIN21             ICRLIN21
#define RENESAS_ICRLIN22             ICRLIN22
#define RENESAS_ICRLIN23             ICRLIN23
#define RENESAS_ICRLIN24             ICRLIN24
#define RENESAS_ICRLIN25             ICRLIN25
#define RENESAS_ICRLIN30             ICRLIN30
#define RENESAS_ICRLIN31             ICRLIN31
#define RENESAS_ICRLIN32             ICRLIN32
#define RENESAS_ICRLIN33             ICRLIN33
#define RENESAS_ICRLIN34             ICRLIN34
#define RENESAS_ICRLIN35             ICRLIN35

/* Macros for MCU clock reference */
#define RENESAS_LINMCUREFCLOCK        McuPeripheralClock

/*******************************************************************************
**                     Macros for FLS Drivers                                 **
*******************************************************************************/
/* MCU reference parameter name for FLS */
#define RENESAS_FLS_MCUREF_PARAM   McuCpuMainSysClk

#define RENESAS_ICFLENDNM_IMR       111

/*******************************************************************************
**                 Macros for IMR Register                                    **
*******************************************************************************/
#define RENESAS_IMR0       INTC1IMR0
#define RENESAS_IMR1       INTC2IMR1
#define RENESAS_IMR2       INTC2IMR2
#define RENESAS_IMR3       INTC2IMR3
#define RENESAS_IMR4       INTC2IMR4
#define RENESAS_IMR5       INTC2IMR5
#define RENESAS_IMR6       INTC2IMR6
#define RENESAS_IMR7       INTC2IMR7
#define RENESAS_IMR8       INTC2IMR8
#define RENESAS_IMR9       INTC2IMR9
#define RENESAS_IMR10      INTC2IMR10

/*******************************************************************************
**                     Macros for SPI Drivers                                 **
*******************************************************************************/

/* Base address of the CSIG0 hardware registers structure */
#define RENESAS_CSIG0CTL0               CSIG0CTL0
#define RENESAS_CSIG0STR0               CSIG0STR0
#define RENESAS_CSIG0STCR0              CSIG0STCR0
#define RENESAS_CSIG0CTL1               CSIG0CTL1
#define RENESAS_CSIG0CTL2               CSIG0CTL2
#define RENESAS_CSIG0EMU                CSIG0EMU
#define RENESAS_CSIG0BCTL0              CSIG0BCTL0
#define RENESAS_CSIG0TX0W               CSIG0TX0W
#define RENESAS_CSIG0TX0H               CSIG0TX0H
#define RENESAS_CSIG0RX0                CSIG0RX0
#define RENESAS_CSIG0CFG0               CSIG0CFG0

/* Base address of the CSIG1 hardware registers structure */
#define RENESAS_CSIG1CTL0               CSIG1CTL0
#define RENESAS_CSIG1STR0               CSIG1STR0
#define RENESAS_CSIG1STCR0              CSIG1STCR0
#define RENESAS_CSIG1CTL1               CSIG1CTL1
#define RENESAS_CSIG1CTL2               CSIG1CTL2
#define RENESAS_CSIG1EMU                CSIG1EMU
#define RENESAS_CSIG1BCTL0              CSIG1BCTL0
#define RENESAS_CSIG1TX0W               CSIG1TX0W
#define RENESAS_CSIG1TX0H               CSIG1TX0H
#define RENESAS_CSIG1RX0                CSIG1RX0
#define RENESAS_CSIG1CFG0               CSIG1CFG0

/* Base address of the CSIH0 hardware registers structure */
#define RENESAS_CSIH0CTL0               CSIH0CTL0
#define RENESAS_CSIH0STR0               CSIH0STR0
#define RENESAS_CSIH0STCR0              CSIH0STCR0
#define RENESAS_CSIH0CTL1               CSIH0CTL1
#define RENESAS_CSIH0CTL2               CSIH0CTL2
#define RENESAS_CSIH0EMU                CSIH0EMU
#define RENESAS_CSIH0MCTL1              CSIH0MCTL1
#define RENESAS_CSIH0MCTL2              CSIH0MCTL2
#define RENESAS_CSIH0TX0W               CSIH0TX0W
#define RENESAS_CSIH0TX0H               CSIH0TX0H
#define RENESAS_CSIH0RX0W               CSIH0RX0W
#define RENESAS_CSIH0RX0H               CSIH0RX0H
#define RENESAS_CSIH0MRWP0              CSIH0MRWP0
#define RENESAS_CSIH0MCTL0              CSIH0MCTL0
#define RENESAS_CSIH0CFG0               CSIH0CFG0
#define RENESAS_CSIH0CFG1               CSIH0CFG1
#define RENESAS_CSIH0CFG2               CSIH0CFG2
#define RENESAS_CSIH0CFG3               CSIH0CFG3
#define RENESAS_CSIH0CFG4               CSIH0CFG4
#define RENESAS_CSIH0CFG5               CSIH0CFG5
#define RENESAS_CSIH0CFG6               CSIH0CFG6
#define RENESAS_CSIH0CFG7               CSIH0CFG7
#define RENESAS_CSIH0BRS0               CSIH0BRS0
#define RENESAS_CSIH0BRS1               CSIH0BRS1
#define RENESAS_CSIH0BRS2               CSIH0BRS2
#define RENESAS_CSIH0BRS3               CSIH0BRS3
#define RENESAS_ECCCSIH0CTL             ECCCSIH0CTL

/* Base address of the CSIH1 hardware registers structure */
#define RENESAS_CSIH1CTL0               CSIH1CTL0
#define RENESAS_CSIH1STR0               CSIH1STR0
#define RENESAS_CSIH1STCR0              CSIH1STCR0
#define RENESAS_CSIH1CTL1               CSIH1CTL1
#define RENESAS_CSIH1CTL2               CSIH1CTL2
#define RENESAS_CSIH1EMU                CSIH1EMU
#define RENESAS_CSIH1MCTL1              CSIH1MCTL1
#define RENESAS_CSIH1MCTL2              CSIH1MCTL2
#define RENESAS_CSIH1TX0W               CSIH1TX0W
#define RENESAS_CSIH1TX0H               CSIH1TX0H
#define RENESAS_CSIH1RX0W               CSIH1RX0W
#define RENESAS_CSIH1RX0H               CSIH1RX0H
#define RENESAS_CSIH1MRWP0              CSIH1MRWP0
#define RENESAS_CSIH1MCTL0              CSIH1MCTL0
#define RENESAS_CSIH1CFG0               CSIH1CFG0
#define RENESAS_CSIH1CFG1               CSIH1CFG1
#define RENESAS_CSIH1CFG2               CSIH1CFG2
#define RENESAS_CSIH1CFG3               CSIH1CFG3
#define RENESAS_CSIH1CFG4               CSIH1CFG4
#define RENESAS_CSIH1CFG5               CSIH1CFG5
#define RENESAS_CSIH1BRS0               CSIH1BRS0
#define RENESAS_CSIH1BRS1               CSIH1BRS1
#define RENESAS_CSIH1BRS2               CSIH1BRS2
#define RENESAS_CSIH1BRS3               CSIH1BRS3
#define RENESAS_ECCCSIH1CTL             ECCCSIH1CTL

/* Base address of the CSIH2 hardware registers structure */
#define RENESAS_CSIH2CTL0               CSIH2CTL0
#define RENESAS_CSIH2STR0               CSIH2STR0
#define RENESAS_CSIH2STCR0              CSIH2STCR0
#define RENESAS_CSIH2CTL1               CSIH2CTL1
#define RENESAS_CSIH2CTL2               CSIH2CTL2
#define RENESAS_CSIH2EMU                CSIH2EMU
#define RENESAS_CSIH2MCTL1              CSIH2MCTL1
#define RENESAS_CSIH2MCTL2              CSIH2MCTL2
#define RENESAS_CSIH2TX0W               CSIH2TX0W
#define RENESAS_CSIH2TX0H               CSIH2TX0H
#define RENESAS_CSIH2RX0W               CSIH2RX0W
#define RENESAS_CSIH2RX0H               CSIH2RX0H
#define RENESAS_CSIH2MRWP0              CSIH2MRWP0
#define RENESAS_CSIH2MCTL0              CSIH2MCTL0
#define RENESAS_CSIH2CFG0               CSIH2CFG0
#define RENESAS_CSIH2CFG1               CSIH2CFG1
#define RENESAS_CSIH2CFG2               CSIH2CFG2
#define RENESAS_CSIH2CFG3               CSIH2CFG3
#define RENESAS_CSIH2CFG4               CSIH2CFG4
#define RENESAS_CSIH2CFG5               CSIH2CFG5
#define RENESAS_CSIH2BRS0               CSIH2BRS0
#define RENESAS_CSIH2BRS1               CSIH2BRS1
#define RENESAS_CSIH2BRS2               CSIH2BRS2
#define RENESAS_CSIH2BRS3               CSIH2BRS3
#define RENESAS_ECCCSIH2CTL             ECCCSIH2CTL

/* Base address of the CSIH3 hardware registers structure */
#define RENESAS_CSIH3CTL0               CSIH3CTL0
#define RENESAS_CSIH3STR0               CSIH3STR0
#define RENESAS_CSIH3STCR0              CSIH3STCR0
#define RENESAS_CSIH3CTL1               CSIH3CTL1
#define RENESAS_CSIH3CTL2               CSIH3CTL2
#define RENESAS_CSIH3EMU                CSIH3EMU
#define RENESAS_CSIH3MCTL1              CSIH3MCTL1
#define RENESAS_CSIH3MCTL2              CSIH3MCTL2
#define RENESAS_CSIH3TX0W               CSIH3TX0W
#define RENESAS_CSIH3TX0H               CSIH3TX0H
#define RENESAS_CSIH3RX0W               CSIH3RX0W
#define RENESAS_CSIH3RX0H               CSIH3RX0H
#define RENESAS_CSIH3MRWP0              CSIH3MRWP0
#define RENESAS_CSIH3MCTL0              CSIH3MCTL0
#define RENESAS_CSIH3CFG0               CSIH3CFG0
#define RENESAS_CSIH3CFG1               CSIH3CFG1
#define RENESAS_CSIH3CFG2               CSIH3CFG2
#define RENESAS_CSIH3CFG3               CSIH3CFG3
#define RENESAS_CSIH3BRS0               CSIH3BRS0
#define RENESAS_CSIH3BRS1               CSIH3BRS1
#define RENESAS_CSIH3BRS2               CSIH3BRS2
#define RENESAS_CSIH3BRS3               CSIH3BRS3
#define RENESAS_ECCCSIH3CTL             ECCCSIH3CTL

/* Interrupt control registers for CSIG0 */
#define RENESAS_CSIG0TIR                INTC1ICCSIG0IR
#define RENESAS_CSIG0TIC                INTC1ICCSIG0IC

/* Interrupt control registers for CSIG1 */
#define RENESAS_CSIG1TIR                INTC2ICCSIG1IR
#define RENESAS_CSIG1TIC                INTC2ICCSIG1IC

/* Interrupt control registers for CSIH0 */
#define RENESAS_CSIH0TIR                INTC1ICCSIH0IR
#define RENESAS_CSIH0TIC                INTC1ICCSIH0IC

/* Interrupt control registers for CSIH1 */
#define RENESAS_CSIH1TIR                INTC2ICCSIH1IR
#define RENESAS_CSIH1TIC                INTC2ICCSIH1IC

/* Interrupt control registers for CSIH2 */
#define RENESAS_CSIH2TIR                INTC2ICCSIH2IR
#define RENESAS_CSIH2TIC                INTC2ICCSIH2IC

/* Interrupt control registers for CSIH3 */
#define RENESAS_CSIH3TIR                INTC2ICCSIH3IR
#define RENESAS_CSIH3TIC                INTC2ICCSIH3IC

#define RENESAS_PERIPHERAL_CLOCK    McuPeripheralClock
#define RENESAS_MCUBASECLOCKREF     McuCpuMainSysClk

#define RENESAS_JPSR0    JTAGJPSR0
#define RENESAS_PSR0     PORTPSR0
#define RENESAS_PSR1     PORTPSR1
#define RENESAS_PSR8     PORTPSR8
#define RENESAS_PSR9     PORTPSR9
#define RENESAS_PSR10    PORTPSR10
#define RENESAS_PSR11    PORTPSR11
#define RENESAS_PSR12    PORTPSR12
#define RENESAS_PSR18    PORTPSR18
#define RENESAS_PSR20    PORTPSR20

/* Availability Check for CSIG */
#define RENESAS_AVAILABILITY_CSIG0                    1
#define RENESAS_AVAILABILITY_CSIG1                    1
#define RENESAS_AVAILABILITY_CSIG2                    0
#define RENESAS_AVAILABILITY_CSIG3                    0

/* Availability Check for CSIH */
#define RENESAS_AVAILABILITY_CSIH0                    1
#define RENESAS_AVAILABILITY_CSIH1                    1
#define RENESAS_AVAILABILITY_CSIH2                    1
#define RENESAS_AVAILABILITY_CSIH3                    1

/* Availability Check for PORT_PIN */
#define RENESAS_PORTJTAG_0           PORTGROUPJTAG_0_PORTPIN_0_TO_6
#define RENESAS_PORT_0               PORTGROUP_0_PORTPIN_0_TO_14
#define RENESAS_PORT_1               PORTGROUP_1_PORTPIN_0_TO_11
#define RENESAS_PORT_8               PORTGROUP_8_PORTPIN_0_TO_12
#define RENESAS_PORT_9               PORTGROUP_9_PORTPIN_0_TO_6
#define RENESAS_PORT_10              PORTGROUP_10_PORTPIN_0_TO_15
#define RENESAS_PORT_11              PORTGROUP_11_PORTPIN_0_TO_15
#define RENESAS_PORT_12              PORTGROUP_12_PORTPIN_0_TO_2
#define RENESAS_PORT_18              PORTGROUP_18_PORTPIN_0_TO_3
#define RENESAS_PORT_20              PORTGROUP_20_PORTPIN_0_TO_5

#define RENESAS_CSIH0                CSS0_CSS1_CSS2_CSS3_CSS4_CSS5_CSS6_CSS7
#define RENESAS_CSIH1                CSS0_CSS1_CSS2_CSS3_CSS4_CSS5_CSS6_CSS7
#define RENESAS_CSIH2                CSS0_CSS1_CSS2_CSS3_CSS4_CSS5_CSS6_CSS7
#define RENESAS_CSIH3                CSS0_CSS1_CSS2_CSS3_CSS4_CSS5_CSS6_CSS7

/* Availability Check for DMA TX channels */
#define RENESAS_AVAILABILITY_TX_DMA  DMA_0_TO_15
/* Availability Check for DMA RX channels */
#define RENESAS_AVAILABILITY_RX_DMA  DMA_0_TO_15

/* Maximum transfer clock divisor */
#define RENESAS_MAX_TRANSFER_CLK_DIV    4

/* Maximum hardware buffer size*/
#define RENESAS_CSIH_HW_BUFFER_SIZE     128

/*******************************************************************************
**                 Macros for FLSTST Software Component                      **
*******************************************************************************/
/*Address of register DRACIN*/
#define RENESAS_DCRA0CIN         0xfff70000
#define RENESAS_DCRA1CIN         0xfff71000
#define RENESAS_DCRA2CIN         0xfff72000
#define RENESAS_DCRA3CIN         0xfff73000

/*Address of register DCRA0CTL*/
#define RENESAS_DCRA0CTL         0xfff70020
#define RENESAS_DCRA1CTL         0xfff71020
#define RENESAS_DCRA2CTL         0xfff72020
#define RENESAS_DCRA3CTL         0xfff73020

/*Address of register DRACOUT*/
#define RENESAS_DCRA0COUT        0xfff70004
#define RENESAS_DCRA1COUT        0xfff71004
#define RENESAS_DCRA2COUT        0xfff72004
#define RENESAS_DCRA3COUT        0xfff73004

/*Address of register CF1STEADR0_VCI :Code flash 1st error address register "*/
#define RENESAS_CF1STEADR0_VCI   0xffc62250

/*Address of register CFECCCTL_VCI :Code Flash ECC Control Register*/
#define RENESAS_CFECCCTL_VCIL     0xffc62200

/*Address of register CFSTCLR_VCI :Code Flash Status Clear Register*/
#define RENESAS_CFSTCLR_VCILL      0xffc62208

/*Address of register CFERRINT_VCI :Code Flash Error Information Control Register*/
#define RENESAS_CFERRINT_VCILL     0xffc62204

/*Address of register CF1STERSTR_VCI:Code Flash 1st Error Status Register */
#define RENESAS_CF1STERSTR_VCILL   0xffc62210

/*Address of register CFSTSTCTL_VCI:Code Flash for sub-test control Register */
#define RENESAS_CFSTSTCTL_VCI    0xffc62350

/*******************************************************************************
**                 Macros for RAMTST Software Component                       **
*******************************************************************************/
#define RENESAS_LRTST_CNTL        0xFFC65004
#define RENESAS_LRECC_CNTL        0xFFC65400
#define RENESAS_LRERRINT_CNTL     0xFFC65404

/*Start address of 701622 */
#define RENESAS_START_ADDR        0xFEBE8000
/*End address of 701622 */
#define RENESAS_END_ADDR          0xFEBFFFFF
/*****************************************************************************
**                         Macros for CAN Driver                            **
******************************************************************************/
/* Device capacities */
/* Per Module CAN*/
#define RENESAS_RCAN0CHANNELS           6

#define RENESAS_RCAN0MAXSHAREDBUFFER    10752

#define RENESAS_RCAN0MAXSHAREDRECEIVERULE 384

#define RENESAS_RCAN0MAXRECEIVEBUFFER   96

#define RENESAS_RCAN0MAXRECEIVEFIFO     8

/* Per Channel CAN*/
#define RENESAS_RCAN0MAXTRANSMITBUFFER  16

#define RENESAS_RCAN0MAXMERGEDBUFFER    2

#define RENESAS_RCAN0MAXTXRXFIFO        3

#define RENESAS_RCAN0MAXTRANSMITQUEUE   1

#define RENESAS_RCAN0MAXRECEIVERULE     128

/* Global interrupt register */
#define RENESAS_RCANGRECC0_EIC          INTC1ICRCANGRECC0

/* Macro for channel interrupt*/
#define RENESAS_RSCANFD00ERR_EIC  INTC1ICRCAN0ERR
#define RENESAS_RSCANFD01ERR_EIC  INTC2ICRCAN1ERR
#define RENESAS_RSCANFD02ERR_EIC  INTC2ICRCAN2ERR
#define RENESAS_RSCANFD03ERR_EIC  INTC2ICRCAN3ERR
#define RENESAS_RSCANFD04ERR_EIC  INTC2ICRCAN4ERR
#define RENESAS_RSCANFD05ERR_EIC  INTC2ICRCAN5ERR

#define RENESAS_RSCANFD00REC_EIC  INTC1ICRCAN0REC
#define RENESAS_RSCANFD01REC_EIC  INTC2ICRCAN1REC
#define RENESAS_RSCANFD02REC_EIC  INTC2ICRCAN2REC
#define RENESAS_RSCANFD03REC_EIC  INTC2ICRCAN3REC
#define RENESAS_RSCANFD04REC_EIC  INTC2ICRCAN4REC
#define RENESAS_RSCANFD05REC_EIC  INTC2ICRCAN5REC

#define RENESAS_RSCANFD00TRX_EIC  INTC1ICRCAN0TRX
#define RENESAS_RSCANFD01TRX_EIC  INTC2ICRCAN1TRX
#define RENESAS_RSCANFD02TRX_EIC  INTC2ICRCAN2TRX
#define RENESAS_RSCANFD03TRX_EIC  INTC2ICRCAN3TRX
#define RENESAS_RSCANFD04TRX_EIC  INTC2ICRCAN4TRX
#define RENESAS_RSCANFD05TRX_EIC  INTC2ICRCAN5TRX

/*CHANNEL CONFIGURATION REGISTER MACROS*/
#define RENESAS_RSCFD0CFDC0NCFG   RSCFD0CFDC0NCFG

/*CHANNEL DATA CONFIGURATION REGISTER MACROS*/
#define RENESAS_RSCFD0CFDC0DCFG   RSCFD0CFDC0DCFG

/* Receive filter register */
#define RENESAS_RSCFD0CFDGAFLID0  RSCFD0CFDGAFLID0

/* Macros for CAN MCUCLOCK Software Implementation */

#define RENESAS_CANMCUPPLCLOCK McuClockReferencePointFrequency

#define RENESAS_CANMCUPCLKCLOCK McuPeripheralClock

#define RENESAS_CANMCUMAINCLOCK McuPeripheralClock

/* CAN wakeup interrupt register */
#define RENESAS_RSCAN00_WAKEUP  INTC2ICP0
#define RENESAS_RSCAN01_WAKEUP  INTC2ICP1
#define RENESAS_RSCAN02_WAKEUP  INTC2ICP2
#define RENESAS_RSCAN03_WAKEUP  INTC2ICP3
#define RENESAS_RSCAN04_WAKEUP  INTC2ICP4
#define RENESAS_RSCAN05_WAKEUP  INTC2ICP5

/* EXTERNAL INTERRUPT EDGE DETECTION REGISTERS */
#define RENESAS_RSCAN00_FCLA     FCLA0CTL0_INTPL
#define RENESAS_RSCAN01_FCLA     FCLA0CTL1_INTPL
#define RENESAS_RSCAN02_FCLA     FCLA0CTL2_INTPL
#define RENESAS_RSCAN03_FCLA     FCLA0CTL3_INTPL
#define RENESAS_RSCAN04_FCLA     FCLA0CTL4_INTPL
#define RENESAS_RSCAN05_FCLA     FCLA0CTL5_INTPL

/* Maximum RAM size */
#define RENESAS_RCAN_PAGE_RAMSIZE   256
#define RENESAS_RCAN0_MAX_RAMSIZE   21312
/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

/*******************************************************************************
**                          End Of File                                       **
*******************************************************************************/
