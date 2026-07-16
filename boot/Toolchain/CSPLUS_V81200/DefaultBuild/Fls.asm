#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\fls\src\Fls.c -oDefaultBuild\Fls.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d635905fc970446081ce7e1f3c559140mxwnola4.osb
#@	compiled at Thu Jul 16 13:41:49 2026

	.file "..\..\Bsw\Mcal\fls\src\Fls.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Fls_GulTempBuffer
	.extern _Fls_GpConfigPtr
	.extern _Fls_GstVar
	.extern _Fls_GstBackUpVar
	.extern _Fls_GenJobResult
	.extern _Fls_GenState
	.extern _Fls_GenCurrentMode
	.extern _Fls_GblInitStatus
	.extern _Fls_GblTimeOutMonitor
	.extern _Fls_GblJobSuspended
	.extern _Fls_GblJobSuspendRequest
	.public _Fls_Init
	.extern _Fls_PreFcuInitCheck
	.extern _Det_ReportRuntimeError
	.extern _Fls_FcuInit
	.extern _Fls_ClearBackUpData
	.public _Fls_Erase
	.extern _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION
	.extern _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION
	.extern _Fls_SuspendPreCheck
	.extern _Fls_InitiateEraseJob
	.extern _Fls_ProcessJobResult
	.public _Fls_Write
	.extern _Fls_InitiateWriteJob
	.public _Fls_Cancel
	.extern _Fls_ProcessCancel
	.extern _Fls_CallJobNotification
	.public _Fls_GetStatus
	.public _Fls_GetJobResult
	.public _Fls_MainFunction
	.extern _Fls_MainErase
	.extern _Fls_TimeOutCheckAndProcessing
	.extern _Fls_MainWrite
	.extern _Fls_MainBlankCheck
	.extern _Fls_MainRead
	.extern _Fls_MainCompare
	.extern _Fls_MainReadImm
	.public _Fls_Read
	.public _Fls_Compare
	.public _Fls_SetMode
	.public _Fls_ReadImmediate
	.extern _Fls_ReadMisAlignHandler
	.public _Fls_Suspend
	.public _Fls_Resume
	.extern _Fls_ProcessResume

	.section .text, text
