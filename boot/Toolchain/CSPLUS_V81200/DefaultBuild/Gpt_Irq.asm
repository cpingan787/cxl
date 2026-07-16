#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\gpt\src\Gpt_Irq.c -oDefaultBuild\Gpt_Irq.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ff369f30ca8a404b966e7d35db812260rgg2fomb.djk
#@	compiled at Thu Jul 16 13:41:56 2026

	.file "..\..\Bsw\Mcal\gpt\src\Gpt_Irq.c"

	$reg_mode 22
	.dbl_size 4

	.public _OSTM0_CH00_ISR
	.extern _Gpt_CbkNotification
	.public _GPT_FEINT_ISR
	.extern _Gpt_HW_PredefTimerCallbackNotification
	.public _TAUD0_CH09_ISR
	.public _TAUB0_CH12_ISR
	.public _TAUJ0_CH00_ISR

	.section .text, text
_OSTM0_CH00_ISR:
	.stack _OSTM0_CH00_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 237
	prepare 0x00000001, 0x00000000
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 248
	jarl32 _Gpt_CbkNotification, r31
	dispose 0x00000000, 0x00000001, [r31]
_GPT_FEINT_ISR:
	.stack _GPT_FEINT_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 335
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 339
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000004, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 0
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 351
	jarl32 _Gpt_CbkNotification, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 367
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000004, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 377
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000008, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 389
	jarl32 _Gpt_CbkNotification, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 404
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000008, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_4:	; if_break_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 414
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000010, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 0
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 425
	jarl32 _Gpt_CbkNotification, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 440
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000010, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_6:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 450
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000020, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 459
	jarl32 _Gpt_HW_PredefTimerCallbackNotification, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 477
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000020, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_8:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 487
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000200, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 514
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000200, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_10:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 524
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000400, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 551
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000400, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_12:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 561
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00000800, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 588
	movhi 0x0000FFC0, r0, r5
	movhi 0x00000800, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_14:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 598
	movhi 0x0000FFC0, r0, r5
	ld.w 0x00000100[r5], r5
	movhi 0x00001000, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.2_16
.BB.LABEL.2_15:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 625
	movhi 0x0000FFC0, r0, r5
	movhi 0x00001000, r0, r6
	st.w r6, 0x00000108[r5]
.BB.LABEL.2_16:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 633
	dispose 0x00000000, 0x00000001, [r31]
_TAUD0_CH09_ISR:
	.stack _TAUD0_CH09_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 820
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 823
	jarl32 _Gpt_CbkNotification, r31
	dispose 0x00000000, 0x00000001, [r31]
_TAUB0_CH12_ISR:
	.stack _TAUB0_CH12_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 1174
	prepare 0x00000001, 0x00000000
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 1177
	jarl32 _Gpt_CbkNotification, r31
	dispose 0x00000000, 0x00000001, [r31]
_TAUJ0_CH00_ISR:
	.stack _TAUJ0_CH00_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 1546
	prepare 0x00000001, 0x00000000
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/gpt/src/Gpt_Irq.c", 1549
	jarl32 _Gpt_CbkNotification, r31
	dispose 0x00000000, 0x00000001, [r31]
