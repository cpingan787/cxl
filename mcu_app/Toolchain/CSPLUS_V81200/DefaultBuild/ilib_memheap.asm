#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\IStd\ilib_memheap.c -oDefaultBuild\ilib_memheap.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7024a3f26a184ce1976bba5ac8718e5cxzq4eerj.q4x
#@	compiled at Fri Mar 27 09:50:23 2026

	.file "..\..\Bsw\Libraries\IStd\ilib_memheap.c"

	$reg_mode 32
	.dbl_size 8

	.public _ILib_MemHeapInit
	.extern _ILib_memset
	.public _ILib_MemHeapMalloc
	.public _ILib_MemHeapCalloc
	.public _ILib_MemHeapFree
	.public _ILib_MemHeapGetManageSize
	.public _ILib_MemHeapGetRealMaxSize
	.public _ILib_MemHeapGetUsedSize
	.public _ILib_MemHeapGetCurFreeMaxBlockSize
	.public _ILib_MemHeapGetMaxMallocSize

	.section .text, text
_MemHeap_LSBIT.1:
	.stack _MemHeap_LSBIT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 206
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 209
	subr r0, r2
	and r2, r6
	movhi 0x00000001, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 211
	cmp r2, r6
	bnc9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	movea 0x00000100, r0, r2
	cmp r2, r6
	mov 0x00000008, r2
	cmov 0x00000001, 0x00000000, r2, r10
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb17
	movhi 0x00000100, r0, r2
	cmp r2, r6
	movea 0x00000018, r0, r2
	movea 0x00000010, r0, r5
	cmov 0x00000001, r5, r2, r10
.BB.LABEL.1_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 212
	shr r10, r6
	shl 0x00000002, r6
	mov #_MemHeap_Table.1, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 214
	jmp [r31]
_MemHeap_MSBIT.1:
	.stack _MemHeap_MSBIT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 222
	movhi 0x00000001, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 227
	cmp r2, r6
	bnc9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	movea 0x00000100, r0, r2
	cmp r2, r6
	mov 0x00000008, r2
	cmov 0x00000001, 0x00000000, r2, r10
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb14
	movhi 0x00000100, r0, r2
	cmp r2, r6
	movea 0x00000018, r0, r2
	movea 0x00000010, r0, r5
	cmov 0x00000001, r5, r2, r10
.BB.LABEL.2_3:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 228
	shr r10, r6
	shl 0x00000002, r6
	mov #_MemHeap_Table.1, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 230
	jmp [r31]
_MemHeap_MatchNextIndex.1:
	.stack _MemHeap_MatchNextIndex.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 239
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 243
	ld.w 0x00000000[r6], r2
	movea 0x0000001F, r0, r5
	cmp r5, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bh9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 245
	st.w r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 246
	ld.w 0x00000000[r22], r2
	shr 0x00000002, r2
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 251
	mov r2, r6
	jarl _MemHeap_MSBIT.1, r31
	add 0xFFFFFFFD, r10
	mov 0x00000001, r23
	shl r10, r23
	add 0xFFFFFFFF, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 255
	ld.w 0x00000000[r22], r6
	add r23, r6
	st.w r6, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 258
	jarl _MemHeap_MSBIT.1, r31
	st.w r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 259
	add 0xFFFFFFFD, r10
	ld.w 0x00000000[r22], r2
	shr r10, r2
	add 0xFFFFFFF8, r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 260
	ld.w 0x00000000[r21], r2
	add 0xFFFFFFFC, r2
	st.w r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 263
	zxh r23
	xori 0x0000FFFF, r23, r2
	ld.w 0x00000000[r22], r5
	and r2, r5
	st.w r5, 0x00000000[r22]
	dispose 0x00000000, 0x00000079, [r31]