_Fls_Init:
	.stack _Fls_Init = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 635
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 650
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	mov 0x00000004, r7
	st.w r7, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 725
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r5
	st.w r6, LOWW(#_Fls_GpConfigPtr)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 748
	jarl32 _Fls_PreFcuInitCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 749
	addi 0x00000000, r10, r25
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	movea 0x00000011, r0, r9
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 757
	mov r7, r8
	jarl32 _Det_ReportRuntimeError, r31
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 768
	jarl32 _Fls_FcuInit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 770
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 777
	mov #_Fls_GstVar, r5
	st.b r0, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 778
	st.w r0, 0x00000024[r5]
	mov 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 781
	movhi HIGHW1(#_Fls_GenState), r0, r6
	st.w r25, LOWW(#_Fls_GenState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 784
	movhi HIGHW1(#_Fls_GenJobResult), r0, r6
	st.w r0, LOWW(#_Fls_GenJobResult)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 786
	st.w r0, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 789
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r6
	ld.w LOWW(#_Fls_GpConfigPtr)[r6], r6
	ld.w 0x0000001C[r6], r6
	movhi HIGHW1(#_Fls_GenCurrentMode), r0, r7
	st.w r6, LOWW(#_Fls_GenCurrentMode)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 798
	st.w r0, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 799
	st.w r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 801
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r5
	st.b r0, LOWW(#_Fls_GblJobSuspended)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 802
	jarl32 _Fls_ClearBackUpData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 818
	movhi HIGHW1(#_Fls_GblInitStatus), r0, r5
	st.b r25, LOWW(#_Fls_GblInitStatus)[r5]
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 840
	dispose 0x00000000, 0x00000201, [r31]
_Fls_Erase:
	.stack _Fls_Erase = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 899
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 925
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 920
	movhi 0x0000FF20, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 929
	mov #_Fls_GstVar, r5
	st.w r25, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 930
	mov r25, r6
	add r26, r6
	add 0xFFFFFFFF, r6
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 935
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1022
	andi 0x0000003F, r26, r0
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1024
	movea 0x0000003F, r26, r26
	movea 0xFFFFFFC0, r0, r5
	and r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1026
	add r26, r25
	add 0xFFFFFFFF, r25
	movhi HIGHW1(#_Fls_GstVar+0x00000014), r0, r5
	st.w r25, LOWW(#_Fls_GstVar+0x00000014)[r5]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1034
	mov #_Fls_GstVar, r5
	st.w r26, 0x0000001C[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1053
	st.w r6, 0x00000028[r5]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1055
	movhi HIGHW1(#_Fls_GenJobResult), r0, r7
	st.w r5, LOWW(#_Fls_GenJobResult)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1057
	movhi HIGHW1(#_Fls_GenState), r0, r7
	st.w r5, LOWW(#_Fls_GenState)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1060
	jarl32 _Fls_SuspendPreCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1062
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1074
	jarl32 _Fls_InitiateEraseJob, r31
.BB.LABEL.2_4:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1090
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1092
	jarl32 _Fls_ProcessJobResult, r31
.BB.LABEL.2_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1114
	dispose 0x00000000, 0x00000301, [r31]
_Fls_Write:
	.stack _Fls_Write = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1179
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1206
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1202
	movhi 0x0000FF20, r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1209
	mov #_Fls_GstVar, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1210
	ld.w 0x00000010[r6], r5
	add r27, r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1213
	st.w r27, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1214
	st.w r27, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1216
	st.w r26, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1221
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1373
	jarl32 _Fls_SuspendPreCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1377
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1409
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r6
	st.w r5, LOWW(#_Fls_GstVar+0x00000028)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1411
	movhi HIGHW1(#_Fls_GenJobResult), r0, r6
	st.w r5, LOWW(#_Fls_GenJobResult)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1413
	movhi HIGHW1(#_Fls_GenState), r0, r6
	st.w r5, LOWW(#_Fls_GenState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1425
	jarl32 _Fls_InitiateWriteJob, r31
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1441
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1443
	jarl32 _Fls_ProcessJobResult, r31
.BB.LABEL.3_4:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1465
	dispose 0x00000000, 0x00000381, [r31]
_Fls_Cancel:
	.stack _Fls_Cancel = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1519
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1537
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	ld.w LOWW(#_Fls_GenJobResult)[r5], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GstBackUpVar+0x00000028), r0, r5
	ld.w LOWW(#_Fls_GstBackUpVar+0x00000028)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1558
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1562
	mov #_Fls_GstBackUpVar, r5
	movea 0x00000028, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1569
	mov #_Fls_GstVar, r7
	movea 0x00000028, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1562
	ld.w 0x00000028[r5], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1569
	cmov 0x00000002, r7, r6, r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1572
	add 0xFFFFFFFF, r5
	cmp 0x00000006, r5
	bh9 .BB.LABEL.4_7
.BB.LABEL.4_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.4_12[r5]
.SWITCH.LABEL.4_12:
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_11
	br9 .BB.LABEL.4_11
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_11
.SWITCH.LABEL.4_12.END:
.BB.LABEL.4_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1595
	jarl32 _Fls_ProcessCancel, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1596
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r5], r5
	cmp 0x0000000B, r5
	bz9 .BB.LABEL.4_11
.BB.LABEL.4_5:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1607
	movhi HIGHW1(#_Fls_GenState), r0, r6
	st.w r5, LOWW(#_Fls_GenState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1609
	movhi HIGHW1(#_Fls_GenJobResult), r0, r6
	st.w r5, LOWW(#_Fls_GenJobResult)[r6]
.BB.LABEL.4_6:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r5
	st.b r0, LOWW(#_Fls_GblTimeOutMonitor)[r5]
.BB.LABEL.4_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1639
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1643
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r5
	ld.bu LOWW(#_Fls_GblJobSuspended)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1647
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r5
	st.b r0, LOWW(#_Fls_GblJobSuspended)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1648
	jarl32 _Fls_ClearBackUpData, r31
.BB.LABEL.4_9:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1659
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1663
	jarl32 _Fls_CallJobNotification, r31
.BB.LABEL.4_10:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1672
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_11:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GenState), r0, r5
	mov 0x00000001, r6
	st.w r6, LOWW(#_Fls_GenState)[r5]
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	mov 0x00000003, r6
	st.w r6, LOWW(#_Fls_GenJobResult)[r5]
	br9 .BB.LABEL.4_6
_Fls_GetStatus:
	.stack _Fls_GetStatus = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1748
	movhi HIGHW1(#_Fls_GenState), r0, r5
	ld.w LOWW(#_Fls_GenState)[r5], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1758
	jmp [r31]
_Fls_GetJobResult:
	.stack _Fls_GetJobResult = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1839
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	ld.w LOWW(#_Fls_GenJobResult)[r5], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1849
	jmp [r31]
_Fls_MainFunction:
	.stack _Fls_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1908
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1917
	movhi HIGHW1(#_Fls_GblInitStatus), r0, r5
	ld.bu LOWW(#_Fls_GblInitStatus)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_14
.BB.LABEL.7_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1935
	movhi HIGHW1(#_Fls_GenState), r0, r5
	ld.w LOWW(#_Fls_GenState)[r5], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_2:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1938
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r5], r5
	add 0xFFFFFFFF, r5
	cmp 0x00000006, r5
	bh9 .BB.LABEL.7_14
.BB.LABEL.7_3:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.7_15[r5]
.SWITCH.LABEL.7_15:
	br9 .BB.LABEL.7_4
	br9 .BB.LABEL.7_6
	br9 .BB.LABEL.7_8
	br9 .BB.LABEL.7_11
	br9 .BB.LABEL.7_12
	br9 .BB.LABEL.7_9
	br9 .BB.LABEL.7_13
.SWITCH.LABEL.7_15.END:
.BB.LABEL.7_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1942
	jarl32 _Fls_MainErase, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1947
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r5
	ld.bu LOWW(#_Fls_GblTimeOutMonitor)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_5:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1950
	jarl32 _Fls_TimeOutCheckAndProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_6:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1961
	jarl32 _Fls_MainWrite, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1966
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r5
	ld.bu LOWW(#_Fls_GblTimeOutMonitor)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_7:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1969
	jarl32 _Fls_TimeOutCheckAndProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_8:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 1980
	jarl32 _Fls_MainWrite, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_9:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2006
	jarl32 _Fls_MainBlankCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2011
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r5
	ld.bu LOWW(#_Fls_GblTimeOutMonitor)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_10:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2014
	jarl32 _Fls_TimeOutCheckAndProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_11:	; switch_clause_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2024
	jarl32 _Fls_MainRead, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_12:	; switch_clause_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2029
	jarl32 _Fls_MainCompare, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_13:	; switch_clause_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2035
	jarl32 _Fls_MainReadImm, r31
.BB.LABEL.7_14:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2051
	dispose 0x00000000, 0x00000001, [r31]
_Fls_Read:
	.stack _Fls_Read = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2112
	prepare 0x00000385, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2149
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2145
	movhi 0x0000FF20, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2153
	mov #_Fls_GstVar, r28
	st.w r25, 0x0000000C[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2158
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2255
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2258
	st.w r27, 0x0000001C[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2261
	andi 0x00000003, r25, r5
	st.b r5, 0x00000020[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2264
	ld.bu 0x00000020[r28], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2270
	mov #_Fls_GstVar, r5
	ld.bu 0x00000020[r5], r6
	sub r6, r25
	st.w r25, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2273
	ld.bu 0x00000020[r5], r5
	add r5, r27
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2280
	andi 0x00000003, r27, r0
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2283
	andi 0x00000003, r27, r5
	mov 0x00000004, r6
	sub r5, r6
	add r6, r27
.BB.LABEL.8_4:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2292
	mov #_Fls_GstVar, r5
	mov #_Fls_GulTempBuffer, r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2297
	st.w r26, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2299
	st.w r27, 0x00000018[r5]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2301
	st.w r6, 0x00000028[r5]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2303
	movhi HIGHW1(#_Fls_GenState), r0, r6
	st.w r5, LOWW(#_Fls_GenState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2305
	movhi HIGHW1(#_Fls_GenJobResult), r0, r6
	st.w r5, LOWW(#_Fls_GenJobResult)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2309
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2348
	dispose 0x00000000, 0x00000385, [r31]
_Fls_Compare:
	.stack _Fls_Compare = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2407
	prepare 0x00000385, 0x00000000
	mov r7, r25
	mov r8, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2433
	movhi 0x0000FF20, r6, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2435
	mov #_Fls_GstVar, r28
	st.w r27, 0x0000000C[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2520
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2523
	st.w r26, 0x0000001C[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2526
	andi 0x00000003, r27, r5
	st.b r5, 0x00000020[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2529
	ld.bu 0x00000020[r28], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2535
	mov #_Fls_GstVar, r5
	ld.bu 0x00000020[r5], r6
	sub r6, r27
	st.w r27, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2538
	ld.bu 0x00000020[r5], r5
	add r5, r26
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2545
	andi 0x00000003, r26, r0
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2548
	andi 0x00000003, r26, r5
	mov 0x00000004, r6
	sub r5, r6
	add r6, r26
.BB.LABEL.9_4:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2557
	mov #_Fls_GstVar, r5
	mov #_Fls_GulTempBuffer, r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2562
	st.w r25, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2564
	st.w r26, 0x00000018[r5]
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2566
	st.w r6, 0x00000028[r5]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2568
	movhi HIGHW1(#_Fls_GenState), r0, r6
	st.w r5, LOWW(#_Fls_GenState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2570
	movhi HIGHW1(#_Fls_GenJobResult), r0, r6
	st.w r5, LOWW(#_Fls_GenJobResult)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2574
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2593
	dispose 0x00000000, 0x00000385, [r31]
_Fls_SetMode:
	.stack _Fls_SetMode = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2640
	movhi HIGHW1(#_Fls_GenCurrentMode), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2654
	st.w r6, LOWW(#_Fls_GenCurrentMode)[r5]
	jmp [r31]
_Fls_ReadImmediate:
	.stack _Fls_ReadImmediate = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2794
	prepare 0x00000385, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2825
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2821
	movhi 0x0000FF20, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2828
	mov #_Fls_GstVar, r28
	st.w r25, 0x0000000C[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2833
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2916
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl32 _Fls_ReadMisAlignHandler, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2920
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2924
	st.w r26, 0x00000000[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2927
	st.w r25, 0x00000018[r28]
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2929
	st.w r5, 0x00000028[r28]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2931
	movhi HIGHW1(#_Fls_GenState), r0, r6
	st.w r5, LOWW(#_Fls_GenState)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2933
	movhi HIGHW1(#_Fls_GenJobResult), r0, r6
	st.w r5, LOWW(#_Fls_GenJobResult)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2937
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 2955
	dispose 0x00000000, 0x00000385, [r31]
_Fls_Suspend:
	.stack _Fls_Suspend = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3247
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3273
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r5], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_2:	; bb12
	movhi HIGHW1(#_Fls_GenState), r0, r5
	ld.w LOWW(#_Fls_GenState)[r5], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_3:	; bb23
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r5
	ld.bu LOWW(#_Fls_GblJobSuspended)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3288
	jarl32 _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3291
	mov #_Fls_GstVar, r5
	ld.w 0x00000010[r5], r6
	ld.w 0x00000014[r5], r5
	cmp r5, r6
	bnc9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3293
	movhi HIGHW1(#_Fls_GblJobSuspendRequest), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Fls_GblJobSuspendRequest)[r5]
	mov 0x00000000, r25
	br9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3298
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r25
	mov 0x00000004, r5
	st.w r5, LOWW(#_Fls_GstVar+0x0000002C)[r25]
	mov 0x00000001, r25
.BB.LABEL.12_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3303
	jarl32 _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.12_8:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3308
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	mov 0x00000004, r6
	st.w r6, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3309
	dispose 0x00000000, 0x00000201, [r31]
_Fls_Resume:
	.stack _Fls_Resume = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3365
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3391
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r5
	ld.bu LOWW(#_Fls_GblJobSuspended)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GenState), r0, r5
	ld.w LOWW(#_Fls_GenState)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3404
	jarl32 _Fls_ProcessResume, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls.c", 3408
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	mov 0x00000004, r6
	st.w r6, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	dispose 0x00000000, 0x00000001, [r31]
