#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\FlsIf\FlsIf.c -oDefaultBuild\FlsIf.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_df7dc590b9d8432dba57c8be8bacb4fdsfdt2uug.c4s
#@	compiled at Thu Jul 16 13:41:27 2026

	.file "..\..\Bsw\SystemServices\BootServices\FlsIf\FlsIf.c"

	$reg_mode 22
	.dbl_size 4

	.extern _FlsIf_Block
	.public _FlsIf_Init
	.extern _FCL_Init
	.public _FlsIf_DeInit
	.public _FlsIf_Write
	.extern _CommF_DataCopy
	.extern _CommF_DataSet
	.extern _Diag_WdgFeed
	.extern _Diag_NRC78Send
	.extern _SuspendAllInterrupts
	.extern _FCL_Handel
	.extern _ResumeAllInterrupts
	.public _FlsIf_Erase
	.public _FlsIf_Read

	.section .text, text
_FlsIf_GetBlockNum.1:
	.stack _FlsIf_GetBlockNum.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 67
	mov 0x00000000, r5
	br9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 74
	andi 0x000000FF, r5, r8
	shl 0x00000004, r8
	mov #_FlsIf_Block, r9
	add r8, r9
	ld.w 0x00000000[r9], r8
	cmp r8, r6
	bl9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	andi 0x000000FF, r5, r8
	shl 0x00000004, r8
	mov #_FlsIf_Block, r9
	add r8, r9
	ld.w 0x00000000[r9], r8
	ld.w 0x00000004[r9], r9
	add r9, r8
	cmp r6, r8
	bnh9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 78
	st.b r5, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 80
	jmp [r31]
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	add 0x00000001, r5
.BB.LABEL.1_5:	; bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 72
	andi 0x000000FF, r5, r8
	cmp 0x00000003, r8
	blt9 .BB.LABEL.1_1
.BB.LABEL.1_6:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 85
	jmp [r31]
_FlsIf_ConvertAddress.1:
	.stack _FlsIf_ConvertAddress.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 102
	st.w r6, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 111
	jmp [r31]
