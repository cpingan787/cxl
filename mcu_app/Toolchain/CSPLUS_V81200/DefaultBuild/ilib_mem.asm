#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\IStd\ilib_mem.c -oDefaultBuild\ilib_mem.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_51e153ccb0394422887f5b1969a72308ocspjiwn.lzq
#@	compiled at Fri Mar 27 09:50:22 2026

	.file "..\..\Bsw\Libraries\IStd\ilib_mem.c"

	$reg_mode 32
	.dbl_size 8

	.public _ILib_memcpy
	.public _ILib_memset
	.public _ILib_memcmp

	.section .text, text
_ILib_memcpy:
	.stack _ILib_memcpy = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 169
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 174
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 178
	andi 0x00000003, r6, r0
	mov r6, r20
	mov r20, r6
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 180
	addi 0x00000003, r20, r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 181
	cmp r8, r2
	bnh9 .BB.LABEL.1_3
	jr .BB.LABEL.1_23
.BB.LABEL.1_2:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 188
	ld.b 0x00000000[r7], r5
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 190
	add 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 189
	add 0x00000001, r6
.BB.LABEL.1_3:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 186
	cmp r2, r6
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 194
	andi 0x00000003, r7, r0
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_5:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 196
	cmp r2, r8
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb79.bb119_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; bb84
	addi 0xFFFFFFF0, r8, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 199
	ld.w 0x00000000[r7], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 200
	ld.w 0x00000004[r7], r5
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 201
	ld.w 0x00000008[r7], r5
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 202
	ld.w 0x0000000C[r7], r5
	st.w r5, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 204
	movea 0x00000010, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 203
	movea 0x00000010, r7, r7
.BB.LABEL.1_9:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 197
	cmp r2, r6
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_10:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0xFFFFFFFC, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 206
	and r8, r2
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 209
	ld.w 0x00000000[r7], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 211
	add 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 210
	add 0x00000004, r6
.BB.LABEL.1_12:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 207
	cmp r2, r6
	bl9 .BB.LABEL.1_11
	br9 .BB.LABEL.1_23
.BB.LABEL.1_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 217
	andi 0x00000003, r7, r2
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 219
	sub r2, r5
	shl 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 218
	mov r7, r9
	shl 0x0000001E, r9
	shr 0x0000001B, r9
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 220
	cmp r10, r8
	bh9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; if_else_bb.bb175_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb169
	addi 0xFFFFFFF0, r8, r10
.BB.LABEL.1_16:	; bb175
	mov 0xFFFFFFFC, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 221
	and r11, r7
	br9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 226
	ld.w 0x00000000[r7], r11
	shr r9, r11
	ld.w 0x00000004[r7], r12
	shl r5, r12
	or r12, r11
	st.w r11, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 227
	ld.w 0x00000004[r7], r11
	shr r9, r11
	ld.w 0x00000008[r7], r12
	shl r5, r12
	or r12, r11
	st.w r11, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 228
	ld.w 0x00000008[r7], r11
	shr r9, r11
	ld.w 0x0000000C[r7], r12
	shl r5, r12
	or r12, r11
	st.w r11, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 229
	ld.w 0x0000000C[r7], r11
	shr r9, r11
	ld.w 0x00000010[r7], r12
	shl r5, r12
	or r12, r11
	st.w r11, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 238
	movea 0x00000010, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 229
	movea 0x00000010, r7, r7
.BB.LABEL.1_18:	; bb241
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 223
	cmp r10, r6
	bl9 .BB.LABEL.1_17
.BB.LABEL.1_19:	; bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0xFFFFFFFC, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 240
	and r8, r10
	br9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 244
	ld.w 0x00000000[r7], r11
	shr r9, r11
	ld.w 0x00000004[r7], r12
	shl r5, r12
	or r12, r11
	st.w r11, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 248
	add 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 244
	add 0x00000004, r7
.BB.LABEL.1_21:	; bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 241
	cmp r10, r6
	bl9 .BB.LABEL.1_20
.BB.LABEL.1_22:	; bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 250
	add r2, r7
.BB.LABEL.1_23:	; if_break_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	jarl _ILib_endMemcpy.1, r31
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 257
	dispose 0x00000000, 0x00000041, [r31]
