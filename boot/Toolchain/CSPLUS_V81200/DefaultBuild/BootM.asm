#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootManager\BootM.c -oDefaultBuild\BootM.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ebcfee72ecc64600ba3a8c823ab011abdmyeq0fq.zos
#@	compiled at Thu Jul 16 13:41:28 2026

	.file "..\..\Bsw\SystemServices\BootManager\BootM.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Dcm_S3TimerStartFlag
	.extern _Dcm_S3Timer
	.extern _DcmState
	.extern _Comm_MainTick
	.extern _Os_CounterCfg
	.extern _Os_CCB
	.extern _SecureBootCurrentStatus
	.public _g_BootM_SIBTimeout, 1
	.public _g_BootM_SIBData, 3
	.extern _EcuMService_DeInit
	.public _BootM_GetFlag
	.extern _Diag_FlagCompare
	.public _BootM_FlagHandle
	.public _BootM_IsAllLBA_Valid
	.extern _Diag_FlagClear
	.public _BootM_ReprogramRespond
	.extern _CanIf_Transmit
	.extern _Wdg_59_DriverB_TriggerFunc

	.section .text, text
_BootM_AppIntVectRemap.1:
	.stack _BootM_AppIntVectRemap.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 103
	jmp [r31]
_BootM_AppJump.1:
	.stack _BootM_AppJump.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 121
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 125
	ld23.w 0x00080602[r0], r5
	mov 0x00080600, r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 129
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 131
	jarl [r5], r31
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 133
	dispose 0x00000000, 0x00000001, [r31]
_BootM_AppGo.1:
	.stack _BootM_AppGo.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 149
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 151
	jarl _BootM_StayInBootProcess.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 154
	jarl _BootM_AppIntVectRemap.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 156
	jarl32 _EcuMService_DeInit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 158
	jarl _BootM_AppJump.1, r31
.BB.LABEL.3_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 160
	dispose 0x00000000, 0x00000001, [r31]