_MemHeap_MatchIndex.1:
	.stack _MemHeap_MatchIndex.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 274
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 276
	addi 0xFFFFFFE1, r6, r0
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bgt9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 282
	st.w r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 283
	shr 0x00000002, r22
	st.w r22, 0x00000000[r20]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 287
	mov r22, r6
	jarl _MemHeap_MSBIT.1, r31
	st.w r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 289
	add 0xFFFFFFFD, r10
	shr r10, r22
	add 0xFFFFFFF8, r22
	st.w r22, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 292
	ld.w 0x00000000[r21], r2
	add 0xFFFFFFFC, r2
	st.w r2, 0x00000000[r21]
	dispose 0x00000000, 0x00000071, [r31]
_MemHeap_FindFirstFreeBlock.1:
	.stack _MemHeap_FindFirstFreeBlock.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 304
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 306
	ld.w 0x00000000[r8], r2
	mov 0xFFFFFFFF, r5
	shl r2, r5
	ld.w 0x00000000[r7], r2
	mov r6, r9
	add r2, r9
	ld.bu 0x00000008[r9], r9
	and r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 309
	cmp 0x00000000, r9
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 311
	mov r9, r6
	jarl _MemHeap_LSBIT.1, r31
	st.w r10, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 312
	ld.w 0x00000000[r21], r2
	shl 0x00000004, r2
	add r10, r10
	add r10, r2
	add r22, r2
	ld.hu 0x00000014[r2], r20
	cmp 0x00000000, r20
	movea 0x00000014, r2, r2
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_2:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 314
	ld.hu 0x00000000[r2], r2
	mov r22, r10
	add r2, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.5_3:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 324
	ld.hu 0x00000006[r22], r6
	add 0x00000001, r2
	mov 0xFFFFFFFF, r5
	shl r2, r5
	and r5, r6
	jarl _MemHeap_LSBIT.1, r31
	st.w r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 325
	cmp 0x0000000B, r10
	bh9 .BB.LABEL.5_7
.BB.LABEL.5_4:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 327
	ld.w 0x00000000[r21], r2
	add r22, r2
	ld.bu 0x00000008[r2], r6
	jarl _MemHeap_LSBIT.1, r31
	st.w r10, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 328
	add r10, r10
	ld.w 0x00000000[r21], r21
	shl 0x00000004, r21
	add r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 327
	add r22, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 328
	ld.hu 0x00000014[r21], r2
	cmp 0x00000000, r2
	movea 0x00000014, r21, r21
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 330
	ld.hu 0x00000000[r21], r21
	mov r22, r10
	add r21, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.5_7:	; if_else_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 339
	st.w r0, 0x00000000[r21]
.BB.LABEL.5_8:	; if_break_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 343
	dispose 0x00000000, 0x00000071, [r31]
_MemHeap_ExtractBlockDirect.1:
	.stack _MemHeap_ExtractBlockDirect.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 355
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 360
	shl 0x00000004, r2
	mov r9, r5
	add r5, r5
	add r5, r2
	add r6, r2
	ld.hu 0x00000006[r7], r5
	st.h r5, 0x00000014[r2]
	movea 0x00000014, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 361
	cmp 0x00000000, r5
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 364
	ld.hu 0x00000000[r2], r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 365
	cmp 0x00000000, r6
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 369
	st.h r0, 0x00000004[r6]
	br9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 374
	mov r8, r2
	add r6, r2
	ld.b 0x00000008[r2], r5
	mov 0x00000001, r10
	shl r9, r10
	not r10, r9
	and r9, r5
	st.b r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 375
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 377
	shl r8, r2
	not r2, r2
	ld.h 0x00000006[r6], r5
	and r2, r5
	st.h r5, 0x00000006[r6]
.BB.LABEL.6_5:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 380
	st.h r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 381
	st.h r0, 0x00000006[r7]
.BB.LABEL.6_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 382
	jmp [r31]
_MemHeap_ExtractBlock.1:
	.stack _MemHeap_ExtractBlock.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 392
	prepare 0x00000061, 0x00000008
	addi 0x00000000, r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 398
	bz9 .BB.LABEL.7_10