_ILib_memset:
	.stack _ILib_memset = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 271
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 276
	mov r6, r2
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 279
	cmp 0x00000003, r8
	mov r6, r20
	bnh9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; entry.bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r5
	mov r7, r6
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 287
	shl 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 289
	or r7, r6
	add 0x00000001, r5
.BB.LABEL.2_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 282
	cmp 0x00000004, r5
	bl9 .BB.LABEL.2_2
.BB.LABEL.2_4:	; bb27.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov r6, r7
.BB.LABEL.2_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 292
	andi 0x00000003, r20, r0
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_break_bb.if_break_bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov r20, r6
	br9 .BB.LABEL.2_10
.BB.LABEL.2_7:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 295
	addi 0x00000003, r20, r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	mov r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 296
	cmp r2, r5
	bnh9 .BB.LABEL.2_9
	br9 .BB.LABEL.2_18
.BB.LABEL.2_8:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 303
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 304
	add 0x00000001, r6
.BB.LABEL.2_9:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 301
	cmp r5, r6
	bl9 .BB.LABEL.2_8
.BB.LABEL.2_10:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 308
	cmp r5, r2
	bh9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_break_bb85.bb115_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.2_14
.BB.LABEL.2_12:	; bb90
	addi 0xFFFFFFF0, r2, r5
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 311
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 312
	st.w r7, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 313
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 314
	st.w r7, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 315
	movea 0x00000010, r6, r6
.BB.LABEL.2_14:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 309
	cmp r5, r6
	bl9 .BB.LABEL.2_13
.BB.LABEL.2_15:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0xFFFFFFFC, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 317
	and r2, r5
	br9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 320
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 321
	add 0x00000004, r6
.BB.LABEL.2_17:	; bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 318
	cmp r5, r6
	bl9 .BB.LABEL.2_16
.BB.LABEL.2_18:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov r2, r8
	jarl _ILib_endMemset.1, r31
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 327
	dispose 0x00000000, 0x00000041, [r31]
_ILib_memcmp:
	.stack _ILib_memcmp = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 340
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 345
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 348
	andi 0x00000003, r6, r0
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 350
	addi 0x00000003, r6, r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 351
	cmp r8, r2
	bnh9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 353
	jarl _ILib_endMemcmp.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_3:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 357
	ld.bu 0x00000000[r6], r5
	ld.bu 0x00000000[r7], r9
	cmp r9, r5
	bnz17 .BB.LABEL.3_36
.BB.LABEL.3_4:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 362
	add 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 361
	add 0x00000001, r6
.BB.LABEL.3_5:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 355
	cmp r2, r6
	bl9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 366
	andi 0x00000003, r7, r0
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_7:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 368
	cmp r2, r8
	bh9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb88.bb168_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.3_15
.BB.LABEL.3_9:	; bb93
	addi 0xFFFFFFF0, r8, r2
	br9 .BB.LABEL.3_15
.BB.LABEL.3_10:	; bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 371
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r7], r9
	cmp r9, r5
	bnz17 .BB.LABEL.3_36
.BB.LABEL.3_11:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	ld.w 0x00000004[r6], r5
	ld.w 0x00000004[r7], r9
	cmp r9, r5
	bnz17 .BB.LABEL.3_36
.BB.LABEL.3_12:	; bb128
	ld.w 0x00000008[r6], r5
	ld.w 0x00000008[r7], r9
	cmp r9, r5
	bnz17 .BB.LABEL.3_36
.BB.LABEL.3_13:	; bb144
	ld.w 0x0000000C[r6], r5
	ld.w 0x0000000C[r7], r9
	cmp r9, r5
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_14:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 376
	movea 0x00000010, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 375
	movea 0x00000010, r7, r7
.BB.LABEL.3_15:	; bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 369
	cmp r2, r6
	bl9 .BB.LABEL.3_10
.BB.LABEL.3_16:	; bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0xFFFFFFFC, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 378
	and r8, r2
	br9 .BB.LABEL.3_19
