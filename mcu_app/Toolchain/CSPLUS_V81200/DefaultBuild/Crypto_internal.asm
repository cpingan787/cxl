#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\Crypto_internal.c -oDefaultBuild\Crypto_internal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_702145ed7f324fdc931460e5ba1706ccwxjdcz2m.oge
#@	compiled at Fri Mar 27 09:50:49 2026

	.file "..\..\Bsw\Crypto\CRYPTO\Crypto_internal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Crypto_Key
	.extern _CryptoKeyStatus
	.extern _Det_ReportError
	.public _Crypto_KeyElementIndexFind
	.public _Get_Key
	.public _Crypto_KeyElementSetInternal
	.public _Crypto_memset
	.public _Crypto_memsetVal
	.public _Crypto_memcpy

	.section .text, text
_Crypto_ReportDetErr.1:
	.stack _Crypto_ReportDetErr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.h", 62
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000072, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.h", 64
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_KeyElementIndexFind:
	.stack _Crypto_KeyElementIndexFind = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 72
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 81
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.2_6
.BB.LABEL.2_2:	; if_then_bb
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 83
	mov r6, r7
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 91
	ld.w 0x00000004[r5], r5
	mov r2, r9
	mul 0x00000024, r9, r0
	add r9, r5
	ld.w 0x00000008[r5], r5
	cmp r5, r7
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 93
	st.w r2, 0x00000000[r8]
	mov 0x00000000, r20
	br9 .BB.LABEL.2_8
.BB.LABEL.2_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	add 0x00000001, r2
.BB.LABEL.2_6:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 89
	mov r6, r5
	shl 0x00000003, r5
	mov #_Crypto_Key, r20
	add r5, r20
	ld.w 0x00000004[r20], r5
	ld.bu 0x00000000[r5], r20
	cmp r20, r2
	bl9 .BB.LABEL.2_3
.BB.LABEL.2_7:	; bb28.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov 0x00000001, r20
.BB.LABEL.2_8:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 100
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 102
	mov r6, r7
	jarl _Crypto_ReportDetErr.1, r31
.BB.LABEL.2_10:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 107
	dispose 0x00000000, 0x00000041, [r31]
_Get_Key:
	.stack _Get_Key = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 110
	prepare 0x00000061, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 118
	mov r8, r7
	mov r2, r8
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 119
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 121
	mov r20, r2
	shl 0x00000002, r2
	mov #_CryptoKeyStatus, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb.if_break_bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov 0x00000006, r10
	br9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; if_then_bb.bb41_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 128
	andi 0x0000FFFF, r2, r7
	mov r21, r8
	add r7, r8
	mul 0x00000024, r5, r0
	add r5, r6
	ld.w 0x0000000C[r6], r5
	add r5, r7
	ld.b 0x00000000[r7], r5
	st.b r5, 0x00000000[r8]
	add 0x00000001, r2
.BB.LABEL.3_5:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 123
	mov r20, r5
	shl 0x00000003, r5
	mov #_Crypto_Key, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x00000004[r5], r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	mul 0x00000024, r7, r0
	add r6, r7
	ld.w 0x00000018[r7], r7
	andi 0x0000FFFF, r2, r8
	cmp r7, r8
	bl9 .BB.LABEL.3_4
.BB.LABEL.3_6:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 139
	dispose 0x00000004, 0x00000061, [r31]
_Crypto_KeyElementSetInternal:
	.stack _Crypto_KeyElementSetInternal = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 142
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r8, r21
	mov r9, r22
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 152
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 154
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 157
	shl 0x00000003, r20
	mov #_Crypto_Key, r2
	add r20, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r2
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r3], r6
	mul 0x00000024, r6, r0
	add r6, r5
	ld.w 0x00000018[r5], r5
	cmp r5, r22
	bh9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_then_bb.if_break_bb68_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.4_7
.BB.LABEL.4_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 162
	add r6, r7
	ld.w 0x0000000C[r7], r6
	andi 0x0000FFFF, r5, r7
	add r7, r6
	add r21, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.4_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 160
	andi 0x0000FFFF, r5, r6
	cmp r22, r6
	ld.w 0x00000000[r2], r6
	ld.w 0x00000004[r6], r7
	ld.w 0x00000000[r3], r6
	mul 0x00000024, r6, r0
	bl9 .BB.LABEL.4_4
.BB.LABEL.4_6:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 166
	add r6, r7
	ld.w 0x00000020[r7], r2
	st.w r22, 0x00000000[r2]
	mov 0x00000000, r10
.BB.LABEL.4_7:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 172
	dispose 0x00000004, 0x00000071, [r31]
_Crypto_memset:
	.stack _Crypto_memset = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 176
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 180
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_3
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 184
	st.b r0, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.5_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 182
	addi 0xFFFFFFFF, r2, r7
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 187
	jmp [r31]
_Crypto_memsetVal:
	.stack _Crypto_memsetVal = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 189
	cmp 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 193
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_3
	br9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 197
	st.b r7, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.6_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 195
	addi 0xFFFFFFFF, r2, r8
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 200
	jmp [r31]
_Crypto_memcpy:
	.stack _Crypto_memcpy = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 202
	cmp 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 205
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_2:	; entry
	cmp 0x00000000, r7
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_3:	; entry.bb42_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 213
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r6, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.7_5:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 211
	cmp r8, r2
	bl9 .BB.LABEL.7_4
.BB.LABEL.7_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.c", 216
	jmp [r31]
