#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\SrcCode\crc8_16_32.c -oDefaultBuild\crc8_16_32.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_99d475ceec4e4163bbc5a7f5e963f9354kyscb0p.em4
#@	compiled at Thu Jul 16 13:41:52 2026

	.file "..\..\SrcCode\crc8_16_32.c"

	$reg_mode 22
	.dbl_size 4

	.public _CcittCrc16
	.public _Crc32Init
	.public _Crc32
	.public _Crc32FinalResult

	.section .text, text
_CcittCrc16:
	.stack _CcittCrc16 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 39
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 45
	andi 0x000000FF, r6, r5
	ld.bu 0x00000000[r7], r9
	xor r9, r5
	add r5, r5
	mov #_CRC16_CCIT_Tab.1, r9
	add r5, r9
	ld.h 0x00000000[r9], r5
	zxh r6
	shr 0x00000008, r6
	xor r5, r6
	add 0x00000001, r7
.BB.LABEL.1_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 0
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 43
	addi 0xFFFFFFFF, r5, r8
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 48
	zxh r6
	mov r6, r10
	jmp [r31]
_bitrev.1:
	.stack _bitrev.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 50
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 57
	andi 0x00000001, r6, r0
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 59
	addi 0xFFFFFFFF, r7, r8
	sub r5, r8
	mov 0x00000001, r9
	shl r8, r9
	or r9, r10
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 61
	add 0x00000001, r5
	shr 0x00000001, r6
.BB.LABEL.2_4:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 55
	cmp r7, r5
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_5:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 64
	jmp [r31]
_Crc32Init:
	.stack _Crc32Init = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 66
	prepare 0x00000201, 0x00000000
	mov r6, r25
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 72
	mov r7, r6
	mov r5, r7
	jarl _bitrev.1, r31
	mov 0x00000000, r5
	br9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; bb8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 78
	andi 0x00000001, r7, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 80
	cmov 0x00000002, 0x00000000, r10, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 78
	shr 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 80
	xor r8, r7
	add 0x00000001, r6
.BB.LABEL.3_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 76
	cmp 0x00000008, r6
	blt9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 87
	mov r5, r6
	shl 0x00000002, r6
	add r25, r6
	st.w r7, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.3_4:	; bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 73
	addi 0xFFFFFF01, r5, r0
	bgt9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb35.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 0
	mov 0x00000000, r6
	mov r5, r7
	br9 .BB.LABEL.3_2
.BB.LABEL.3_6:	; bb40
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 91
	dispose 0x00000000, 0x00000201, [r31]
_Crc32:
	.stack _Crc32 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 93
	mov 0x00000000, r5
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 102
	andi 0x000000FF, r7, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 101
	ld.bu 0x00000000[r8], r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 102
	xor r11, r10
	shl 0x00000002, r10
	add r6, r10
	ld.w 0x00000000[r10], r10
	shr 0x00000008, r7
	xor r10, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 103
	add 0x00000001, r5
	add 0x00000001, r8
.BB.LABEL.4_2:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 99
	cmp r9, r5
	blt9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 106
	mov r7, r10
	jmp [r31]
_Crc32FinalResult:
	.stack _Crc32FinalResult = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 108
	not r7, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/crc8_16_32.c", 113
	jmp [r31]
	.section .const, const
	.align 2
_CRC16_CCIT_Tab.1:
	.ds (2)
	.dhw 0x1189,0x2312,0x329B,0x4624,0x57AD,0x6536,0x74BF,0x8C48,0x9DC1,0xAF5A,0xBED3,0xCA6C
	.dhw 0xDBE5,0xE97E,0xF8F7,0x1081,0x0108,0x3393,0x221A,0x56A5,0x472C,0x75B7,0x643E,0x9CC9
	.dhw 0x8D40,0xBFDB,0xAE52,0xDAED,0xCB64,0xF9FF,0xE876,0x2102,0x308B,0x0210,0x1399,0x6726
	.dhw 0x76AF,0x4434,0x55BD,0xAD4A,0xBCC3,0x8E58,0x9FD1,0xEB6E,0xFAE7,0xC87C,0xD9F5,0x3183
	.dhw 0x200A,0x1291,0x0318,0x77A7,0x662E,0x54B5,0x453C,0xBDCB,0xAC42,0x9ED9,0x8F50,0xFBEF
	.dhw 0xEA66,0xD8FD,0xC974,0x4204,0x538D,0x6116,0x709F,0x0420,0x15A9,0x2732,0x36BB,0xCE4C
	.dhw 0xDFC5,0xED5E,0xFCD7,0x8868,0x99E1,0xAB7A,0xBAF3,0x5285,0x430C,0x7197,0x601E,0x14A1
	.dhw 0x0528,0x37B3,0x263A,0xDECD,0xCF44,0xFDDF,0xEC56,0x98E9,0x8960,0xBBFB,0xAA72,0x6306
	.dhw 0x728F,0x4014,0x519D,0x2522,0x34AB,0x0630,0x17B9,0xEF4E,0xFEC7,0xCC5C,0xDDD5,0xA96A
	.dhw 0xB8E3,0x8A78,0x9BF1,0x7387,0x620E,0x5095,0x411C,0x35A3,0x242A,0x16B1,0x0738,0xFFCF
	.dhw 0xEE46,0xDCDD,0xCD54,0xB9EB,0xA862,0x9AF9,0x8B70,0x8408,0x9581,0xA71A,0xB693,0xC22C
	.dhw 0xD3A5,0xE13E,0xF0B7,0x0840,0x19C9,0x2B52,0x3ADB,0x4E64,0x5FED,0x6D76,0x7CFF,0x9489
	.dhw 0x8500,0xB79B,0xA612,0xD2AD,0xC324,0xF1BF,0xE036,0x18C1,0x0948,0x3BD3,0x2A5A,0x5EE5
	.dhw 0x4F6C,0x7DF7,0x6C7E,0xA50A,0xB483,0x8618,0x9791,0xE32E,0xF2A7,0xC03C,0xD1B5,0x2942
	.dhw 0x38CB,0x0A50,0x1BD9,0x6F66,0x7EEF,0x4C74,0x5DFD,0xB58B,0xA402,0x9699,0x8710,0xF3AF
	.dhw 0xE226,0xD0BD,0xC134,0x39C3,0x284A,0x1AD1,0x0B58,0x7FE7,0x6E6E,0x5CF5,0x4D7C,0xC60C
	.dhw 0xD785,0xE51E,0xF497,0x8028,0x91A1,0xA33A,0xB2B3,0x4A44,0x5BCD,0x6956,0x78DF,0x0C60
	.dhw 0x1DE9,0x2F72,0x3EFB,0xD68D,0xC704,0xF59F,0xE416,0x90A9,0x8120,0xB3BB,0xA232,0x5AC5
	.dhw 0x4B4C,0x79D7,0x685E,0x1CE1,0x0D68,0x3FF3,0x2E7A,0xE70E,0xF687,0xC41C,0xD595,0xA12A
	.dhw 0xB0A3,0x8238,0x93B1,0x6B46,0x7ACF,0x4854,0x59DD,0x2D62,0x3CEB,0x0E70,0x1FF9,0xF78F
	.dhw 0xE606,0xD49D,0xC514,0xB1AB,0xA022,0x92B9,0x8330,0x7BC7,0x6A4E,0x58D5,0x495C,0x3DE3
	.dhw 0x2C6A,0x1EF1,0x0F78