.BB.LABEL.7_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 403
	ld.hu 0x00000002[r20], r2
	andi 0x0000FFFC, r2, r6
	mov r3, r8
	movea 0x00000004, r3, r7
	jarl _MemHeap_MatchIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 405
	ld.hu 0x00000006[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 407
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 408
	ld.h 0x00000004[r20], r5
	st.h r5, 0x00000004[r2]
.BB.LABEL.7_3:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 411
	ld.hu 0x00000004[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 413
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 414
	ld.h 0x00000006[r20], r5
	st.h r5, 0x00000006[r2]
.BB.LABEL.7_5:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 418
	mov r20, r2
	sub r21, r2
	zxh r2
	ld.w 0x00000004[r3], r5
	mov r5, r6
	shl 0x00000004, r6
	ld.w 0x00000000[r3], r7
	mov r7, r8
	add r8, r8
	add r8, r6
	add r21, r6
	ld.hu 0x00000014[r6], r8
	cmp r8, r2
	movea 0x00000014, r6, r2
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_6:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 420
	ld.h 0x00000006[r20], r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 422
	ld.hu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_7:	; if_then_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 425
	mov r5, r2
	add r21, r2
	ld.b 0x00000008[r2], r6
	mov 0x00000001, r8
	shl r7, r8
	not r8, r7
	and r7, r6
	st.b r6, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 426
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 429
	shl r5, r2
	not r2, r2
	ld.h 0x00000006[r21], r5
	and r2, r5
	st.h r5, 0x00000006[r21]
.BB.LABEL.7_9:	; if_break_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 434
	st.h r0, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 435
	st.h r0, 0x00000006[r20]
.BB.LABEL.7_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 436
	dispose 0x00000008, 0x00000061, [r31]
_MemHeap_InsertBlock.1:
	.stack _MemHeap_InsertBlock.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 446
	prepare 0x00000061, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 449
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 450
	st.w r0, 0x00000000[r3]
	addi 0x00000000, r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 453
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 458
	ld.hu 0x00000002[r20], r2
	andi 0x0000FFFC, r2, r6
	mov r3, r8
	movea 0x00000004, r3, r7
	jarl _MemHeap_MatchIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 460
	st.h r0, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 461
	ld.w 0x00000004[r3], r2
	shl 0x00000004, r2
	add r21, r2
	ld.w 0x00000000[r3], r5
	add r5, r5
	add r5, r2
	ld.h 0x00000014[r2], r2
	st.h r2, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 463
	ld.w 0x00000004[r3], r2
	shl 0x00000004, r2
	ld.w 0x00000000[r3], r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 461
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 463
	ld.hu 0x00000014[r2], r5
	cmp 0x00000000, r5
	movea 0x00000014, r2, r2
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_2:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 467
	ld.hu 0x00000000[r2], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb45.if_break_bb74_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 469
	ld.hu 0x00000000[r2], r2
	add r21, r2
.BB.LABEL.8_5:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 476
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_6:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 480
	mov r20, r5
	sub r21, r5
	st.h r5, 0x00000004[r2]
.BB.LABEL.8_7:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 484
	sub r21, r20
	ld.w 0x00000004[r3], r2
	shl 0x00000004, r2
	add r21, r2
	ld.w 0x00000000[r3], r5
	add r5, r5
	add r5, r2
	st.h r20, 0x00000014[r2]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 486
	ld.w 0x00000000[r3], r5
	shl r5, r2, r5
	ld.w 0x00000004[r3], r6
	add r21, r6
	ld.b 0x00000008[r6], r7
	or r5, r7
	st.b r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 487
	ld.w 0x00000004[r3], r5
	shl r5, r2
	ld.h 0x00000006[r21], r5
	or r2, r5
	st.h r5, 0x00000006[r21]
.BB.LABEL.8_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 488
	dispose 0x00000008, 0x00000061, [r31]
_MemHeap_SplitBlock.1:
	.stack _MemHeap_SplitBlock.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 499
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 503
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 507
	ld.h 0x00000002[r7], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	sub r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 509
	andi 0x0000FFFF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 514
	addi 0x00000004, r7, r5
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 511
	add 0xFFFFFFFC, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 516
	ori 0x00000001, r2, r2
	st.h r2, 0x00000002[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 521
	ld.hu 0x00000002[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 523
	sub r6, r7
	st.h r7, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 521
	andi 0x0000FFFC, r2, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 524
	subr r8, r6
	st.h r6, 0x00000000[r5]
	mov r8, r10
	jmp [r31]
.BB.LABEL.9_3:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 528
	jmp [r31]
_ILib_MemHeapInit:
	.stack _ILib_MemHeapInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 539
	prepare 0x00000061, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 545
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb146_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.10_4
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 551
	andi 0x00000003, r21, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_3:	; if_else_bb.if_break_bb146_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.10_4:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 615
	zxb r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.10_5:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 557
	movea 0xFFFFFF14, r20, r2
	ori 0x0000FF14, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_else_bb19.if_break_bb146_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.10_4
.BB.LABEL.10_7:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 569
	ld.w 0x00000000[r21], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_else_bb31.if_break_bb146_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.10_4
.BB.LABEL.10_9:	; if_else_bb39
	movea 0x000000DC, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 576
	mov r21, r6
	jarl _ILib_memset, r31
	mov 0x2A59FA59, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 578
	st.w r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 579
	st.h r20, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 585
	st.h r0, 0x000000E0[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 586
	st.h r0, 0x000000E2[r21]
	movea 0x000000E0, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 590
	st.h r2, 0x000000E8[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 591
	st.h r0, 0x000000EC[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 592
	st.h r0, 0x000000EE[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 594
	movea 0xFFFFFF14, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 599
	andi 0x0000FFF8, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 594
	st.h r2, 0x000000EA[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 591
	movea 0x000000EC, r21, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 599
	add r7, r2
	movea 0x000000E8, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 600
	st.h r5, 0x00000000[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 601
	st.h r5, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 603
	st.h r20, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 606
	ld.h 0x000000EA[r21], r2
	st.h r2, 0x000000D4[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 607
	ld.h 0x000000EA[r21], r2
	st.h r2, 0x000000D6[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 608
	st.h r0, 0x000000D8[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 611
	mov r21, r6
	jarl _ILib_MemHeapFree, r31
	dispose 0x00000000, 0x00000061, [r31]
_ILib_MemHeapMalloc:
	.stack _ILib_MemHeapMalloc = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 626
	prepare 0x00000079, 0x0000000C
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 635
	bnz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; entry.if_break_bb242_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r21
.BB.LABEL.11_2:	; if_break_bb242
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 727
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 641
	andi 0x00000003, r20, r0
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_4:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	movhi 0x00000001, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 647
	cmp r21, r7
	ld.w 0x00000000[r20], r21
	bnc9 .BB.LABEL.11_1
.BB.LABEL.11_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x2A59FA59, r2
	cmp r2, r21
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_6:	; if_else_bb23
	cmp 0x00000000, r7
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_7:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 670
	cmp 0x00000007, r7
	bh9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_else_bb43.bb53_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000008, r21
	br9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; bb47
	add 0x00000007, r7
	andi 0x0000FFF8, r7, r21
.BB.LABEL.11_10:	; bb53
	st.w r21, 0x00000000[r3]
	movea 0x00000004, r3, r21
	movea 0x00000008, r3, r22
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 672
	mov r22, r7
	mov r21, r8
	jarl _MemHeap_MatchNextIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 673
	mov r20, r6
	mov r22, r7
	mov r21, r8
	jarl _MemHeap_FindFirstFreeBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 675
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_11:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 679
	ld.h 0x00000000[r21], r21
	mov 0xFFFFFFFC, r2
	and r2, r21
	ld.h 0x000000D6[r20], r2
	add r21, r2
	st.h r2, 0x000000D6[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 681
	ld.hu 0x000000D8[r20], r21
	ld.w 0x00000000[r3], r2
	cmp r2, r21
	bnc9 .BB.LABEL.11_13
.BB.LABEL.11_12:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 683
	st.h r2, 0x000000D8[r20]
.BB.LABEL.11_13:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 687
	ld.w 0x00000004[r3], r9
	ld.w 0x00000008[r3], r8
	mov r20, r6
	mov r22, r7
	jarl _MemHeap_ExtractBlockDirect.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 694
	ld.hu 0x00000002[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 692
	ld.w 0x00000000[r3], r8
	mov r20, r6
	mov r22, r7
	jarl _MemHeap_SplitBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 689
	addi 0x00000004, r22, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 694
	cmp 0x00000000, r10
	bz9 .BB.LABEL.11_15
.BB.LABEL.11_14:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 697
	mov r20, r6
	mov r10, r7
	jarl _MemHeap_InsertBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 700
	ld.hu 0x00000000[r3], r23
	andi 0x0000FFFE, r23, r23
	ld.hu 0x00000002[r22], r2
	andi 0x00000002, r2, r2
	or r2, r23
	st.h r23, 0x00000002[r22]
	br9 .BB.LABEL.11_16
.BB.LABEL.11_15:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 705
	ld.hu 0x00000002[r22], r2
	andi 0x0000FFFE, r2, r2
	st.h r2, 0x00000002[r22]
	andi 0x0000FFFC, r23, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 707
	ld.hu 0x00000002[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x00000002[r2]
.BB.LABEL.11_16:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 712
	movea 0x000000DC, r20, r2
	cmp r2, r22
	bl9 .BB.LABEL.11_20
.BB.LABEL.11_17:	; bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	ld.hu 0x00000004[r20], r2
	add r20, r2
	add 0xFFFFFFFC, r2
	cmp r2, r22
	bnc9 .BB.LABEL.11_20
.BB.LABEL.11_18:	; bb180
	ld.hu 0x00000002[r22], r2
	mov r22, r5
	add r2, r5
	movea 0x000000E0, r20, r6
	cmp r6, r5
	bl9 .BB.LABEL.11_20
.BB.LABEL.11_19:	; bb202
	ld.hu 0x00000004[r20], r5
	add r5, r20
	add 0xFFFFFFFC, r20
	add r22, r2
	cmp r20, r2
	bl17 .BB.LABEL.11_2
.BB.LABEL.11_20:	; if_then_bb235
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 720
	dispose 0x0000000C, 0x00000079, [r31]
_ILib_MemHeapCalloc:
	.stack _ILib_MemHeapCalloc = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 738
	prepare 0x00000071, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 740
	mul r21, r7, r0
	jarl _ILib_MemHeapMalloc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 741
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 743
	mov r20, r8
	mul r21, r8, r0
	mov 0x00000000, r7
	mov r22, r6
	jarl _ILib_memset, r31
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 746
	dispose 0x00000000, 0x00000071, [r31]
_ILib_MemHeapFree:
	.stack _ILib_MemHeapFree = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 756
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 761
	addi 0xFFFFFFFC, r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 764
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb292_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 770
	andi 0x00000003, r21, r0
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; if_else_bb.bb292_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.13_4:	; bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 857
	zxb r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.13_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 776
	ld.w 0x00000000[r21], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_else_bb23.bb292_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.13_4
.BB.LABEL.13_7:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 782
	cmp 0x00000000, r7
	bz9 .BB.LABEL.13_1
.BB.LABEL.13_8:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 788
	movea 0x000000DC, r21, r2
	cmp r2, r20
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_9:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	ld.hu 0x00000004[r21], r2
	add r21, r2
	add 0xFFFFFFFC, r2
	cmp r2, r20
	bnc9 .BB.LABEL.13_1
.BB.LABEL.13_10:	; bb63
	ld.hu 0x00000002[r20], r2
	add r7, r2
	add 0xFFFFFFFC, r2
	movea 0x000000E0, r21, r5
	cmp r5, r2
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_11:	; bb85
	ld.hu 0x00000002[r20], r2
	add r7, r2
	add 0xFFFFFFFC, r2
	ld.hu 0x00000004[r21], r5
	add r21, r5
	add 0xFFFFFFFC, r5
	cmp r5, r2
	bnc9 .BB.LABEL.13_1
.BB.LABEL.13_12:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 802
	ld.h 0x00000002[r20], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	ld.h 0x000000D6[r21], r5
	sub r2, r5
	st.h r5, 0x000000D6[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 805
	ld.h 0x00000002[r20], r2
	ori 0x00000001, r2, r2
	st.h r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 807
	st.h r0, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 808
	st.h r0, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 810
	ld.hu 0x00000002[r20], r2
	andi 0x0000FFFC, r2, r5
	mov r7, r22
	add r5, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 813
	ld.hu 0x00000002[r22], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.13_14
.BB.LABEL.13_13:	; if_then_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 815
	mov r21, r6
	mov r22, r7
	jarl _MemHeap_ExtractBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 818
	ld.h 0x00000002[r22], r5
	add 0x00000004, r5
	mov 0xFFFFFFFC, r2
	and r2, r5
	ld.h 0x00000002[r20], r2
	add r5, r2
	st.h r2, 0x00000002[r20]
.BB.LABEL.13_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 822
	andi 0x00000002, r2, r0
	bz9 .BB.LABEL.13_20
.BB.LABEL.13_15:	; if_then_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 824
	ld.hu 0x00000000[r20], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; if_then_bb198.if_break_bb218_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.13_18
.BB.LABEL.13_17:	; if_then_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 826
	add r21, r22
.BB.LABEL.13_18:	; if_break_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 833
	mov r21, r6
	mov r22, r7
	jarl _MemHeap_ExtractBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 834
	cmp 0x00000000, r22
	bz9 .BB.LABEL.13_1
.BB.LABEL.13_19:	; if_break_bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 839
	ld.h 0x00000002[r20], r20
	add 0x00000004, r20
	mov 0xFFFFFFFC, r2
	and r2, r20
	ld.h 0x00000002[r22], r2
	add r20, r2
	st.h r2, 0x00000002[r22]
	mov r22, r20
.BB.LABEL.13_20:	; if_break_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 844
	mov r21, r6
	mov r20, r7
	jarl _MemHeap_InsertBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 845
	cmp 0x00000000, r20
	bz9 .BB.LABEL.13_1
.BB.LABEL.13_21:	; if_break_bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 850
	ld.hu 0x00000002[r20], r2
	andi 0x0000FFFC, r2, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 853
	ld.h 0x00000006[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 854
	sub r21, r20
	st.h r20, 0x00000004[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
_ILib_MemHeapGetManageSize:
	.stack _ILib_MemHeapGetManageSize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 869
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 875
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 881
	andi 0x00000003, r6, r0
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_3:	; if_else_bb.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.14_4:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 904
	zxb r10
	jmp [r31]
.BB.LABEL.14_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 887
	ld.w 0x00000000[r6], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_else_bb16.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.14_4
.BB.LABEL.14_7:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 893
	cmp 0x00000000, r7
	bz9 .BB.LABEL.14_1
.BB.LABEL.14_8:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 900
	ld.hu 0x00000004[r6], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	jmp [r31]
_ILib_MemHeapGetRealMaxSize:
	.stack _ILib_MemHeapGetRealMaxSize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 915
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 921
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 927
	andi 0x00000003, r6, r0
	bz9 .BB.LABEL.15_5
.BB.LABEL.15_3:	; if_else_bb.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.15_4:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 950
	zxb r10
	jmp [r31]
.BB.LABEL.15_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 933
	ld.w 0x00000000[r6], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bz9 .BB.LABEL.15_7
.BB.LABEL.15_6:	; if_else_bb16.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.15_4
.BB.LABEL.15_7:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 939
	cmp 0x00000000, r7
	bz9 .BB.LABEL.15_1
.BB.LABEL.15_8:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 946
	ld.hu 0x000000D4[r6], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	jmp [r31]
_ILib_MemHeapGetUsedSize:
	.stack _ILib_MemHeapGetUsedSize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 961
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 967
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.16_4
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 973
	andi 0x00000003, r6, r0
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_3:	; if_else_bb.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.16_4:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 996
	zxb r10
	jmp [r31]
.BB.LABEL.16_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 979
	ld.w 0x00000000[r6], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_else_bb16.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.16_4
.BB.LABEL.16_7:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 985
	cmp 0x00000000, r7
	bz9 .BB.LABEL.16_1
.BB.LABEL.16_8:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 992
	ld.hu 0x000000D6[r6], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	jmp [r31]
_ILib_MemHeapGetCurFreeMaxBlockSize:
	.stack _ILib_MemHeapGetCurFreeMaxBlockSize = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1007
	prepare 0x00000071, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1014
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; entry.bb159_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1020
	andi 0x00000003, r21, r0
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_3:	; if_else_bb.bb159_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.17_4:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1084
	zxb r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.17_5:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1026
	ld.w 0x00000000[r21], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_else_bb22.bb159_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.17_4
.BB.LABEL.17_7:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1032
	cmp 0x00000000, r20
	bz9 .BB.LABEL.17_1
.BB.LABEL.17_8:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1041
	ld.hu 0x00000006[r21], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.17_10
.BB.LABEL.17_9:	; if_else_bb36.if_break_bb148_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.17_20
.BB.LABEL.17_10:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1043
	jarl _MemHeap_MSBIT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1044
	cmp 0x0000000C, r10
	mov r10, r22
	bh9 .BB.LABEL.17_1
.BB.LABEL.17_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1049
	mov r21, r2
	add r22, r2
	ld.bu 0x00000008[r2], r6
	jarl _MemHeap_MSBIT.1, r31
	movea 0x000000FF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1051
	cmp r2, r10
	bh9 .BB.LABEL.17_9
.BB.LABEL.17_12:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1055
	mov r22, r2
	shl 0x00000004, r2
	mov r10, r5
	add r5, r5
	add r5, r2
	add r21, r2
	ld.hu 0x00000014[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_14
.BB.LABEL.17_13:	; if_then_bb68.bb137_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.17_18
.BB.LABEL.17_14:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1057
	mov r22, r2
	shl 0x00000004, r2
	mov r10, r5
	add r5, r5
	add r5, r2
	add r21, r2
	ld.hu 0x00000014[r2], r5
	add r21, r5
	mov 0x00000000, r2
	br9 .BB.LABEL.17_18
.BB.LABEL.17_15:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1062
	mov r22, r6
	shl 0x00000005, r6
	mov r6, r7
	shr 0x00000003, r7
	mul r10, r7, r0
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1063
	cmp r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1065
	cmov 0x00000001, r6, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1067
	ld.hu 0x00000006[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.17_17
.BB.LABEL.17_16:	; bb98.bb137_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.17_18
.BB.LABEL.17_17:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1069
	add r21, r5
.BB.LABEL.17_18:	; bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1060
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.17_15
.BB.LABEL.17_19:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1077
	andi 0x0000FFF8, r2, r21
.BB.LABEL.17_20:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1080
	st.w r21, 0x00000000[r20]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
_ILib_MemHeapGetMaxMallocSize:
	.stack _ILib_MemHeapGetMaxMallocSize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1095
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1101
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; entry.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.18_4
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1107
	andi 0x00000003, r6, r0
	bz9 .BB.LABEL.18_5
.BB.LABEL.18_3:	; if_else_bb.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000002, r10
.BB.LABEL.18_4:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1130
	zxb r10
	jmp [r31]
.BB.LABEL.18_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1113
	ld.w 0x00000000[r6], r2
	mov 0x2A59FA59, r5
	cmp r5, r2
	bz9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; if_else_bb16.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.18_4
.BB.LABEL.18_7:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1119
	cmp 0x00000000, r7
	bz9 .BB.LABEL.18_1
.BB.LABEL.18_8:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/IStd/ilib_memheap.c", 1126
	ld.hu 0x000000D8[r6], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	jmp [r31]
	.section .const, const
	.align 4
_MemHeap_Table.1:
	.dw 0xFFFFFFFF
	.ds (4)
	.dw 0x00000001,0x00000001,0x00000002,0x00000002,0x00000002,0x00000002,0x00000003,0x00000003
	.dw 0x00000003,0x00000003,0x00000003,0x00000003,0x00000003,0x00000003,0x00000004,0x00000004
	.dw 0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004
	.dw 0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000005,0x00000005
	.dw 0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005
	.dw 0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005
	.dw 0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005
	.dw 0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000005,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006
	.dw 0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000006,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
	.dw 0x00000007,0x00000007,0x00000007,0x00000007,0x00000007,0x00000007
