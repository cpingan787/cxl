/**
 * Copyright (C) 2008-2025 isoft Infrastructure Software Co., Ltd.
 * SPDX-License-Identifier: LGPL-2.1-only-with-exception
 *
 * This library is free software; you can redistribute it and/or modify it under the terms of the
 * GNU Lesser General Public License as published by the Free Software Foundation; version 2.1.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this library;
 * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 * or see <https://www.gnu.org/licenses/>.
 */
/*
********************************************************************************
**                                                                            **
**  FILENAME    : Crc.c                                                       **
**                                                                            **
**  Created on  :                                                             **
**  Author      : ShenXu,Yb                                                   **
**  Vendor      :                                                             **
**  DESCRIPTION :                                                             **
**                                                                            **
**  SPECIFICATION(S) :   AUTOSAR classic Platform R19-11                      **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/*@req<SWS_Crc_00022> */
#include "Crc.h"
/*******************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/
/*******************************************************************************
**                       Version  Check                                       **
*******************************************************************************/
#if (CRC_AR_RELEASE_MAJOR_VERSION != 4U)
#error "Crc.c and Std_Types.c: Mismatch in Specification Major Version"
#endif
#if (CRC_AR_RELEASE_MINOR_VERSION != 5U)
#error "Crc.c and Std_Types.c: Mismatch in Specification Minor Version"
#endif

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*@req<SWS_Crc_00030> */
#if (STD_ON == CRC8_ALGORITHM)
/* CRC8 J1850 Standard XOR value*/
#define CRC_XORVALUE8 0xFFu
/* CRC8 J1850 Standard Init value*/
#define CRC_INITVALUE8 0xFFu
#if (CRC_RUNTIME == CRC8_MODE)
/* CRC8 J1850 Standard Generator Polynomial*/
#define CRC_POLY8 0x1Du
#endif
#endif

/*@req<SWS_Crc_00042> */
#if (STD_ON == CRC8H2F_ALGORITHM)
/* CRC8 0x2F polynomial XOR value*/
#define CRC_XORVALUE8H2F 0xFFu
/* CRC8 0x2F polynomial Init value*/
#define CRC_INITVALUE8H2F 0xFFu
#if (CRC_RUNTIME == CRC8H2F_MODE)
/* CRC8 0x2F Generator Polynomial*/
#define CRC_POLY8H2F 0x2Fu
#endif
#endif

/*@req<SWS_Crc_00002> */
#if (STD_ON == CRC16_ALGORITHM)
/* CRC16 CCITT-FALSE Standard Init value*/
#define CRC_INITVALUE16 0xFFFFu
/* CRC16 CCITT-FALSE Standard value*/
#define CRC_XORVALUE16 0x0u
#if (CRC_RUNTIME == CRC16_MODE)
/*CRC16 CCITT-FALSE Standard Generator Polynomial*/
#define CRC_POLY16 0x1021u
#endif
#endif

/*@req<SWS_Crc_00003> */
#if (STD_ON == CRC32_ALGORITHM)
/* CRC32 Ethernet Standard Init value*/
#define CRC_INITVALUE32 0xFFFFFFFFu
/* CRC32 Ethernet Standard XOR value*/
#define CRC_XORVALUE32 0xFFFFFFFFu
#if (CRC_RUNTIME == CRC32_MODE)
/* CRC32 Ethernet Standard Generator Polynomial*/
#define CRC_POLY32 0x04C11DB7u
#endif
#endif

/*@req<SWS_Crc_00056> */
#if (STD_ON == CRC32P4_ALGORITHM)
/* CRC32 Init value*/
#define CRC_INITVALUE32P4 0xFFFFFFFFu
/* CRC32 xor value*/
#define CRC_XORVALUE32P4 0xFFFFFFFFu
#if (CRC_RUNTIME == CRC32P4_MODE)
/* CRC32 Generator Polynomial*/
#define CRC_POLY32P4 0xF4ACFB13u
#endif
#endif

/*@req<SWS_Crc_00062> */
#if (STD_ON == CRC64_ALGORITHM)
/* CRC64 Init value*/
#define CRC_INITVALUE64 0xFFFFFFFFFFFFFFFFu
/* CRC64 xor value*/
#define CRC_XORVALUE64 0xFFFFFFFFFFFFFFFFu
#if (CRC_RUNTIME == CRC64_MODE)
/* CRC64 Generator Polynomial*/
#define CRC_POLY64 0x42F0E1EBA9EA3693u
#endif
#endif