_FlsIf_Init:
	.stack _FlsIf_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 127
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 137
	jarl32 _FCL_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 140
	movhi HIGHW1(#_FlsIf_State.2), r0, r5
	mov 0x00000001, r6
	st.w r6, LOWW(#_FlsIf_State.2)[r5]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
_FlsIf_DeInit:
	.stack _FlsIf_DeInit = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 177
	movhi HIGHW1(#_FlsIf_State.2), r0, r5
	st.w r0, LOWW(#_FlsIf_State.2)[r5]
	mov 0x00000000, r10
	jmp [r31]
_FlsIf_Write:
	.stack _FlsIf_Write = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 202
	prepare 0x00000385, 0x00000008
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 204
	st.b r0, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 205
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 218
	movhi HIGHW1(#_FlsIf_State.2), r0, r5
	ld.w LOWW(#_FlsIf_State.2)[r5], r5
	mov r8, r25
	addi 0x00000000, r7, r26
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	cmp 0x00000001, r5
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; entry.if_break_bb166_crit_edge
	mov 0x00000001, r27
.BB.LABEL.5_3:	; if_break_bb166
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 305
	andi 0x000000FF, r27, r10
	dispose 0x00000008, 0x00000385, [r31]
.BB.LABEL.5_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 220
	jarl _FlsIf_ConvertAddress.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	ld.w 0x00000000[r3], r6
	movea 0x00000007, r3, r7
	jarl _FlsIf_GetBlockNum.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_6:	; bb41
	ld.bu 0x00000007[r3], r27
	shl 0x00000004, r27
	mov #_FlsIf_Block, r5
	add r27, r5
	ld.w 0x0000000C[r5], r27
	ld.w 0x00000000[r3], r5
	divqu r27, r5, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_7:	; bb41.bb147_crit_edge
	mov 0x00000000, r27
.BB.LABEL.5_8:	; bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 232
	andi 0x000000FF, r27, r0
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_9:	; bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	cmp 0x00000000, r26
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_10:	; bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 234
	ld.bu 0x00000007[r3], r27
	shl 0x00000004, r27
	mov #_FlsIf_Block, r5
	add r27, r5
	ld.w 0x0000000C[r5], r28
	mov r25, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 236
	cmp r28, r26
	bl9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 238
	mov #_FlsIf_PageBuffer.1, r6
	mov r28, r8
	jarl32 _CommF_DataCopy, r31
	br9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; if_else_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 243
	mov #_FlsIf_PageBuffer.1, r27
	mov r27, r6
	mov r26, r8
	jarl32 _CommF_DataCopy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 245
	mov r27, r6
	add r26, r6
	mov r26, r8
	subr r28, r8
	movea 0x000000FF, r0, r7
	jarl32 _CommF_DataSet, r31
	mov r28, r26
.BB.LABEL.5_13:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 255
	jarl32 _Diag_WdgFeed, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 257
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 267
	jarl32 _SuspendAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 268
	ld.w 0x00000000[r3], r8
	mov 0x00000001, r9
	mov #_FlsIf_PageBuffer.1, r7
	mov 0x00000002, r6
	jarl32 _FCL_Handel, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 269
	jarl32 _ResumeAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 272
	andi 0x000000FF, r27, r0
	bz9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; if_break_bb83.bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000001, r27
	br9 .BB.LABEL.5_8
.BB.LABEL.5_15:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 274
	ld.w 0x00000000[r3], r5
	add r28, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 276
	add r28, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 275
	mov r26, r6
	sub r28, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 278
	cmp r28, r26
	bz9 .BB.LABEL.5_17
.BB.LABEL.5_16:	; bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	ld.bu 0x00000007[r3], r26
	mov r26, r7
	shl 0x00000004, r7
	mov #_FlsIf_Block, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	ld.w 0x00000004[r8], r8
	add r8, r7
	cmp r7, r5
	bnc9 .BB.LABEL.5_18
.BB.LABEL.5_17:	; bb105.bb147_crit_edge
	mov r6, r26
	br9 .BB.LABEL.5_8
.BB.LABEL.5_18:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 281
	add 0x00000001, r26
	st.b r26, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 282
	andi 0x000000FF, r26, r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; if_then_bb128.bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.5_8
.BB.LABEL.5_20:	; if_else_bb137
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 290
	zxb r26
	shl 0x00000004, r26
	mov #_FlsIf_Block, r5
	add r26, r5
	ld.w 0x00000000[r5], r26
	st.w r26, 0x00000000[r3]
	br9 .BB.LABEL.5_17
_FlsIf_Erase:
	.stack _FlsIf_Erase = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 321
	prepare 0x00000301, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 323
	st.b r0, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 324
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 326
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 336
	movhi HIGHW1(#_FlsIf_State.2), r0, r5
	ld.w LOWW(#_FlsIf_State.2)[r5], r5
	cmp 0x00000001, r5
	mov r7, r25
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb177_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000001, r26
	jr .BB.LABEL.6_19
.BB.LABEL.6_2:	; if_then_bb
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 338
	jarl _FlsIf_ConvertAddress.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.6_16
.BB.LABEL.6_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	ld.w 0x00000004[r3], r6
	movea 0x0000000B, r3, r7
	jarl _FlsIf_GetBlockNum.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.6_16
.BB.LABEL.6_4:	; bb27
	ld.bu 0x0000000B[r3], r26
	shl 0x00000004, r26
	mov #_FlsIf_Block, r5
	add r26, r5
	ld.w 0x00000000[r5], r26
	ld.w 0x00000004[r3], r6
	subr r6, r26
	ld.w 0x00000008[r5], r5
	divqu r5, r26, r26
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_5:	; bb50
	mov r3, r7
	jarl _FlsIf_GetSectorIdx.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_6:	; bb50.bb158_crit_edge
	mov 0x00000000, r26
	br9 .BB.LABEL.6_17
.BB.LABEL.6_7:	; bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 359
	jarl32 _Diag_WdgFeed, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 361
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 369
	jarl32 _SuspendAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 370
	ld.w 0x00000000[r3], r8
	mov 0x00000000, r7
	mov 0x00000001, r6
	mov r6, r9
	jarl32 _FCL_Handel, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 371
	jarl32 _ResumeAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 374
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_8:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 376
	ld.bu 0x0000000B[r3], r5
	shl 0x00000004, r5
	mov #_FlsIf_Block, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	ld.w 0x00000004[r3], r7
	add r5, r7
	st.w r7, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 378
	ld.bu 0x0000000B[r3], r5
	mov r5, r7
	shl 0x00000004, r7
	add r7, r6
	ld.w 0x00000008[r6], r6
	cmp r6, r25
	bnc9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb74.if_break_bb100_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 380
	shl 0x00000004, r5
	mov #_FlsIf_Block, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	sub r5, r25
.BB.LABEL.6_11:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 388
	cmp 0x00000000, r25
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_12:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 390
	ld.w 0x00000004[r3], r6
	mov r3, r7
	jarl _FlsIf_GetSectorIdx.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_13:	; if_else_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 394
	ld.bu 0x0000000B[r3], r5
	mov r5, r6
	shl 0x00000004, r6
	mov #_FlsIf_Block, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	ld.w 0x00000004[r7], r7
	add r7, r6
	ld.w 0x00000004[r3], r7
	cmp r7, r6
	bh9 .BB.LABEL.6_17
.BB.LABEL.6_14:	; if_then_bb129
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 397
	add 0x00000001, r5
	st.b r5, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 399
	andi 0x000000FF, r5, r6
	cmp 0x00000002, r6
	bgt9 .BB.LABEL.6_16
.BB.LABEL.6_15:	; if_else_bb138
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 407
	zxb r5
	shl 0x00000004, r5
	mov #_FlsIf_Block, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000004[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 409
	jarl _FlsIf_GetSectorIdx.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_16:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000001, r26
.BB.LABEL.6_17:	; bb158
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 351
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.6_19
.BB.LABEL.6_18:	; bb158
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_19:	; if_break_bb177
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 428
	andi 0x000000FF, r26, r10
	dispose 0x0000000C, 0x00000301, [r31]
_FlsIf_Read:
	.stack _FlsIf_Read = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 445
	prepare 0x00000301, 0x00000004
	mov r7, r25
	mov r8, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 447
	st.w r0, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 451
	jarl _FlsIf_ConvertAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 454
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; entry.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 459
	mov r26, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 458
	ld.w 0x00000000[r3], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 459
	add r5, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 460
	add 0x00000001, r5
.BB.LABEL.7_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 456
	cmp r25, r5
	bl9 .BB.LABEL.7_2
.BB.LABEL.7_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 469
	dispose 0x00000004, 0x00000301, [r31]
_FlsIf_GetSectorIdx.1:
	.stack _FlsIf_GetSectorIdx.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 488
	movhi 0x00002000, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 496
	cmp r5, r6
	bnc9 .BB.LABEL.8_6
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_2:	; if_then_bb13
	movhi 0x00000001, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 501
	cmp r5, r6
	bnc9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 504
	shr 0x0000000D, r6
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 510
	movhi 0x0000FFFF, r6, r6
	shr 0x0000000F, r6
	add 0x00000008, r6
.BB.LABEL.8_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	st.w r6, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 512
	jmp [r31]
.BB.LABEL.8_6:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/FlsIf/FlsIf.c", 517
	jmp [r31]
	.section .bss, bss
_FlsIf_PageBuffer.1:
	.ds (256)
	.align 4
_FlsIf_State.2:
	.ds (4)
