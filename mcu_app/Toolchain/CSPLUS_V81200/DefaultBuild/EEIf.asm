#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Memory\EEIf\EEIf.c -oDefaultBuild\EEIf.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e30c6652761844fc853e593cd5e1325ealdkshbf.zs0
#@	compiled at Fri Mar 27 09:50:41 2026

	.file "..\..\Bsw\Memory\EEIf\EEIf.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Fls_GstConfiguration
	.public _FeeUser_Data_Store, 64
	.public _startStr, 2
	.public _endStr, 2
	.public _SourceAddress, 4
	.extern _Fls_Read
	.extern _Fls_MainFunction
	.extern _Fls_GetStatus
	.extern _Fls_Erase
	.extern _Fls_Write
	.public _EEIf_Init
	.extern _Fls_Init
	.public _EEIf_DeInit
	.public _EEIf_Write
	.public _EEIf_Read
	.public _ValidSectorAdd

	.section .text, text
_CommF_DataCopy.1:
	.stack _CommF_DataCopy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 69
	cmp r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 74
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; entry.bb31_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 81
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r6, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.1_4:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 79
	cmp r8, r2
	bl9 .BB.LABEL.1_3
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 84
	jmp [r31]
_DataReadByAddr.1:
	.stack _DataReadByAddr.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 86
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 89
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 91
	movhi 0x000000E0, r6, r6
	mov 0x00000002, r8
	movea 0x00000002, r3, r7
	jarl _Fls_Read, r31
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 95
	jarl _Fls_MainFunction, r31
