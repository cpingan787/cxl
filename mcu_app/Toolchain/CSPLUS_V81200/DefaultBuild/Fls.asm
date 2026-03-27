#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\fls\src\Fls.c -oDefaultBuild\Fls.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_deedbf01580b46888a34e5752b5ad1eag1qa0xed.4jt
#@	compiled at Fri Mar 27 09:50:54 2026

	.file "..\..\Bsw\Mcal\fls\src\Fls.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 635
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 650
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	mov 0x00000004, r5
	st.w r5, LOWW(#_Fls_GstVar+0x0000002C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 725
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	st.w r6, LOWW(#_Fls_GpConfigPtr)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 748
	jarl _Fls_PreFcuInitCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 749
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	movea 0x00000011, r0, r9
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 757
	mov r7, r8
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 768
	jarl _Fls_FcuInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 770
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 777
	mov #_Fls_GstVar, r2
	st.b r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 778
	st.w r0, 0x00000024[r2]
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 781
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r20, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 784
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r0, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 786
	st.w r0, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 789
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r5
	ld.w LOWW(#_Fls_GpConfigPtr)[r5], r5
	ld.w 0x0000001C[r5], r5
	movhi HIGHW1(#_Fls_GenCurrentMode), r0, r6
	st.w r5, LOWW(#_Fls_GenCurrentMode)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 798
	st.w r0, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 799
	st.w r0, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 801
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	st.b r0, LOWW(#_Fls_GblJobSuspended)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 802
	jarl _Fls_ClearBackUpData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 818
	movhi HIGHW1(#_Fls_GblInitStatus), r0, r2
	st.b r20, LOWW(#_Fls_GblInitStatus)[r2]
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 840
	dispose 0x00000000, 0x00000041, [r31]
_Fls_Erase:
	.stack _Fls_Erase = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 899
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 925
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 920
	movhi 0x0000FF20, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 929
	mov #_Fls_GstVar, r2
	st.w r20, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 930
	mov r20, r5
	add r21, r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 935
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1022
	andi 0x0000003F, r21, r0
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1024
	movea 0x0000003F, r21, r21
	movea 0xFFFFFFC0, r0, r2
	and r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1026
	add r21, r20
	add 0xFFFFFFFF, r20
	movhi HIGHW1(#_Fls_GstVar+0x00000014), r0, r2
	st.w r20, LOWW(#_Fls_GstVar+0x00000014)[r2]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1034
	mov #_Fls_GstVar, r2
	st.w r21, 0x0000001C[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1053
	st.w r6, 0x00000028[r2]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1055
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1057
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1060
	jarl _Fls_SuspendPreCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1062
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1074
	jarl _Fls_InitiateEraseJob, r31
.BB.LABEL.2_4:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1090
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1092
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.2_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1114
	dispose 0x00000000, 0x00000061, [r31]
_Fls_Write:
	.stack _Fls_Write = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1179
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1206
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1202
	movhi 0x0000FF20, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1209
	mov #_Fls_GstVar, r5
	st.w r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1210
	ld.w 0x00000010[r5], r2
	add r22, r2
	add 0xFFFFFFFF, r2
	st.w r2, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1213
	st.w r22, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1214
	st.w r22, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1216
	st.w r21, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1221
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1373
	jarl _Fls_SuspendPreCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1377
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1409
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	st.w r2, LOWW(#_Fls_GstVar+0x00000028)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1411
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1413
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1425
	jarl _Fls_InitiateWriteJob, r31
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1441
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1443
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.3_4:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1465
	dispose 0x00000000, 0x00000071, [r31]
_Fls_Cancel:
	.stack _Fls_Cancel = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1519
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1537
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	ld.w LOWW(#_Fls_GenJobResult)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GstBackUpVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstBackUpVar+0x00000028)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1558
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1562
	mov #_Fls_GstBackUpVar, r2
	movea 0x00000028, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1569
	mov #_Fls_GstVar, r6
	movea 0x00000028, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1562
	ld.w 0x00000028[r2], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1569
	cmov 0x00000002, r6, r5, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1572
	add 0xFFFFFFFF, r2
	cmp 0x00000006, r2
	bh9 .BB.LABEL.4_7
.BB.LABEL.4_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.4_12[r2]
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1595
	jarl _Fls_ProcessCancel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1596
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r2], r2
	cmp 0x0000000B, r2
	bz9 .BB.LABEL.4_11
.BB.LABEL.4_5:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1607
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1609
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
.BB.LABEL.4_6:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	st.b r0, LOWW(#_Fls_GblTimeOutMonitor)[r2]
.BB.LABEL.4_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1639
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1643
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1647
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	st.b r0, LOWW(#_Fls_GblJobSuspended)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1648
	jarl _Fls_ClearBackUpData, r31
.BB.LABEL.4_9:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1659
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1663
	jarl _Fls_CallJobNotification, r31
.BB.LABEL.4_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1672
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_11:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GenState), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fls_GenState)[r2]
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_Fls_GenJobResult)[r2]
	br9 .BB.LABEL.4_6
_Fls_GetStatus:
	.stack _Fls_GetStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1748
	movhi HIGHW1(#_Fls_GenState), r0, r2
	ld.w LOWW(#_Fls_GenState)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1758
	jmp [r31]
_Fls_GetJobResult:
	.stack _Fls_GetJobResult = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1839
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	ld.w LOWW(#_Fls_GenJobResult)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1849
	jmp [r31]
_Fls_MainFunction:
	.stack _Fls_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1908
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1917
	movhi HIGHW1(#_Fls_GblInitStatus), r0, r2
	ld.bu LOWW(#_Fls_GblInitStatus)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_14
.BB.LABEL.7_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1935
	movhi HIGHW1(#_Fls_GenState), r0, r2
	ld.w LOWW(#_Fls_GenState)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_2:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1938
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000006, r2
	bh9 .BB.LABEL.7_14
.BB.LABEL.7_3:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.7_15[r2]
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1942
	jarl _Fls_MainErase, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1947
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	ld.bu LOWW(#_Fls_GblTimeOutMonitor)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_5:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1950
	jarl _Fls_TimeOutCheckAndProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_6:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1961
	jarl _Fls_MainWrite, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1966
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	ld.bu LOWW(#_Fls_GblTimeOutMonitor)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_7:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1969
	jarl _Fls_TimeOutCheckAndProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_8:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 1980
	jarl _Fls_MainWrite, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_9:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2006
	jarl _Fls_MainBlankCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2011
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	ld.bu LOWW(#_Fls_GblTimeOutMonitor)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_10:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2014
	jarl _Fls_TimeOutCheckAndProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_11:	; switch_clause_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2024
	jarl _Fls_MainRead, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_12:	; switch_clause_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2029
	jarl _Fls_MainCompare, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_13:	; switch_clause_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2035
	jarl _Fls_MainReadImm, r31
.BB.LABEL.7_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2051
	dispose 0x00000000, 0x00000001, [r31]
_Fls_Read:
	.stack _Fls_Read = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2112
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2149
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2145
	movhi 0x0000FF20, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2153
	mov #_Fls_GstVar, r23
	st.w r20, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2158
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2255
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2258
	st.w r22, 0x0000001C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2261
	andi 0x00000003, r20, r2
	st.b r2, 0x00000020[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2264
	ld.bu 0x00000020[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2270
	mov #_Fls_GstVar, r2
	ld.bu 0x00000020[r2], r5
	sub r5, r20
	st.w r20, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2273
	ld.bu 0x00000020[r2], r2
	add r2, r22
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2280
	andi 0x00000003, r22, r0
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2283
	andi 0x00000003, r22, r2
	mov 0x00000004, r5
	sub r2, r5
	add r5, r22
.BB.LABEL.8_4:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2292
	mov #_Fls_GstVar, r2
	mov #_Fls_GulTempBuffer, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2297
	st.w r21, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2299
	st.w r22, 0x00000018[r2]
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2301
	st.w r5, 0x00000028[r2]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2303
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2305
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2309
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2348
	dispose 0x00000000, 0x00000079, [r31]
_Fls_Compare:
	.stack _Fls_Compare = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2407
	prepare 0x00000079, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2433
	movhi 0x0000FF20, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2435
	mov #_Fls_GstVar, r23
	st.w r22, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2520
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2523
	st.w r21, 0x0000001C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2526
	andi 0x00000003, r22, r2
	st.b r2, 0x00000020[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2529
	ld.bu 0x00000020[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2535
	mov #_Fls_GstVar, r2
	ld.bu 0x00000020[r2], r5
	sub r5, r22
	st.w r22, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2538
	ld.bu 0x00000020[r2], r2
	add r2, r21
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2545
	andi 0x00000003, r21, r0
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2548
	andi 0x00000003, r21, r2
	mov 0x00000004, r5
	sub r2, r5
	add r5, r21
.BB.LABEL.9_4:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2557
	mov #_Fls_GstVar, r2
	mov #_Fls_GulTempBuffer, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2562
	st.w r20, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2564
	st.w r21, 0x00000018[r2]
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2566
	st.w r5, 0x00000028[r2]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2568
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2570
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2574
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2593
	dispose 0x00000000, 0x00000079, [r31]
_Fls_SetMode:
	.stack _Fls_SetMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2640
	movhi HIGHW1(#_Fls_GenCurrentMode), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2654
	st.w r6, LOWW(#_Fls_GenCurrentMode)[r2]
	jmp [r31]
_Fls_ReadImmediate:
	.stack _Fls_ReadImmediate = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2794
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2825
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2821
	movhi 0x0000FF20, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2828
	mov #_Fls_GstVar, r23
	st.w r20, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2833
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2916
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _Fls_ReadMisAlignHandler, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2920
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2924
	st.w r21, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2927
	st.w r20, 0x00000018[r23]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2929
	st.w r2, 0x00000028[r23]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2931
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2933
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2937
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 2955
	dispose 0x00000000, 0x00000079, [r31]
_Fls_Suspend:
	.stack _Fls_Suspend = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3247
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3273
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_2:	; bb12
	movhi HIGHW1(#_Fls_GenState), r0, r2
	ld.w LOWW(#_Fls_GenState)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_3:	; bb23
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3288
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3291
	mov #_Fls_GstVar, r2
	ld.w 0x00000010[r2], r5
	ld.w 0x00000014[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3293
	movhi HIGHW1(#_Fls_GblJobSuspendRequest), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Fls_GblJobSuspendRequest)[r2]
	mov 0x00000000, r20
	br9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3298
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r20
	mov 0x00000004, r2
	st.w r2, LOWW(#_Fls_GstVar+0x0000002C)[r20]
	mov 0x00000001, r20
.BB.LABEL.12_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3303
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_8:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3308
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	mov 0x00000004, r5
	st.w r5, LOWW(#_Fls_GstVar+0x0000002C)[r2]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3309
	dispose 0x00000000, 0x00000041, [r31]
_Fls_Resume:
	.stack _Fls_Resume = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3365
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3391
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 0
	movhi HIGHW1(#_Fls_GenState), r0, r2
	ld.w LOWW(#_Fls_GenState)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3404
	jarl _Fls_ProcessResume, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls.c", 3408
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	mov 0x00000004, r5
	st.w r5, LOWW(#_Fls_GstVar+0x0000002C)[r2]
	dispose 0x00000000, 0x00000001, [r31]