_BootM_GetFlag:
	.stack _BootM_GetFlag = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 176
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 181
	jarl32 _Diag_FlagCompare, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_6
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 185
	jarl _BootM_IsAllLBA_Valid, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_else_bb.if_break_bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; bb
	movhi HIGHW1(#_SecureBootCurrentStatus), r0, r5
	ld.w LOWW(#_SecureBootCurrentStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 187
	jarl _BootM_AppGo.1, r31
	mov 0x00000003, r10
.BB.LABEL.4_6:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 222
	movhi HIGHW1(#_g_BootM_SIBTimeout), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_g_BootM_SIBTimeout)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 225
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
_BootM_FlagHandle:
	.stack _BootM_FlagHandle = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 242
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 246
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 250
	jarl32 _Diag_FlagClear, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 252
	jarl _BootM_ReprogramRespond, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 254
	jarl _BootM_ReprogramStateSet.1, r31
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.5_2:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 272
	dispose 0x00000000, 0x00000201, [r31]
_BootM_IsAllLBA_Valid:
	.stack _BootM_IsAllLBA_Valid = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 287
	prepare 0x00000001, 0x00000000
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 291
	jarl32 _Diag_FlagCompare, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 299
	dispose 0x00000000, 0x00000001, [r31]
_BootM_ResetRespond.1:
	.stack _BootM_ResetRespond.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 343
	prepare 0x00000001, 0x00000014
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 346
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 352
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 354
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 356
	st.b r5, 0x00000000[r3]
	movea 0x00000050, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 357
	st.b r5, 0x00000001[r3]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 358
	st.b r5, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 359
	st.b r0, 0x00000003[r3]
	movea 0x00000032, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 360
	st.b r5, 0x00000004[r3]
	mov 0x00000001, r5
	br9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 365
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 367
	st.b r5, 0x00000000[r3]
	movea 0x00000050, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 368
	st.b r5, 0x00000001[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 369
	st.b r5, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 370
	st.b r0, 0x00000003[r3]
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 371
	st.b r6, 0x00000004[r3]
.BB.LABEL.7_4:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	st.b r5, 0x00000005[r3]
	mov 0xFFFFFFF4, r6
	st.b r6, 0x00000006[r3]
	mov 0x00000000, r6
	br9 .BB.LABEL.7_11
.BB.LABEL.7_5:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 376
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 378
	st.b r5, 0x00000000[r3]
	movea 0x00000051, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 379
	st.b r5, 0x00000001[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 380
	st.b r5, 0x00000002[r3]
	mov 0x00000000, r6
	mov 0x00000005, r5
	br9 .BB.LABEL.7_11
.BB.LABEL.7_7:	; if_else_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 385
	cmp 0x00000003, r6
	bz9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_else_bb60.bb96_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.7_11
.BB.LABEL.7_9:	; if_then_bb66
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 387
	st.b r5, 0x00000000[r3]
	movea 0x00000050, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 388
	st.b r5, 0x00000001[r3]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 389
	st.b r5, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 390
	mov #_gs_StayInBootFrame.1, r6
	ld.b 0x00000003[r6], r7
	st.b r7, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 391
	ld.b 0x00000004[r6], r6
	st.b r6, 0x00000004[r3]
	mov 0x00000000, r6
	br9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 402
	andi 0x000000FF, r6, r7
	mov 0x00000007, r8
	sub r7, r8
	mov r3, r7
	add r8, r7
	movea 0xFFFFFFAA, r0, r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r6
.BB.LABEL.7_11:	; bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 400
	andi 0x000000FF, r6, r7
	andi 0x000000FF, r5, r8
	cmp r8, r7
	bl9 .BB.LABEL.7_10
.BB.LABEL.7_12:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 405
	st.h r5, 0x00000010[r3]
	movea 0x00000008, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 409
	jarl32 _CanIf_Transmit, r31
	dispose 0x00000014, 0x00000001, [r31]
_BootM_ReprogramStateSet.1:
	.stack _BootM_ReprogramStateSet.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 428
	movhi HIGHW1(#_DcmState), r0, r5
	ld.b LOWW(#_DcmState)[r5], r6
	ori 0x00000080, r6, r6
	andi 0x000000BF, r6, r6
	st.b r6, LOWW(#_DcmState)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 430
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	ld.bu LOWW(#_Dcm_S3TimerStartFlag)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 432
	movhi HIGHW1(#_Comm_MainTick), r0, r5
	ld.h LOWW(#_Comm_MainTick)[r5], r5
	movhi HIGHW1(#_Dcm_S3Timer), r0, r6
	st.h r5, LOWW(#_Dcm_S3Timer)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 433
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Dcm_S3TimerStartFlag)[r5]
.BB.LABEL.8_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 435
	jmp [r31]
_BootM_ReprogramRespond:
	.stack _BootM_ReprogramRespond = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 450
	prepare 0x00000001, 0x00000000
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 452
	jarl32 _Diag_FlagCompare, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 454
	jarl32 _Diag_FlagClear, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 458
	jarl _BootM_ResetRespond.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_BooM_IsSIBValid.1:
	.stack _BooM_IsSIBValid.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 512
	mov 0x00000000, r5
	br9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 517
	andi 0x000000FF, r5, r6
	mov #_g_BootM_SIBData, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
	mov #_gs_StayInBootFrame.1, r8
	add r8, r6
	ld.bu 0x00000000[r6], r6
	cmp r6, r7
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	add 0x00000001, r5
.BB.LABEL.10_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 515
	andi 0x000000FF, r5, r6
	cmp 0x00000003, r6
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_4:	; bb17.bb25_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; bb.bb25_crit_edge
	mov 0x00000001, r10
.BB.LABEL.10_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 523
	jmp [r31]
_BootM_GetCounterValue.1:
	.stack _BootM_GetCounterValue.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 539
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 542
	shl 0x00000002, r5
	mov #_Os_CCB, r8
	add r5, r8
	ld.w 0x00000000[r8], r5
	ld.w 0x00000000[r5], r5
	mul 0x00000018, r6, r0
	mov #_Os_CounterCfg, r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	add 0x00000001, r6
	divqu r6, r5, r5
	st.h r5, 0x00000000[r7]
	jmp [r31]
_BootM_StayInBootProcess.1:
	.stack _BootM_StayInBootProcess.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 558
	prepare 0x00000201, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 560
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 561
	st.h r0, 0x00000000[r3]
	movea 0x00000002, r3, r7
	mov 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 563
	mov r25, r6
	jarl _BootM_GetCounterValue.1, r31
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 566
	jarl _BooM_IsSIBValid.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 568
	jarl _BootM_ResetRespond.1, r31
	mov 0x00000001, r25
.BB.LABEL.12_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 571
	jarl _BootM_GetCounterValue.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 572
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 564
	ld.hu 0x00000000[r3], r5
	ld.hu 0x00000002[r3], r6
	sub r6, r5
	movea 0x00000013, r0, r6
	cmp r6, r5
	bh9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 0
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 581
	zxb r25
	cmp 0x00000001, r25
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootManager/BootM.c", 583
	dispose 0x00000004, 0x00000201, [r31]
	.section .data, data
_g_BootM_SIBTimeout:
	.ds (1)
	.section .bss, bss
_g_BootM_SIBData:
	.ds (3)
	.section .const, const
_gs_StayInBootFrame.1:
	.db 0x02,0x10,0x03