#define MSB_BYTE     0x80u
#define MSB_WORD     0x8000u
#define MSB_DWORD    0x80000000u
#define MSB_ULL      0x8000000000000000u
#define BIT_LENGTH   0x1u
#define BIT_LENGTH8  0x8u
#define BIT_LENGTH24 0x18u
#define BIT_LENGTH56 0x38u

static const uint16 Cal_Crc16Tab[256] = {
    0x0000u, 0x1021u, 0x2042u, 0x3063u, 0x4084u, 0x50a5u, 0x60c6u, 0x70e7u, 0x8108u, 0x9129u, 0xa14au, 0xb16bu, 0xc18cu,
    0xd1adu, 0xe1ceu, 0xf1efu, 0x1231u, 0x0210u, 0x3273u, 0x2252u, 0x52b5u, 0x4294u, 0x72f7u, 0x62d6u, 0x9339u, 0x8318u,
    0xb37bu, 0xa35au, 0xd3bdu, 0xc39cu, 0xf3ffu, 0xe3deu, 0x2462u, 0x3443u, 0x0420u, 0x1401u, 0x64e6u, 0x74c7u, 0x44a4u,
    0x5485u, 0xa56au, 0xb54bu, 0x8528u, 0x9509u, 0xe5eeu, 0xf5cfu, 0xc5acu, 0xd58du, 0x3653u, 0x2672u, 0x1611u, 0x0630u,
    0x76d7u, 0x66f6u, 0x5695u, 0x46b4u, 0xb75bu, 0xa77au, 0x9719u, 0x8738u, 0xf7dfu, 0xe7feu, 0xd79du, 0xc7bcu, 0x48c4u,
    0x58e5u, 0x6886u, 0x78a7u, 0x0840u, 0x1861u, 0x2802u, 0x3823u, 0xc9ccu, 0xd9edu, 0xe98eu, 0xf9afu, 0x8948u, 0x9969u,
    0xa90au, 0xb92bu, 0x5af5u, 0x4ad4u, 0x7ab7u, 0x6a96u, 0x1a71u, 0x0a50u, 0x3a33u, 0x2a12u, 0xdbfdu, 0xcbdcu, 0xfbbfu,
    0xeb9eu, 0x9b79u, 0x8b58u, 0xbb3bu, 0xab1au, 0x6ca6u, 0x7c87u, 0x4ce4u, 0x5cc5u, 0x2c22u, 0x3c03u, 0x0c60u, 0x1c41u,
    0xedaeu, 0xfd8fu, 0xcdecu, 0xddcdu, 0xad2au, 0xbd0bu, 0x8d68u, 0x9d49u, 0x7e97u, 0x6eb6u, 0x5ed5u, 0x4ef4u, 0x3e13u,
    0x2e32u, 0x1e51u, 0x0e70u, 0xff9fu, 0xefbeu, 0xdfddu, 0xcffcu, 0xbf1bu, 0xaf3au, 0x9f59u, 0x8f78u, 0x9188u, 0x81a9u,
    0xb1cau, 0xa1ebu, 0xd10cu, 0xc12du, 0xf14eu, 0xe16fu, 0x1080u, 0x00a1u, 0x30c2u, 0x20e3u, 0x5004u, 0x4025u, 0x7046u,
    0x6067u, 0x83b9u, 0x9398u, 0xa3fbu, 0xb3dau, 0xc33du, 0xd31cu, 0xe37fu, 0xf35eu, 0x02b1u, 0x1290u, 0x22f3u, 0x32d2u,
    0x4235u, 0x5214u, 0x6277u, 0x7256u, 0xb5eau, 0xa5cbu, 0x95a8u, 0x8589u, 0xf56eu, 0xe54fu, 0xd52cu, 0xc50du, 0x34e2u,
    0x24c3u, 0x14a0u, 0x0481u, 0x7466u, 0x6447u, 0x5424u, 0x4405u, 0xa7dbu, 0xb7fau, 0x8799u, 0x97b8u, 0xe75fu, 0xf77eu,
    0xc71du, 0xd73cu, 0x26d3u, 0x36f2u, 0x0691u, 0x16b0u, 0x6657u, 0x7676u, 0x4615u, 0x5634u, 0xd94cu, 0xc96du, 0xf90eu,
    0xe92fu, 0x99c8u, 0x89e9u, 0xb98au, 0xa9abu, 0x5844u, 0x4865u, 0x7806u, 0x6827u, 0x18c0u, 0x08e1u, 0x3882u, 0x28a3u,
    0xcb7du, 0xdb5cu, 0xeb3fu, 0xfb1eu, 0x8bf9u, 0x9bd8u, 0xabbbu, 0xbb9au, 0x4a75u, 0x5a54u, 0x6a37u, 0x7a16u, 0x0af1u,
    0x1ad0u, 0x2ab3u, 0x3a92u, 0xfd2eu, 0xed0fu, 0xdd6cu, 0xcd4du, 0xbdaau, 0xad8bu, 0x9de8u, 0x8dc9u, 0x7c26u, 0x6c07u,
    0x5c64u, 0x4c45u, 0x3ca2u, 0x2c83u, 0x1ce0u, 0x0cc1u, 0xef1fu, 0xff3eu, 0xcf5du, 0xdf7cu, 0xaf9bu, 0xbfbau, 0x8fd9u,
    0x9ff8u, 0x6e17u, 0x7e36u, 0x4e55u, 0x5e74u, 0x2e93u, 0x3eb2u, 0x0ed1u, 0x1ef0u};