.BB.LABEL.2_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 93
	jarl _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	movea 0x00000002, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 98
	ld.b 0x00000000[r2], r10
	shl 0x00000008, r10
	ld.bu 0x00000003[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 100
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 101
	zxh r10
	dispose 0x00000004, 0x00000001, [r31]
_DataReadProcess.1:
	.stack _DataReadProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 103
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 107
	jarl _Fls_Read, r31
	mov r10, r20
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 110
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 111
	jarl _Fls_GetStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 108
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 115
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_DataCompare.1:
	.stack _DataCompare.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 131
	mov 0x00000000, r2
	br9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 138
	andi 0x000000FF, r2, r5
	mov r6, r9
	add r5, r9
	ld.bu 0x00000000[r9], r9
	add r7, r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r9
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	add 0x00000001, r2
.BB.LABEL.4_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 136
	andi 0x000000FF, r2, r5
	cmp r8, r5
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_4:	; bb22.bb31_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; bb.bb31_crit_edge
	mov 0x00000001, r10
.BB.LABEL.4_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 145
	jmp [r31]
_IsDateValid.1:
	.stack _IsDateValid.1 = 68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 161
	prepare 0x00000001, 0x00000040
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 165
	jarl _DataReadBlockProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 166
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 168
	mov #_FeeUser_Data_Store, r7
	mov r3, r6
	jarl _DataCompare.1, r31
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 172
	dispose 0x00000040, 0x00000001, [r31]
_DataEraseProcess.1:
	.stack _DataEraseProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 188
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 192
	jarl _Fls_Erase, r31
	mov r10, r20
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 195
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 196
	jarl _Fls_GetStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 193
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_1
.BB.LABEL.6_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 200
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_DataWriteProcess.1:
	.stack _DataWriteProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 216
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 220
	jarl _Fls_Write, r31
	mov r10, r20
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 223
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 224
	jarl _Fls_GetStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 221
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.7_1
.BB.LABEL.7_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 228
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_EEIf_Init:
	.stack _EEIf_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 244
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 247
	mov #_Fls_GstConfiguration, r6
	jarl _Fls_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_EEIf_DeInit:
	.stack _EEIf_DeInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 265
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 270
	jmp [r31]
_EEIf_Write:
	.stack _EEIf_Write = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 288
	prepare 0x00000071, 0x00000000
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 305
	mov #_FeeUser_Data_Store, r5
	movea 0xFFFFFFA5, r0, r7
	st.b r7, 0x00000000[r5]
	movea 0x00000032, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 306
	st.b r7, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 307
	add r5, r6
	mov r8, r7
	mov r2, r8
	jarl _CommF_DataCopy.1, r31
	movhi 0x0000FF20, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 309
	jarl _DataReadByAddr.1, r31
	mov r10, r20
	mov 0xFF201FC0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 310
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 312
	cmp r2, r20
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	ori 0x0000FFFF, r0, r2
	cmp r2, r10
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; entry.if_break_bb43_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.10_6
.BB.LABEL.10_3:	; if_then_bb
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 314
	mov #_FeeUser_Data_Store, r7
	movea 0x00002000, r0, r6
	jarl _DataWriteProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 315
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 317
	jarl _IsDateValid.1, r31
.BB.LABEL.10_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	movea 0x00002000, r0, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 320
	jarl _DataEraseProcess.1, r31
.BB.LABEL.10_6:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 322
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.10_12
.BB.LABEL.10_7:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0xFF202000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 326
	jarl _DataReadByAddr.1, r31
	mov r10, r21
	mov 0xFF203FC0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 327
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 328
	cmp r2, r21
	bz9 .BB.LABEL.10_12
.BB.LABEL.10_8:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	ori 0x0000FFFF, r0, r2
	cmp r2, r10
	bz9 .BB.LABEL.10_12
.BB.LABEL.10_9:	; if_then_bb71
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 330
	mov #_FeeUser_Data_Store, r7
	mov 0x00000000, r6
	jarl _DataWriteProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 332
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 334
	jarl _IsDateValid.1, r31
.BB.LABEL.10_11:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	movea 0x00002000, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 337
	mov r6, r7
	jarl _DataEraseProcess.1, r31
	mov r10, r20
.BB.LABEL.10_12:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 341
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.10_20
.BB.LABEL.10_13:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0xFF202000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 344
	mov r21, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 345
	cmp r2, r10
	movhi 0x0000FF20, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 347
	cmov 0x00000002, r2, r21, r21
	mov 0x00000000, r22
	br9 .BB.LABEL.10_19
.BB.LABEL.10_14:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 351
	mov r22, r6
	shl 0x00000006, r6
	add r21, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 352
	cmp r2, r10
	bnz9 .BB.LABEL.10_18
.BB.LABEL.10_15:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 355
	shl 0x00000006, r22
	add r22, r21
	movhi 0x000000E0, r21, r6
	movea 0x00000040, r0, r8
	mov #_FeeUser_Data_Store, r7
	jarl _DataWriteProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 356
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_17
.BB.LABEL.10_16:	; if_then_bb112.if_break_bb138_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov r10, r20
	br9 .BB.LABEL.10_20
.BB.LABEL.10_17:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 358
	jarl _IsDateValid.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.10_18:	; if_break_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	add 0x00000001, r22
.BB.LABEL.10_19:	; bb131
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 349
	cmp r2, r22
	bl9 .BB.LABEL.10_14
.BB.LABEL.10_20:	; if_break_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 366
	dispose 0x00000000, 0x00000071, [r31]
_DataReadBlockProcess.1:
	.stack _DataReadBlockProcess.1 = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 367
	prepare 0x00000079, 0x00000040
	mov r6, r20
	movhi 0x0000FF20, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 381
	mov r21, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 383
	cmp r22, r10
	mov 0xFF202000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 385
	cmov 0x00000002, r2, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 387
	mov r21, r6
	jarl _DataReadByAddr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 389
	cmp r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 391
	cmov 0x00000002, 0xFFFFFFFF, r21, r21
	mov 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 394
	cmp 0xFFFFFFFF, r21
	bz9 .BB.LABEL.11_10
.BB.LABEL.11_1:	; entry.bb63_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.11_9
.BB.LABEL.11_2:	; bb
	movea 0x00000040, r0, r8
	mov r3, r7
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 400
	mov r8, r5
	add r7, r5
	mov r7, r6
	br9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; bb
	st.b r2, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.11_4:	; bb
	cmp r6, r5
	bnz9 .BB.LABEL.11_3
.BB.LABEL.11_5:	; bb
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 399
	mov r22, r2
	shl 0x00000006, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 401
	movhi 0x000000E0, r2, r6
	jarl _DataReadProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 402
	ld.bu 0x00000000[r3], r2
	addi 0xFFFFFF5B, r2, r0
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_6:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	ld.bu 0x00000001[r3], r2
	addi 0xFFFFFFCE, r2, r0
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_then_bb57
	movea 0x00000040, r0, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 405
	mov r20, r6
	jarl _CommF_DataCopy.1, r31
	mov 0x00000000, r23
.BB.LABEL.11_8:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	add 0x00000001, r22
.BB.LABEL.11_9:	; bb63
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 397
	cmp r2, r22
	bl9 .BB.LABEL.11_2
.BB.LABEL.11_10:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 415
	andi 0x000000FF, r23, r10
	dispose 0x00000040, 0x00000079, [r31]
_EEIf_Read:
	.stack _EEIf_Read = 88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 433
	prepare 0x00000479, 0x00000040
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0xFF202000, r7
	movhi 0x0000FF20, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 445
	jarl _ValidSectorAdd, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 446
	cmp 0xFFFFFFFF, r10
	mov r10, r23
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_1:	; entry.bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0x00000000, r24
	br9 .BB.LABEL.12_9
.BB.LABEL.12_2:	; bb
	movea 0x0000007F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 450
	sub r24, r2
	shl 0x00000006, r2
	add r23, r2
	movhi HIGHW1(#_SourceAddress), r0, r5
	st.w r2, LOWW(#_SourceAddress)[r5]
	movea 0x00000040, r0, r8
	mov r3, r7
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 451
	mov r8, r6
	add r7, r6
	mov r7, r9
	br9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb
	st.b r2, 0x00000000[r9]
	add 0x00000001, r9
.BB.LABEL.12_4:	; bb
	cmp r9, r6
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_5:	; bb
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 452
	ld.w LOWW(#_SourceAddress)[r5], r2
	movhi 0x000000E0, r2, r6
	jarl _DataReadProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 453
	ld.bu 0x00000000[r3], r2
	addi 0xFFFFFF5B, r2, r0
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_6:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	ld.bu 0x00000001[r3], r2
	addi 0xFFFFFFCE, r2, r0
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb43
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 456
	add r20, r7
	mov r22, r6
	mov r21, r8
	jarl _CommF_DataCopy.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 458
	dispose 0x00000040, 0x00000479, [r31]
.BB.LABEL.12_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	add 0x00000001, r24
.BB.LABEL.12_9:	; bb52
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 448
	cmp r2, r24
	bl9 .BB.LABEL.12_2
.BB.LABEL.12_10:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 464
	dispose 0x00000040, 0x00000479, [r31]
_ValidSectorAdd:
	.stack _ValidSectorAdd = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 481
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 484
	jarl _DataReadByAddr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 485
	mov r21, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 488
	cmp r2, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	ori 0x0000FFFF, r0, r2
	cmp r2, r22
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_2:	; if_else_bb
	ori 0x0000FFFF, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 492
	cmp r20, r10
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	ori 0x0000FFFF, r0, r20
	cmp r20, r22
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_4:	; if_else_bb.if_break_bb44_crit_edge
	mov r21, r20
.BB.LABEL.13_5:	; if_break_bb44
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 501
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.13_6:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/EEIf/EEIf.c", 498
	dispose 0x00000000, 0x00000071, [r31]
	.section .bss, bss
_FeeUser_Data_Store:
	.ds (64)
	.section .data, data
	.align 2
_startStr:
	.ds (2)
	.align 2
_endStr:
	.ds (2)
	.align 4
_SourceAddress:
	.ds (4)