.BB.LABEL.3_17:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 381
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r7], r9
	cmp r9, r5
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_18:	; if_break_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 386
	add 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 385
	add 0x00000004, r6
.BB.LABEL.3_19:	; bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 379
	cmp r2, r6
	bl9 .BB.LABEL.3_17
	br9 .BB.LABEL.3_35
.BB.LABEL.3_20:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 392
	andi 0x00000003, r7, r2
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 394
	sub r2, r5
	shl 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 393
	mov r7, r9
	shl 0x0000001E, r9
	shr 0x0000001B, r9
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 395
	cmp r10, r8
	bh9 .BB.LABEL.3_22
.BB.LABEL.3_21:	; if_else_bb.bb231_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_23
.BB.LABEL.3_22:	; bb225
	addi 0xFFFFFFF0, r8, r10
.BB.LABEL.3_23:	; bb231
	mov 0xFFFFFFFC, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 396
	and r11, r7
	br9 .BB.LABEL.3_29
.BB.LABEL.3_24:	; bb240
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 401
	ld.w 0x00000000[r7], r11
	shr r9, r11
	ld.w 0x00000004[r7], r12
	shl r5, r12, r13
	or r13, r11
	ld.w 0x00000000[r6], r13
	cmp r13, r11
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_25:	; bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	ld.w 0x00000008[r7], r11
	shl r5, r11
	shr r9, r12
	or r11, r12
	ld.w 0x00000004[r6], r11
	cmp r11, r12
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_26:	; bb281
	ld.w 0x00000008[r7], r11
	shr r9, r11
	ld.w 0x0000000C[r7], r12
	shl r5, r12
	or r12, r11
	ld.w 0x00000008[r6], r12
	cmp r12, r11
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_27:	; bb305
	ld.w 0x0000000C[r7], r11
	shr r9, r11
	ld.w 0x00000010[r7], r12
	shl r5, r12
	or r12, r11
	ld.w 0x0000000C[r6], r12
	cmp r12, r11
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_28:	; if_break_bb332
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 415
	movea 0x00000010, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 414
	movea 0x00000010, r7, r7
.BB.LABEL.3_29:	; bb337
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 398
	cmp r10, r6
	bl9 .BB.LABEL.3_24
.BB.LABEL.3_30:	; bb345
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0xFFFFFFFC, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 417
	and r8, r10
	br9 .BB.LABEL.3_33
.BB.LABEL.3_31:	; bb351
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 421
	ld.w 0x00000000[r7], r11
	shr r9, r11
	ld.w 0x00000004[r7], r12
	shl r5, r12
	or r12, r11
	ld.w 0x00000000[r6], r12
	cmp r12, r11
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_32:	; if_break_bb370
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 428
	add 0x00000004, r6
	add 0x00000004, r7
.BB.LABEL.3_33:	; bb375
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 418
	cmp r10, r6
	bl9 .BB.LABEL.3_31
.BB.LABEL.3_34:	; bb383
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 430
	add r2, r7
.BB.LABEL.3_35:	; if_break_bb389
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 434
	jarl _ILib_endMemcmp.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_36:	; bb397
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 435
	dispose 0x00000000, 0x00000001, [r31]
_ILib_endMemcmp.1:
	.stack _ILib_endMemcmp.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 439
	br9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 448
	ld.bu 0x00000000[r6], r2
	ld.bu 0x00000000[r7], r5
	cmp r5, r2
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 454
	add 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 453
	add 0x00000001, r6
.BB.LABEL.4_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 446
	cmp r8, r6
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_4:	; bb31.bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; bb.bb40_crit_edge
	mov 0x00000001, r10
.BB.LABEL.4_6:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 458
	jmp [r31]
_ILib_endMemcpy.1:
	.stack _ILib_endMemcpy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 460
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 468
	ld.b 0x00000000[r7], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 470
	add 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 469
	add 0x00000001, r6
.BB.LABEL.5_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 466
	cmp r8, r6
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 472
	jmp [r31]
_ILib_endMemset.1:
	.stack _ILib_endMemset.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 474
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 481
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 482
	add 0x00000001, r6
.BB.LABEL.6_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 479
	cmp r8, r6
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_mem.c", 484
	jmp [r31]