#if (STD_ON == CRC16_ALGORITHM)
/*************************************************************************/
/*
 * Brief               This service makes a CRC16 calculation on Crc_Length
 *                     data bytes.
 * ServiceId           0x02
 * Sync/Async          Synchronous
 * Reentrancy          Reentrant
 * Param-Name[in]      Crc_DataPtr:Pointer to start address of data block
 *                     to be calculated.
 *                     Crc_Length:Length of data block to be calculated in bytes.
 *                     Crc_StartValue16:Start value when the algorithm starts.
 *                     Crc_IsFirstCall:
 *                     TRUE: First call in a sequence or individual CRC calculation;
 *                     start from initial value, ignore Crc_StartValue16.
 *                     FALSE:Subsequent call in a call sequence; Crc_StartValue16 is
 *                     interpreted to be the return value of the previous function call.
 * Param-Name[out]     None
 * Param-Name[in/out]  None
 * Return              uint16
 * PreCondition        None
 * CallByAPI           Up layer
 */
/*************************************************************************/
/*@req<SWS_Crc_00019>*/

uint16 Crc_CalculateCRC16(
    P2CONST(uint8, AUTOMATIC, CRC_APPL_CONST) Crc_DataPtr,
    VAR(uint32, AUTOMATIC) Crc_Length,
    VAR(uint16, AUTOMATIC) Crc_StartValue16,
    VAR(boolean, AUTOMATIC) Crc_IsFirstCall)
{
    uint16 crc;
#if (CRC_HARDWARE != CRC16_MODE)
    uint32 i;
#endif /* CRC_HARDWARE != CRC16_MODE */
#if (CRC_RUNTIME == CRC16_MODE)
    uint8 j;
#endif /* CRC_RUNTIME == CRC16_MODE */

    if (TRUE == Crc_IsFirstCall)
    {
        crc = CRC_INITVALUE16;
    }
    else
    {
        crc = Crc_StartValue16;
    }

/* check if it is runtime method to calculate */
#if (CRC_RUNTIME == CRC16_MODE)
    for (i = 0; i < Crc_Length; i++)
    {
        /* current CRC8 XOR data in */
        crc ^= ((uint16)Crc_DataPtr[i] << BIT_LENGTH8);

        for (j = 0; j < BIT_LENGTH8; j++)
        {
            /*check if MSB is 1*/
            if ((crc & MSB_WORD) > 0x0u)
            {
                crc <<= BIT_LENGTH;
                crc ^= CRC_POLY16;
            }
            else
            {
                crc <<= BIT_LENGTH;
            }
        }
    }
    /* check if it is table method to calculate */
#elif (CRC_TABLE == CRC16_MODE)
    for (i = 0; i < Crc_Length; i++)
    {
        crc = Cal_Crc16Tab[(((crc >> 8u) ^ ((uint16)Crc_DataPtr[i]))) & 0xFFu] ^ (crc << 8u);
    }

/* check if it is hardware method to calculate */
#elif (CRC_HARDWARE == CRC16_MODE)
    Crc_CalculateCRC16ByHardware(Crc_DataPtr, Crc_Length, Crc_StartValue16, Crc_IsFirstCall);
#endif /* CRC_RUNTIME == CRC16_MODE */

    crc ^= CRC_XORVALUE16; /* PRQA S 2985 */ /* VL_Crc_Redudant */

    return crc;
}

#endif