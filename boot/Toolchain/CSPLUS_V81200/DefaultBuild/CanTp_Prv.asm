#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\CanTp\CanTp_Prv.c -oDefaultBuild\CanTp_Prv.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6083dcd6268441ad98b08e9d3383d78d0vbedwpt.2sq
#@	compiled at Thu Jul 16 13:41:31 2026

	.file "..\..\Bsw\SystemServices\BootServices\CanTp\CanTp_Prv.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Dcm_S3TimerStartFlag
	.extern _Dcm_S3Timer
	.extern _gDCM_FunReq_Flag
	.extern _DcmState
	.extern _Comm_MainTick
	.public _CanTp_Channel, 20
	.public _CanTp_TxConfirmationChannel, 1
	.public _CanTp_MainFunctionTicks, 2
	.public _CanTp_CfgPtr, 4
	.public _CanTp_SubState, 1
	.public _CanTp_State, 9
	.public _CanTp_AddressSize, 5
	.public _CanTp_PciFrameType, 6
	.public _CanTp_PciSize, 6
	.public _CanTp_CanDlTable, 65
	.public _CanTp_StateFunctions, 36
	.public _CanTp_ProcessFrame, 16
	.public _CanTp_CreateFrame, 16
	.public _CanTp_PduRConfirmationApis, 8
	.extern _Dcm_TxConfirmation
	.extern _Dcm_RxIndication
	.extern _CanIf_Transmit
	.extern _Dcm_CopyTxData
	.extern _Dcm_StartOfReception
	.extern _Dcm_CopyRxData

	.section .text, text
_SchM_Enter_CanTp_EXCLUSIVE_AREA.1:
	.stack _SchM_Enter_CanTp_EXCLUSIVE_AREA.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Cfg_SchM.h", 22
	jmp [r31]
_SchM_Exit_CanTp_EXCLUSIVE_AREA.1:
	.stack _SchM_Exit_CanTp_EXCLUSIVE_AREA.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Cfg_SchM.h", 27
	jmp [r31]
_CanTp_GetElapsedValue.1:
	.stack _CanTp_GetElapsedValue.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 287
	ld.h 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 291
	movhi HIGHW1(#_CanTp_MainFunctionTicks), r0, r8
	ld.h LOWW(#_CanTp_MainFunctionTicks)[r8], r8
	st.h r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 293
	sub r5, r8
	st.h r8, 0x00000000[r7]
	jmp [r31]
_CanTp_Prv_GetBit.1:
	.stack _CanTp_Prv_GetBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 305
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 307
	cmp r7, r6
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 308
	jmp [r31]
_CanTp_Prv_ArrayInit.1:
	.stack _CanTp_Prv_ArrayInit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 332
	mov 0x00000000, r5
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 338
	mov r6, r9
	add r5, r9
	st.b r8, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.5_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 336
	cmp r7, r5
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 340
	jmp [r31]
_CanTp_Prv_GetTxBlockCfs.1:
	.stack _CanTp_Prv_GetTxBlockCfs.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 411
	mulhi 0x00000014, r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 414
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 415
	mulh 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 414
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x0000000C[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 415
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 419
	ld.bu 0x00000000[r7], r5
	add 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 416
	ld.bu 0x00000003[r7], r7
	mov #_CanTp_AddressSize, r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 419
	ld.bu 0x00000000[r8], r7
	sub r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 420
	zxb r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 417
	ld.hu 0x0000000C[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 420
	divhu r5, r6, r5
	cmp 0x00000000, r5
	adf 0x0000000A, r0, r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 421
	zxh r10
	jmp [r31]
_CanTp_Prv_GetRxBlockCfs.1:
	.stack _CanTp_Prv_GetRxBlockCfs.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 430
	mulhi 0x00000014, r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 433
	mov #_CanTp_Channel, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 438
	ld.bu 0x00000001[r6], r5
	add 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 433
	ld.bu 0x00000006[r6], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 435
	mulh 0x0000000C, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 433
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r8
	ld.w LOWW(#_CanTp_CfgPtr)[r8], r8
	ld.w 0x00000010[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 435
	add r7, r8
	ld.bu 0x00000002[r8], r7
	mov #_CanTp_AddressSize, r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 438
	ld.bu 0x00000000[r8], r7
	sub r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 439
	zxb r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 436
	ld.hu 0x0000000C[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 439
	divhu r5, r6, r5
	cmp 0x00000000, r5
	adf 0x0000000A, r0, r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 440
	zxh r10
	jmp [r31]
_CanTp_Prv_CanIfTransmit.1:
	.stack _CanTp_Prv_CanIfTransmit.1 = 88
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 489
	prepare 0x00000301, 0x0000004C
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 495
	ld.h 0x00000008[r7], r5
	st.h r5, 0x00000048[r3]
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 498
	st.w r5, 0x00000040[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 499
	ld.bu 0x00000003[r25], r6
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r7
	add r5, r7
	ld.bu 0x00000002[r7], r5
	mov #_CanTp_PciFrameType, r7
	add r5, r7
	ld.bu 0x00000000[r7], r5
	shl 0x00000002, r5
	mov #_CanTp_CreateFrame, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	movea 0x00000040, r3, r7
	jarl [r5], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 504
	ld.hu 0x00000004[r25], r5
	mov #_CanTp_TxConfirmationChannel, r6
	add r5, r6
	ld.b 0x00000003[r25], r5
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 505
	ld.hu 0x00000006[r25], r6
	movea 0x00000040, r3, r7
	jarl32 _CanIf_Transmit, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 507
	ld.bu 0x00000000[r25], r5
	shl 0x00000002, r5
	mov #_CanTp_PduRConfirmationApis, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x00000008[r25], r6
	mov 0x00000001, r26
	mov r26, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 509
	ld.bu 0x00000003[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 510
	ld.hu 0x00000004[r25], r5
	mov #_CanTp_TxConfirmationChannel, r6
	add r5, r6
	st.b r26, 0x00000000[r6]
.BB.LABEL.8_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 514
	dispose 0x0000004C, 0x00000301, [r31]
_CanTp_Prv_FcTransmit.1:
	.stack _CanTp_Prv_FcTransmit.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 524
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 527
	cmp 0x00000000, r8
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.bu 0x00000003[r6], r5
	mov #_CanTp_SubState, r8
	add r5, r8
	ld.bu 0x00000000[r8], r5
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 529
	ld.bu 0x00000003[r6], r5
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r8
	add r8, r5
	st.h r9, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 530
	ld.bu 0x00000003[r6], r5
	mulhi 0x00000014, r5, r5
	add r5, r8
	mov 0x00000005, r5
	st.b r5, 0x00000002[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 531
	ld.bu 0x00000003[r6], r5
	mov #_CanTp_SubState, r8
	add r5, r8
	mov 0x00000007, r5
	st.b r5, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 535
	jarl _CanTp_Prv_CanIfTransmit.1, r31
.BB.LABEL.9_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 538
	dispose 0x00000000, 0x00000001, [r31]
_CanTp_Prv_GetConnectionAcceptance.1:
	.stack _CanTp_Prv_GetConnectionAcceptance.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 772
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 777
	ld.bu 0x0000000B[r6], r5
	mov #_CanTp_SubState, r7
	add r5, r7
	ld.bu 0x00000000[r7], r7
	mov #_CanTp_State, r8
	add r7, r8
	ld.bu 0x00000000[r8], r7
	cmp 0x00000000, r7
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 785
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 791
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	ld.bu 0x0000000C[r25], r6
	cmp r6, r5
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_3:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 794
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	ld.hu 0x00000010[r25], r6
	mov 0x00000001, r7
	jarl [r5], r31
.BB.LABEL.10_4:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 800
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	mov 0x00000005, r5
	st.b r5, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 801
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.10_5:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 806
	dispose 0x00000000, 0x00000201, [r31]
_CanTp_Prv_SetTxBlockInfo.1:
	.stack _CanTp_Prv_SetTxBlockInfo.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 816
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 822
	ld.w 0x00000000[r7], r5
	ld.bu 0x00000007[r6], r7
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 819
	ld.bu 0x0000000B[r6], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 825
	mulhi 0x00000014, r25, r7
	mov #_CanTp_Channel, r8
	add r7, r8
	ld.hu 0x00000012[r8], r7
	addi 0xFFFFFF80, r7, r0
	movea 0x00000012, r8, r7
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 829
	mulhi 0x00000014, r25, r8
	mov #_CanTp_Channel, r9
	add r8, r9
	ld.b 0x00000000[r5], r8
	st.b r8, 0x00000005[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 832
	ld.b 0x00000001[r5], r8
	cmp 0x00000000, r8
	zxb r8
	bn9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x000F4240, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 834
	mul r5, r8, r0
	divqu r5, r8, r0
	st.h r8, 0x00000000[r7]
	br9 .BB.LABEL.11_7
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 836
	add 0x0000000F, r8
	zxb r8
	cmp 0x00000009, r8
	bl9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	movea 0x0000007F, r0, r5
	br9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 842
	ld.bu 0x00000001[r5], r5
	andi 0x0000000F, r5, r5
	mov 0x000186A0, r8
	mul r8, r5, r0
	mov 0x000F4240, r8
	divqu r8, r5, r0
.BB.LABEL.11_6:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	st.h r5, 0x00000000[r7]
.BB.LABEL.11_7:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 846
	ld.bu 0x0000000B[r6], r6
	jarl _CanTp_Prv_GetTxBlockCfs.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 848
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000005[r6], r5
	add 0x00000005, r6
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_break_bb78.bb101_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.11_11
.BB.LABEL.11_9:	; bb89
	cmp r10, r5
	bgt9 .BB.LABEL.11_8
.BB.LABEL.11_10:	; bb100
	mov 0x00000001, r5
.BB.LABEL.11_11:	; bb101
	mulhi 0x00000014, r25, r7
	mov #_CanTp_Channel, r8
	add r7, r8
	add 0x0000000A, r8
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.11_13
.BB.LABEL.11_12:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 850
	st.h r10, 0x00000000[r8]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.11_13:	; if_else_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 854
	ld.bu 0x00000000[r6], r5
	st.h r5, 0x00000000[r8]
	dispose 0x00000000, 0x00000201, [r31]
_CanTp_Prv_GetRxParam.1:
	.stack _CanTp_Prv_GetRxParam.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 865
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 872
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x00000010[r5], r8
	mulh 0x0000000C, r6
	add r6, r8
	ld.bu 0x00000004[r8], r6
	shl 0x00000002, r6
	ld.w 0x00000018[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 869
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 872
	adf 0x0000000A, r6, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 876
	ld.bu 0x00000000[r5], r10
	jmp [r31]
_CanTp_Prv_SetRxBlockInfo.1:
	.stack _CanTp_Prv_SetRxBlockInfo.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 886
	prepare 0x00000B87, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 891
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r25
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 893
	ld.bu 0x00000001[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 892
	ld.bu 0x00000006[r25], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 893
	mulhi 0x0000000C, r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 892
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r9
	ld.w LOWW(#_CanTp_CfgPtr)[r9], r9
	ld.w 0x00000010[r9], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 893
	add r8, r9
	ld.bu 0x00000002[r9], r8
	mov #_CanTp_AddressSize, r9
	add r8, r9
	ld.bu 0x00000000[r9], r8
	sub r8, r26
	add 0xFFFFFFFF, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 898
	ld.hu 0x00000012[r25], r8
	ld.bu 0x00000005[r25], r10
	movea 0x00000012, r25, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 891
	st.w r9, 0x00000000[r3]
	add 0x00000005, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 898
	addi 0xFFFFFF80, r8, r0
	mov r6, r27
	mov r7, r28
	mov r6, r29
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 901
	mov r5, r6
	jarl _CanTp_Prv_GetRxParam.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 903
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x0000000C[r6], r5
	cmp r5, r28
	bnc9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 909
	mov r28, r5
	divhu r26, r5, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 910
	andi 0x000000FF, r5, r6
	cmp r10, r6
	setf 0x0000000B, r6
	cmp 0x00000000, r10
	setf 0x0000000A, r7
	tst r7, r6
	cmov 0x0000000A, r10, r5, r10
.BB.LABEL.13_3:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov r10, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 914
	andi 0x000000FF, r30, r0
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x0000000C[r6], r5
	cmp r5, r28
	bl9 .BB.LABEL.13_8
.BB.LABEL.13_5:	; bb113
	andi 0x000000FF, r30, r0
	bz9 .BB.LABEL.13_9
.BB.LABEL.13_6:	; bb118
	andi 0x000000FF, r30, r5
	zxh r26
	mul r26, r5, r0
	cmp r5, r28
	bge9 .BB.LABEL.13_9
.BB.LABEL.13_7:	; bb135
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x0000000C[r6], r5
	cmp r5, r28
	bnc9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 917
	mulhi 0x00000014, r27, r27
	mov #_CanTp_Channel, r29
	add r27, r29
	mov 0x00000001, r27
	st.b r27, 0x00000003[r29]
	br9 .BB.LABEL.13_12
.BB.LABEL.13_9:	; if_else_bb162
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 921
	mov r29, r6
	jarl _CanTp_Prv_GetRxBlockCfs.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 922
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	add 0x0000000A, r6
	andi 0x000000FF, r30, r0
	bz9 .BB.LABEL.13_11
.BB.LABEL.13_10:	; bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	andi 0x000000FF, r30, r10
.BB.LABEL.13_11:	; bb178
	st.h r10, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 923
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	st.b r0, 0x00000003[r6]
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 925
	st.h r0, 0x00000000[r5]
.BB.LABEL.13_12:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 929
	st.b r30, 0x00000000[r25]
	dispose 0x00000004, 0x00000B87, [r31]
_CanTp_Prv_PrepareFcTransmit.1:
	.stack _CanTp_Prv_PrepareFcTransmit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 968
	mulhi 0x00000014, r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 970
	mov #_CanTp_Channel, r7
	add r5, r7
	ld.hu 0x0000000A[r7], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 972
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r7
	add r5, r7
	st.h r0, 0x00000008[r7]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 973
	st.b r5, 0x00000003[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 974
	mov #_CanTp_SubState, r5
	add r6, r5
	mov 0x00000006, r6
	st.b r6, 0x00000000[r5]
.BB.LABEL.14_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 976
	jmp [r31]
_CanTp_Prv_GetTxBuffer.1:
	.stack _CanTp_Prv_GetTxBuffer.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 42
	prepare 0x00000201, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 46
	ld.bu 0x00000003[r6], r5
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r8
	add r5, r8
	ld.hu 0x0000000E[r6], r5
	ld.hu 0x00000010[r6], r9
	cmp r9, r5
	ld.bu 0x00000000[r8], r5
	mov r6, r25
	bnc9 .BB.LABEL.15_7
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 48
	cmp 0x00000002, r5
	bz9 .BB.LABEL.15_9
.BB.LABEL.15_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 50
	ld.hu 0x00000008[r25], r6
	movea 0x00000002, r3, r9
	mov 0x00000000, r8
	jarl32 _Dcm_CopyTxData, r31
	cmp 0x00000002, r10
	bz9 .BB.LABEL.15_9
.BB.LABEL.15_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 53
	ld.bu 0x00000001[r25], r5
	ld.hu 0x00000002[r3], r6
	cmp r5, r6
	blt9 .BB.LABEL.15_9
.BB.LABEL.15_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 55
	ld.bu 0x00000003[r25], r5
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r25
	add r5, r25
	mov 0x00000002, r5
	st.b r5, 0x00000000[r25]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.15_6:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 63
	ld.bu 0x00000000[r25], r5
	shl 0x00000002, r5
	mov #_CanTp_PduRConfirmationApis, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x00000008[r25], r6
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 65
	ld.bu 0x00000003[r25], r5
	mov #_CanTp_SubState, r25
	add r5, r25
	st.b r0, 0x00000000[r25]
	dispose 0x00000004, 0x00000201, [r31]
.BB.LABEL.15_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 72
	cmp 0x00000002, r5
	bz9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 75
	ld.bu 0x00000000[r25], r5
	shl 0x00000002, r5
	mov #_CanTp_PduRConfirmationApis, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x00000008[r25], r6
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 77
	ld.bu 0x00000003[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
.BB.LABEL.15_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 80
	dispose 0x00000004, 0x00000201, [r31]
_CanTp_Prv_ProcessRxSingleFrame.1:
	.stack _CanTp_Prv_ProcessRxSingleFrame.1 = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 89
	prepare 0x00000381, 0x00000014
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 96
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 97
	ld.bu 0x0000000B[r25], r27
	movea 0x00000004, r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 99
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 101
	ld.w 0x00000000[r26], r5
	ld.bu 0x00000007[r25], r6
	add r6, r5
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 102
	ld.h 0x00000012[r25], r5
	st.h r5, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 104
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 106
	ld.w 0x00000008[r3], r5
	ld.bu 0x00000000[r5], r6
	addi 0xFFFFFFC2, r6, r0
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.bu 0x00000001[r5], r5
	addi 0xFFFFFF80, r5, r0
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_2:	; bb47
	ld.hu 0x00000010[r3], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 109
	movhi HIGHW1(#_gDCM_FunReq_Flag), r0, r25
	st.b r0, LOWW(#_gDCM_FunReq_Flag)[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 110
	movhi HIGHW1(#_DcmState), r0, r25
	ld.bu LOWW(#_DcmState)[r25], r25
	andi 0x000000C0, r25, r26
	addi 0xFFFFFF80, r26, r0
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	andi 0x000000C0, r25, r25
	addi 0xFFFFFF40, r25, r0
	bnz9 .BB.LABEL.16_14
.BB.LABEL.16_5:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 113
	movhi HIGHW1(#_Dcm_S3TimerStartFlag), r0, r25
	mov 0x00000001, r26
	st.b r26, LOWW(#_Dcm_S3TimerStartFlag)[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 114
	movhi HIGHW1(#_Comm_MainTick), r0, r25
	ld.h LOWW(#_Comm_MainTick)[r25], r25
	movhi HIGHW1(#_Dcm_S3Timer), r0, r26
	st.h r25, LOWW(#_Dcm_S3Timer)[r26]
	br9 .BB.LABEL.16_14
.BB.LABEL.16_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 119
	mov r25, r6
	mov r26, r7
	jarl _CanTp_Prv_GetConnectionAcceptance.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_14
.BB.LABEL.16_7:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 121
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r6, r5
	ld.b 0x0000000C[r25], r7
	st.b r7, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 122
	ld.h 0x00000012[r25], r7
	st.h r7, 0x0000000E[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 123
	ld.h 0x00000012[r25], r7
	st.h r7, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 126
	ld.bu 0x0000000B[r25], r7
	mulhi 0x00000014, r7, r7
	add r7, r6
	ld.b 0x00000008[r26], r7
	st.b r7, 0x00000001[r6]
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 128
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 133
	ld.hu 0x00000012[r25], r8
	ld.hu 0x00000010[r25], r6
	movea 0x00000006, r3, r9
	movea 0x00000008, r3, r7
	jarl32 _Dcm_StartOfReception, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 135
	cmp 0x00000003, r10
	bz9 .BB.LABEL.16_11
.BB.LABEL.16_8:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_13
.BB.LABEL.16_9:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 138
	ld.hu 0x00000012[r25], r5
	ld.hu 0x00000006[r3], r6
	cmp r5, r6
	bl9 .BB.LABEL.16_11
.BB.LABEL.16_10:	; if_then_bb135
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 140
	ld.hu 0x00000010[r25], r6
	movea 0x00000006, r3, r8
	movea 0x00000008, r3, r7
	jarl32 _Dcm_CopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 141
	cmp 0x00000000, r10
	setf 0x0000000A, r7
	br9 .BB.LABEL.16_12
.BB.LABEL.16_11:	; switch_clause_bb161
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r7
.BB.LABEL.16_12:	; switch_clause_bb161
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	ld.hu 0x00000010[r25], r6
	jarl [r5], r31
.BB.LABEL.16_13:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 156
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
.BB.LABEL.16_14:	; if_break_bb174
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 163
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000014, 0x00000381, [r31]
_CanTp_Prv_ProcessRxFirstFrame.1:
	.stack _CanTp_Prv_ProcessRxFirstFrame.1 = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 173
	prepare 0x00000385, 0x00000014
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 175
	ld.bu 0x0000000B[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 181
	st.h r0, 0x00000004[r3]
	movea 0x00000002, r3, r7
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 185
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 187
	ld.bu 0x00000007[r25], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 189
	ld.w 0x00000000[r26], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 187
	ld.hu 0x00000008[r26], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 189
	st.w r6, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 187
	sub r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 190
	andi 0x000000FF, r28, r5
	st.h r5, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 192
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 195
	mov r25, r6
	mov r26, r7
	jarl _CanTp_Prv_GetConnectionAcceptance.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.17_14
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 197
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r6, r5
	ld.b 0x0000000C[r25], r7
	st.b r7, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 198
	ld.h 0x00000012[r25], r7
	st.h r7, 0x0000000E[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 199
	ld.bu 0x0000000B[r25], r7
	mulhi 0x00000014, r7, r7
	add r7, r6
	ld.b 0x00000008[r26], r7
	st.b r7, 0x00000001[r6]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 201
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 206
	ld.hu 0x00000012[r25], r8
	ld.hu 0x00000010[r25], r6
	movea 0x00000006, r3, r9
	movea 0x00000008, r3, r7
	jarl32 _Dcm_StartOfReception, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 209
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	cmp 0x00000003, r10
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_3:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000001, r28
	mov 0x00000000, r5
	br9 .BB.LABEL.17_12
.BB.LABEL.17_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 212
	andi 0x000000FF, r28, r5
	ld.hu 0x00000006[r3], r6
	cmp r5, r6
	blt9 .BB.LABEL.17_9
.BB.LABEL.17_5:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 214
	ld.hu 0x00000010[r25], r6
	movea 0x00000006, r3, r8
	movea 0x00000008, r3, r7
	jarl32 _Dcm_CopyRxData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_8
.BB.LABEL.17_6:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 216
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r28
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r28], r5
.BB.LABEL.17_7:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.hu 0x00000010[r25], r6
	mov 0x00000001, r28
	mov r28, r7
	jarl [r5], r31
	mov 0x00000000, r5
	br9 .BB.LABEL.17_12
.BB.LABEL.17_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 223
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x00000012[r25], r5
	zxb r28
	sub r28, r5
	st.h r5, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 224
	st.b r0, 0x00000005[r6]
	movea 0x00000080, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 225
	st.h r5, 0x00000012[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 226
	st.h r0, 0x00000008[r6]
	mov 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 227
	st.b r28, 0x00000004[r6]
	br9 .BB.LABEL.17_11
.BB.LABEL.17_9:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 233
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	br9 .BB.LABEL.17_7
.BB.LABEL.17_10:	; switch_clause_bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 240
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r28
	add r5, r28
	st.b r0, 0x00000005[r28]
	mov 0x00000002, r28
.BB.LABEL.17_11:	; switch_clause_bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000006, r5
.BB.LABEL.17_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 247
	ld.bu 0x0000000B[r25], r6
	mov #_CanTp_SubState, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	cmp 0x00000005, r6
	bnz9 .BB.LABEL.17_14
.BB.LABEL.17_13:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 249
	mulhi 0x00000014, r27, r6
	mov #_CanTp_Channel, r7
	add r6, r7
	st.b r28, 0x00000003[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 250
	ld.bu 0x0000000B[r25], r6
	mov #_CanTp_SubState, r7
	add r6, r7
	st.b r5, 0x00000000[r7]
.BB.LABEL.17_14:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 254
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000014, 0x00000385, [r31]
_CanTp_Prv_ProcessRxConsecutiveFrame.1:
	.stack _CanTp_Prv_ProcessRxConsecutiveFrame.1 = 44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 264
	prepare 0x00000387, 0x00000014
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 271
	ld.bu 0x0000000B[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 272
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r28
	add r5, r28
	ld.h 0x00000010[r28], r5
	st.h r5, 0x00000002[r3]
	movea 0x00000004, r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 275
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 277
	ld.bu 0x00000007[r25], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 279
	ld.w 0x00000000[r26], r5
	add r29, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 277
	ld.bu 0x0000000A[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 279
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 281
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 277
	sub r29, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 283
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 272
	movea 0x00000010, r28, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 283
	bnz17 .BB.LABEL.18_9
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mulhi 0x00000014, r27, r6
	mov #_CanTp_Channel, r7
	add r6, r7
	ld.bu 0x00000006[r7], r6
	ld.bu 0x0000000C[r25], r7
	cmp r6, r7
	bnz9 .BB.LABEL.18_9
.BB.LABEL.18_2:	; bb62
	mulhi 0x00000014, r27, r6
	mov #_CanTp_Channel, r7
	add r6, r7
	ld.hu 0x0000000A[r7], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 290
	mulhi 0x00000014, r27, r6
	mov #_CanTp_Channel, r28
	add r6, r28
	ld.bu 0x00000004[r28], r6
	add 0x00000004, r28
	ld.bu 0x00000006[r25], r7
	cmp r6, r7
	bz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb.if_break_bb163_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.18_7
.BB.LABEL.18_5:	; if_then_bb88
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 292
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 294
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r29
	add r5, r29
	ld.hu 0x0000000C[r29], r5
	andi 0x000000FF, r26, r6
	cmp r6, r5
	cmov 0x0000000F, r26, r5, r5
	zxb r5
	st.h r5, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 297
	ld.hu 0x00000010[r25], r6
	movea 0x00000006, r3, r8
	movea 0x00000008, r3, r7
	jarl32 _Dcm_CopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 294
	add 0x0000000C, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 299
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_4
.BB.LABEL.18_6:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 301
	ld.b 0x00000000[r28], r5
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 302
	andi 0x0000000F, r5, r5
	st.b r5, 0x00000000[r28]
	movea 0x00000008, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 303
	ld.h 0x00000008[r5], r5
	ld.h 0x00000000[r29], r6
	sub r5, r6
	st.h r6, 0x00000000[r29]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 304
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.h 0x0000000A[r6], r5
	add 0xFFFFFFFF, r5
	st.h r5, 0x0000000A[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 306
	ld.bu 0x0000000B[r25], r6
	jarl _CanTp_Prv_PrepareFcTransmit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 308
	ld.hu 0x00000000[r29], r5
	cmp 0x00000000, r5
	mov 0xFFFFFFFF, r5
	cmov 0x00000002, 0x00000000, r5, r7
.BB.LABEL.18_7:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 312
	cmp 0xFFFFFFFF, r7
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 314
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	ld.hu 0x00000010[r25], r6
	zxb r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 315
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
.BB.LABEL.18_9:	; if_break_bb181
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 320
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000014, 0x00000387, [r31]
_CanTp_Prv_ProcessRxFlowControlFrame.1:
	.stack _CanTp_Prv_ProcessRxFlowControlFrame.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 330
	prepare 0x00000385, 0x00000004
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 337
	ld.bu 0x0000000B[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 338
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r28
	add r5, r28
	ld.h 0x00000010[r28], r5
	st.h r5, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 339
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 341
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 344
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 338
	movea 0x00000010, r28, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 344
	bnz9 .BB.LABEL.19_6
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 348
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 350
	ld.bu 0x00000005[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 353
	mulhi 0x00000014, r27, r25
	mov #_CanTp_Channel, r26
	add r25, r26
	mov 0x00000001, r25
	st.b r25, 0x00000003[r26]
	br9 .BB.LABEL.19_6
.BB.LABEL.19_4:	; switch_clause_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 356
	mulhi 0x00000014, r27, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	st.b r0, 0x00000003[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 357
	mov r25, r6
	mov r26, r7
	jarl _CanTp_Prv_SetTxBlockInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 358
	ld.bu 0x0000000B[r25], r25
	mov #_CanTp_SubState, r5
	add r25, r5
	mov 0x00000004, r25
	st.b r25, 0x00000000[r5]
	br9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; switch_clause_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 362
	movhi HIGHW1(#_CanTp_PduRConfirmationApis), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis)[r5], r5
	ld.hu 0x00000010[r25], r6
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 363
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
.BB.LABEL.19_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 369
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000385, [r31]
_CanTp_Prv_CreateTxSingleFrame.1:
	.stack _CanTp_Prv_CreateTxSingleFrame.1 = 52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 379
	prepare 0x00000B87, 0x00000018
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 394
	mov #_CanTp_SubState, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000002, r5
	mov r7, r25
	bnz17 .BB.LABEL.20_11
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 396
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 397
	ld.bu 0x00000002[r6], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 401
	mov #_CanTp_PciSize, r7
	add r5, r7
	ld.bu 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 396
	ld.bu 0x00000006[r6], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 401
	mulhi 0x0000000C, r26, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 396
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x0000000C[r7], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 401
	add r28, r27
	ld.bu 0x00000003[r27], r7
	mov #_CanTp_AddressSize, r8
	add r7, r8
	ld.bu 0x00000000[r8], r29
	add r5, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 404
	andi 0x000000FF, r29, r5
	ld.w 0x00000000[r25], r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 399
	ld.bu 0x0000000C[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 410
	ld.hu 0x0000000E[r6], r6
	st.w r6, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 405
	st.w r7, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 406
	st.h r5, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 407
	st.h r0, 0x00000008[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 410
	ld.hu 0x0000000A[r27], r6
	movea 0x0000000A, r3, r9
	mov 0x00000000, r8
	movea 0x0000000C, r3, r7
	jarl32 _Dcm_CopyTxData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 401
	add 0x00000003, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 410
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_11
.BB.LABEL.20_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 417
	mulhi 0x0000000C, r26, r5
	add r28, r5
	ld.bu 0x00000001[r5], r6
	mov 0x00000008, r7
	jarl _CanTp_Prv_GetBit.1, r31
	andi 0x000000FF, r29, r30
	ld.hu 0x00000014[r3], r5
	add r5, r30
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_4
.BB.LABEL.20_3:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 419
	mov #_CanTp_CanDlTable, r6
	add r30, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 422
	ld.bu 0x00000000[r6], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 421
	ld.w 0x00000000[r25], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 420
	add r5, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 421
	zxb r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 422
	mov r30, r7
	sub r29, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 421
	add r29, r6
	movea 0x000000AA, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 422
	jarl _CanTp_Prv_ArrayInit.1, r31
.BB.LABEL.20_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 430
	ld.bu 0x00000000[r27], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 429
	ld.w 0x00000000[r25], r5
	bz9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; if_then_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 432
	mulh 0x0000000C, r26
	add r26, r28
	ld.b 0x00000002[r28], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 433
	add 0x00000001, r5
.BB.LABEL.20_6:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000000[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 437
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000004[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 439
	st.b r6, 0x00000000[r5]
	br9 .BB.LABEL.20_10
.BB.LABEL.20_8:	; if_else_bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000000[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 444
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.20_10
.BB.LABEL.20_9:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 446
	st.b r0, 0x00000000[r5]
	ld.w 0x00000004[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 447
	st.b r6, 0x00000001[r5]
.BB.LABEL.20_10:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 452
	zxb r30
	st.h r30, 0x00000008[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 453
	dispose 0x00000018, 0x00000B87, [r31]
.BB.LABEL.20_11:	; if_break_bb173
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 458
	dispose 0x00000018, 0x00000B87, [r31]
_CanTp_Prv_CreateTxFirstFrame.1:
	.stack _CanTp_Prv_CreateTxFirstFrame.1 = 48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 467
	prepare 0x00000B87, 0x00000014
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 480
	mov #_CanTp_SubState, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000002, r5
	mov r7, r25
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 482
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 483
	ld.bu 0x00000002[r6], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 484
	mov #_CanTp_PciSize, r5
	add r26, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 482
	ld.bu 0x00000006[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 484
	mulhi 0x0000000C, r27, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 482
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x0000000C[r7], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 484
	add r29, r28
	ld.bu 0x00000003[r28], r7
	mov #_CanTp_AddressSize, r8
	add r7, r8
	ld.bu 0x00000000[r8], r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 488
	zxb r7
	ld.w 0x00000000[r25], r5
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 490
	ld.bu 0x00000000[r28], r8
	st.w r8, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 486
	ld.hu 0x0000000E[r6], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 489
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 490
	subr r8, r7
	st.h r7, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 491
	st.h r0, 0x00000008[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 494
	ld.hu 0x0000000A[r28], r6
	movea 0x00000006, r3, r9
	mov 0x00000000, r8
	movea 0x00000008, r3, r7
	jarl32 _Dcm_CopyTxData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 484
	add 0x00000003, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 494
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 501
	ld.bu 0x00000000[r28], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 500
	ld.w 0x00000000[r25], r5
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 503
	mulh 0x0000000C, r27
	add r27, r29
	ld.b 0x00000002[r29], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 504
	add 0x00000001, r5
.BB.LABEL.21_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 508
	cmp 0x00000002, r26
	bnz9 .BB.LABEL.21_6
.BB.LABEL.21_5:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 510
	mov r30, r26
	shr 0x00000008, r26
	movea 0x00000010, r26, r26
	st.b r26, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 511
	st.b r30, 0x00000001[r5]
	br9 .BB.LABEL.21_8
.BB.LABEL.21_6:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 516
	cmp 0x00000003, r26
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 518
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 519
	st.b r0, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 520
	st.b r0, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 521
	st.b r0, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 522
	mov r30, r6
	shr 0x00000008, r6
	st.b r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 523
	st.b r30, 0x00000005[r5]
.BB.LABEL.21_8:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 528
	st.h r5, 0x00000008[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 529
	dispose 0x00000014, 0x00000B87, [r31]
.BB.LABEL.21_9:	; if_break_bb151
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 534
	dispose 0x00000014, 0x00000B87, [r31]
_CanTp_Prv_CreateTxConsecutiveFrame.1:
	.stack _CanTp_Prv_CreateTxConsecutiveFrame.1 = 56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 543
	prepare 0x00000B87, 0x0000001C
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 558
	mov #_CanTp_SubState, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000002, r5
	mov r7, r5
	st.w r5, 0x00000008[r3]
	bnz17 .BB.LABEL.22_8
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 560
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 564
	mulhi 0x0000000C, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 560
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x0000000C[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 564
	add r26, r25
	ld.bu 0x00000003[r25], r5
	mov #_CanTp_AddressSize, r7
	add r5, r7
	ld.bu 0x00000000[r7], r27
	add 0x00000001, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 566
	andi 0x000000FF, r27, r28
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 567
	ld.w 0x00000000[r5], r7
	add r28, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 562
	ld.hu 0x0000000C[r6], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 566
	ld.bu 0x00000000[r25], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 572
	ld.bu 0x00000004[r6], r6
	st.w r6, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 567
	st.w r7, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 566
	subr r30, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 568
	andi 0x000000FF, r28, r6
	cmp r6, r29
	cmov 0x0000000B, r28, r29, r6
	zxb r6
	st.h r6, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 569
	st.h r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 572
	ld.hu 0x0000000A[r25], r6
	movea 0x0000001A, r3, r9
	mov 0x00000000, r8
	movea 0x0000000C, r3, r7
	jarl32 _Dcm_CopyTxData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 564
	add 0x00000003, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 572
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 578
	zxb r28
	cmp r28, r29
	bnc9 .BB.LABEL.22_5
.BB.LABEL.22_3:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000004[r3], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 580
	mulhi 0x0000000C, r30, r30
	add r26, r30
	ld.bu 0x00000001[r30], r6
	mov 0x00000008, r7
	jarl _CanTp_Prv_GetBit.1, r31
	andi 0x000000FF, r27, r30
	ld.hu 0x00000014[r3], r5
	add r5, r30
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 582
	mov #_CanTp_CanDlTable, r6
	add r30, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 585
	ld.bu 0x00000000[r6], r30
	ld.w 0x00000008[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 584
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 583
	add r5, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 584
	zxb r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 585
	mov r30, r7
	sub r27, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 584
	add r27, r6
	movea 0x000000AA, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 585
	jarl _CanTp_Prv_ArrayInit.1, r31
.BB.LABEL.22_5:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 595
	ld.bu 0x00000000[r25], r5
	cmp 0x00000000, r5
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 593
	ld.w 0x00000000[r5], r5
	bz9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_then_bb152
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000004[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 597
	mulh 0x0000000C, r6
	add r6, r26
	ld.b 0x00000002[r26], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 598
	add 0x00000001, r5
.BB.LABEL.22_7:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.w 0x00000000[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 601
	ori 0x00000020, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 602
	zxb r30
	ld.w 0x00000008[r3], r5
	st.h r30, 0x00000008[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 603
	dispose 0x0000001C, 0x00000B87, [r31]
.BB.LABEL.22_8:	; if_break_bb170
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 608
	dispose 0x0000001C, 0x00000B87, [r31]
_CanTp_Prv_CreateTxFlowControlFrame.1:
	.stack _CanTp_Prv_CreateTxFlowControlFrame.1 = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 618
	prepare 0x00000B87, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 620
	ld.w 0x00000000[r7], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 630
	st.h r0, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 632
	mov #_CanTp_SubState, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000007, r5
	mov r7, r26
	bnz9 .BB.LABEL.23_7
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 634
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r27
	add r5, r27
	ld.bu 0x00000006[r27], r28
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x00000010[r5], r29
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 635
	mov r28, r6
	jarl _CanTp_Prv_GetRxParam.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 639
	mulhi 0x0000000C, r28, r30
	add r29, r30
	ld.bu 0x00000002[r30], r5
	add 0x00000002, r30
	cmp 0x00000000, r5
	ld.bu 0x00000005[r27], r5
	ld.bu 0x00000003[r27], r6
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000003, r27
	br9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 641
	mulhi 0x0000000C, r28, r27
	add r29, r27
	ld.b 0x00000001[r27], r27
	st.b r27, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 642
	add 0x00000001, r25
	mov 0x00000004, r27
.BB.LABEL.23_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 646
	ori 0x00000030, r6, r6
	st.b r6, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 650
	st.b r5, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 654
	st.b r10, 0x00000002[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 657
	mulh 0x0000000C, r28
	add r28, r29
	ld.bu 0x00000000[r29], r6
	mov 0x00000008, r7
	jarl _CanTp_Prv_GetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 659
	ld.bu 0x00000000[r30], r27
	mov #_CanTp_AddressSize, r5
	add r27, r5
	ld.bu 0x00000000[r5], r7
	add 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 661
	zxb r7
	mov 0x00000008, r27
	subr r27, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 655
	addi 0x00000003, r25, r6
	movea 0x000000AA, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 661
	jarl _CanTp_Prv_ArrayInit.1, r31
.BB.LABEL.23_6:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 665
	st.h r27, 0x00000008[r26]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 666
	dispose 0x00000000, 0x00000B87, [r31]
.BB.LABEL.23_7:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 670
	dispose 0x00000000, 0x00000B87, [r31]
_CanTp_Prv_TxSendConsecutiveFrame.1:
	.stack _CanTp_Prv_TxSendConsecutiveFrame.1 = 64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 680
	prepare 0x00000385, 0x0000002C
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 691
	st.b r25, 0x00000005[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 692
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 694
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r26
	add r5, r26
	ld.h 0x00000010[r26], r5
	st.h r5, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 696
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 694
	movea 0x0000000E, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 696
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 698
	st.h r0, 0x00000028[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 699
	st.w r0, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 701
	st.w r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 703
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 705
	mov #_CanTp_SubState, r27
	add r25, r27
	ld.bu 0x00000000[r27], r5
	cmp 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 694
	movea 0x00000010, r26, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 705
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; entry.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; bb
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r6
	mulh 0x0000000C, r6
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x0000000C[r5], r5
	add r6, r5
.BB.LABEL.24_3:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 707
	cmp 0x00000000, r5
	bz9 .BB.LABEL.24_9
.BB.LABEL.24_4:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.hu 0x00000006[r5], r6
	mov #_CanTp_TxConfirmationChannel, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 709
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.24_9
.BB.LABEL.24_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 711
	ld.h 0x0000000A[r5], r6
	st.h r6, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 712
	ld.h 0x00000008[r5], r6
	st.h r6, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 713
	ld.h 0x00000006[r5], r6
	st.h r6, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 714
	ld.bu 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 715
	st.h r6, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 716
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x00000014[r7], r7
	ld.bu 0x00000004[r5], r8
	mulh 0x00000006, r8
	add r8, r7
	ld.h 0x00000004[r7], r7
	st.h r7, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 717
	ld.b 0x00000001[r5], r7
	st.b r7, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 720
	mulhi 0x00000014, r25, r7
	mov #_CanTp_Channel, r28
	add r7, r28
	ld.hu 0x0000000C[r28], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 719
	ld.bu 0x00000003[r5], r5
	mov #_CanTp_AddressSize, r8
	add r5, r8
	ld.bu 0x00000000[r8], r5
	add 0xFFFFFFFF, r6
	sub r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 720
	andi 0x000000FF, r6, r5
	cmp r5, r7
	cmov 0x00000006, r7, r6, r5
	st.b r5, 0x00000003[r3]
	movea 0x00000020, r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 723
	jarl _CanTp_Prv_GetTxBuffer.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 725
	ld.bu 0x00000000[r28], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.24_9
.BB.LABEL.24_6:	; bb139
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x00000012[r6], r5
	ld.hu 0x00000010[r3], r6
	cmp r5, r6
	bnc9 .BB.LABEL.24_8
.BB.LABEL.24_7:	; bb149
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.24_9
.BB.LABEL.24_8:	; if_then_bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 728
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	mov 0x00000004, r5
	st.b r5, 0x00000002[r6]
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 729
	ld.h 0x0000000C[r6], r5
	st.h r5, 0x00000000[r26]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 730
	st.b r5, 0x00000000[r27]
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 731
	jarl _CanTp_Prv_CanIfTransmit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 732
	st.b r0, 0x00000000[r28]
.BB.LABEL.24_9:	; if_break_bb183
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 736
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x0000002C, 0x00000385, [r31]
_CanTp_Prv_TxWaitForFlowControlFrame.1:
	.stack _CanTp_Prv_TxWaitForFlowControlFrame.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 747
	prepare 0x00000301, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 751
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.h 0x00000010[r6], r5
	st.h r5, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 754
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 756
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 758
	mov #_CanTp_SubState, r26
	add r25, r26
	ld.bu 0x00000000[r26], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 760
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 761
	mulhi 0x0000000C, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 760
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x0000000C[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 761
	add r8, r6
	ld.bu 0x00000004[r6], r6
	mulh 0x00000006, r6
	ld.w 0x00000014[r7], r7
	add r6, r7
	ld.hu 0x00000002[r7], r6
	ld.hu 0x00000000[r3], r7
	cmp r6, r7
	bnh9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 763
	mulh 0x0000000C, r5
	add r5, r8
	ld.hu 0x0000000A[r8], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis)[r5], r5
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 765
	st.b r0, 0x00000000[r26]
.BB.LABEL.25_3:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 769
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000301, [r31]
_CanTp_Prv_TxWaitForTransmitConfirmation.1:
	.stack _CanTp_Prv_TxWaitForTransmitConfirmation.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 780
	prepare 0x00000381, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 784
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.h 0x00000010[r6], r5
	st.h r5, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 787
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 789
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 791
	mov #_CanTp_SubState, r26
	add r25, r26
	ld.bu 0x00000000[r26], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 793
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 794
	mulhi 0x0000000C, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 793
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x0000000C[r7], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 794
	add r25, r6
	ld.bu 0x00000004[r6], r6
	mulh 0x00000006, r6
	ld.w 0x00000014[r7], r7
	add r6, r7
	ld.hu 0x00000000[r7], r6
	ld.hu 0x00000000[r3], r7
	cmp r6, r7
	bnh9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 797
	mulh 0x0000000C, r5
	add r5, r25
	ld.hu 0x0000000A[r25], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis)[r5], r5
	mov 0x00000001, r27
	mov r27, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 800
	ld.hu 0x00000006[r25], r5
	mov #_CanTp_TxConfirmationChannel, r6
	add r5, r6
	st.b r27, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 801
	st.b r0, 0x00000000[r26]
.BB.LABEL.26_3:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 805
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000381, [r31]
_CanTp_Prv_TxTransmissionRequestAccepted.1:
	.stack _CanTp_Prv_TxTransmissionRequestAccepted.1 = 60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 816
	prepare 0x00000381, 0x0000002C
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 827
	st.b r25, 0x00000005[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 828
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 830
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r26
	add r5, r26
	ld.h 0x00000010[r26], r5
	st.h r5, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 832
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 830
	movea 0x0000000E, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 832
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 834
	st.h r0, 0x00000028[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 835
	st.w r0, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 837
	st.w r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 839
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 841
	mov #_CanTp_SubState, r27
	add r25, r27
	ld.bu 0x00000000[r27], r5
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 830
	movea 0x00000010, r26, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 841
	bz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; entry.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; bb
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r6
	mulh 0x0000000C, r6
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x0000000C[r5], r5
	add r6, r5
.BB.LABEL.27_3:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 843
	cmp 0x00000000, r5
	bz9 .BB.LABEL.27_10
.BB.LABEL.27_4:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.hu 0x00000006[r5], r6
	mov #_CanTp_TxConfirmationChannel, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 845
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.27_10
.BB.LABEL.27_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 847
	ld.h 0x0000000A[r5], r6
	st.h r6, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 848
	ld.h 0x00000008[r5], r6
	st.h r6, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 849
	ld.h 0x00000006[r5], r6
	st.h r6, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 850
	mulhi 0x00000014, r25, r6
	mov #_CanTp_Channel, r7
	add r6, r7
	st.h r0, 0x0000000A[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 851
	ld.hu 0x0000000E[r7], r6
	st.h r6, 0x0000000C[r7]
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 852
	st.b r8, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 854
	ld.bu 0x00000002[r7], r8
	mov #_CanTp_PciSize, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 857
	ld.bu 0x00000000[r9], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 854
	ld.bu 0x00000003[r5], r9
	mov #_CanTp_AddressSize, r10
	add r9, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 857
	ld.bu 0x00000000[r10], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 855
	ld.bu 0x00000000[r5], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 856
	st.h r10, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 857
	ld.bu 0x00000002[r7], r7
	cmp 0x00000002, r7
	bl9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	add r8, r9
	sub r9, r10
	br9 .BB.LABEL.27_8
.BB.LABEL.27_7:	; bb121
	mov r6, r10
.BB.LABEL.27_8:	; bb128
	st.b r10, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 859
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r6
	ld.w LOWW(#_CanTp_CfgPtr)[r6], r6
	ld.w 0x00000014[r6], r6
	ld.bu 0x00000004[r5], r7
	mulh 0x00000006, r7
	add r7, r6
	ld.h 0x00000004[r6], r6
	st.h r6, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 860
	ld.b 0x00000001[r5], r5
	st.b r5, 0x00000004[r3]
	movea 0x00000020, r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 862
	jarl _CanTp_Prv_GetTxBuffer.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 864
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r25
	add r5, r25
	ld.bu 0x00000000[r25], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.27_10
.BB.LABEL.27_9:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 866
	ld.h 0x0000000C[r6], r5
	st.h r5, 0x00000000[r26]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 867
	st.b r5, 0x00000000[r27]
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 868
	jarl _CanTp_Prv_CanIfTransmit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 869
	st.b r0, 0x00000000[r25]
.BB.LABEL.27_10:	; if_break_bb164
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 873
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x0000002C, 0x00000381, [r31]
_CanTp_Prv_Idle.1:
	.stack _CanTp_Prv_Idle.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 883
	jmp [r31]
_CanTp_Prv_RxReceptionRequestAccepted.1:
	.stack _CanTp_Prv_RxReceptionRequestAccepted.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 896
	prepare 0x00000301, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 900
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.h 0x00000010[r6], r5
	st.h r5, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 903
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 905
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 907
	mov #_CanTp_SubState, r26
	add r25, r26
	ld.bu 0x00000000[r26], r5
	cmp 0x00000005, r5
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 909
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 910
	mulhi 0x0000000C, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 909
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x00000010[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 910
	add r8, r6
	ld.bu 0x00000003[r6], r6
	mulh 0x00000006, r6
	ld.w 0x00000014[r7], r7
	add r6, r7
	ld.hu 0x00000002[r7], r6
	ld.hu 0x00000000[r3], r7
	cmp r6, r7
	bnh9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 912
	mulh 0x0000000C, r5
	add r5, r8
	ld.hu 0x0000000A[r8], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 914
	st.b r0, 0x00000000[r26]
.BB.LABEL.29_3:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 918
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000301, [r31]
_CanTp_Prv_RxSendFlowControlFrame.1:
	.stack _CanTp_Prv_RxSendFlowControlFrame.1 = 72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 929
	prepare 0x00000387, 0x00000030
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 937
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r26
	add r5, r26
	ld.h 0x00000010[r26], r5
	st.h r5, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 938
	ld.bu 0x00000003[r26], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 941
	st.b r25, 0x00000005[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 942
	st.b r5, 0x00000002[r3]
	movea 0x00000016, r3, r7
	movea 0x00000014, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 944
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 946
	st.h r0, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 947
	st.w r0, 0x00000018[r3]
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 949
	st.h r5, 0x0000002C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 950
	st.w r0, 0x00000024[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 952
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 937
	movea 0x00000010, r26, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 938
	add 0x00000003, r26
	cmp 0x00000001, r27
	setf 0x0000000B, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 954
	mov #_CanTp_SubState, r5
	add r25, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000006, r5
	bz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; entry.bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov 0x00000000, r29
	br9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; bb41
	mulhi 0x00000014, r25, r29
	mov #_CanTp_Channel, r5
	add r29, r5
	ld.bu 0x00000006[r5], r5
	mulh 0x0000000C, r5
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r29
	ld.w LOWW(#_CanTp_CfgPtr)[r29], r29
	ld.w 0x00000010[r29], r29
	add r5, r29
.BB.LABEL.30_3:	; bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 956
	cmp 0x00000000, r29
	bz17 .BB.LABEL.30_17
.BB.LABEL.30_4:	; bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	ld.hu 0x00000006[r29], r5
	mov #_CanTp_TxConfirmationChannel, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 958
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.30_17
.BB.LABEL.30_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 960
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	st.h r0, 0x0000000A[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 961
	ld.hu 0x0000000A[r29], r6
	st.h r6, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 962
	ld.h 0x00000008[r29], r5
	st.h r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 963
	ld.h 0x00000006[r29], r5
	st.h r5, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 964
	ld.b 0x00000000[r29], r5
	st.b r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 966
	ld.bu 0x00000000[r26], r5
	cmp 0x00000002, r5
	bz17 .BB.LABEL.30_16
.BB.LABEL.30_6:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 968
	movea 0x0000000C, r3, r8
	movea 0x00000018, r3, r7
	jarl32 _Dcm_CopyRxData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.30_8
.BB.LABEL.30_7:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 970
	ld.bu 0x00000002[r3], r27
	shl 0x00000002, r27
	mov #_CanTp_PduRConfirmationApis, r5
	add r27, r5
	ld.w 0x00000000[r5], r27
	ld.hu 0x0000000A[r3], r6
	mov 0x00000001, r7
	jarl [r27], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 972
	mov #_CanTp_SubState, r27
	ld.bu 0x00000005[r3], r5
	add r5, r27
	st.b r0, 0x00000000[r27]
	mov 0x00000000, r27
	br9 .BB.LABEL.30_10
.BB.LABEL.30_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 977
	ld.bu 0x00000000[r26], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.30_10
.BB.LABEL.30_9:	; if_then_bb129
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 980
	ld.hu 0x0000000C[r3], r7
	mov r25, r6
	jarl _CanTp_Prv_SetRxBlockInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 981
	ld.bu 0x00000000[r26], r5
	cmp 0x00000000, r5
	cmov 0x00000002, 0x00000001, r27, r27
.BB.LABEL.30_10:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 985
	ld.bu 0x00000000[r26], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.30_16
.BB.LABEL.30_11:	; bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x00000014[r5], r5
	ld.bu 0x00000003[r29], r6
	mulh 0x00000006, r6
	add r6, r5
	ld.hu 0x00000002[r5], r5
	ld.hu 0x00000016[r3], r6
	cmp r5, r6
	bnc9 .BB.LABEL.30_13
.BB.LABEL.30_12:	; bb171
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x00000008[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.30_16
.BB.LABEL.30_13:	; if_then_bb193
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 988
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	ld.hu 0x00000008[r6], r7
	add 0x00000008, r6
	mulh 0x0000000C, r5
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r8
	ld.w LOWW(#_CanTp_CfgPtr)[r8], r8
	ld.w 0x00000010[r8], r9
	add r5, r9
	ld.bu 0x00000004[r9], r5
	shl 0x00000002, r5
	ld.w 0x00000018[r8], r8
	add r5, r8
	ld.hu 0x00000002[r8], r5
	cmp r5, r7
	bnc9 .BB.LABEL.30_15
.BB.LABEL.30_14:	; if_then_bb219
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 990
	add 0x00000001, r7
	st.h r7, 0x00000000[r6]
	movea 0x00000014, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 991
	ld.h 0x00000000[r27], r27
	st.h r27, 0x00000000[r28]
	mov 0x00000001, r27
	br9 .BB.LABEL.30_16
.BB.LABEL.30_15:	; if_else_bb227
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 996
	ld.bu 0x00000002[r3], r5
	shl 0x00000002, r5
	mov #_CanTp_PduRConfirmationApis, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x0000000A[r3], r6
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 998
	mov #_CanTp_SubState, r5
	ld.bu 0x00000005[r3], r6
	add r6, r5
	st.b r0, 0x00000000[r5]
.BB.LABEL.30_16:	; if_break_bb241
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 0
	mov r27, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1003
	ld.hu 0x00000014[r3], r9
	movea 0x00000024, r3, r7
	movea 0x00000002, r3, r6
	jarl _CanTp_Prv_FcTransmit.1, r31
.BB.LABEL.30_17:	; if_break_bb244
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1006
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000030, 0x00000387, [r31]
_CanTp_Prv_RxWaitForFcTransmitConfirmation.1:
	.stack _CanTp_Prv_RxWaitForFcTransmitConfirmation.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1017
	prepare 0x00000381, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1021
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.h 0x00000010[r6], r5
	st.h r5, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1024
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1026
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1028
	mov #_CanTp_SubState, r26
	add r25, r26
	ld.bu 0x00000000[r26], r5
	cmp 0x00000007, r5
	bnz9 .BB.LABEL.31_3
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1030
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1031
	mulhi 0x0000000C, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1030
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x00000010[r7], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1031
	add r25, r6
	ld.bu 0x00000003[r6], r6
	mulh 0x00000006, r6
	ld.w 0x00000014[r7], r7
	add r6, r7
	ld.hu 0x00000000[r7], r6
	ld.hu 0x00000000[r3], r7
	cmp r6, r7
	bnh9 .BB.LABEL.31_3
.BB.LABEL.31_2:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1033
	mulh 0x0000000C, r5
	add r5, r25
	ld.hu 0x0000000A[r25], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	mov 0x00000001, r27
	mov r27, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1036
	ld.hu 0x00000006[r25], r5
	mov #_CanTp_TxConfirmationChannel, r6
	add r5, r6
	st.b r27, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1037
	st.b r0, 0x00000000[r26]
.BB.LABEL.31_3:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1041
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000381, [r31]
_CanTp_Prv_RxWaitForConsecutiveFrame.1:
	.stack _CanTp_Prv_RxWaitForConsecutiveFrame.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1052
	prepare 0x00000301, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1056
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.h 0x00000010[r6], r5
	st.h r5, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1059
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1061
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1063
	mov #_CanTp_SubState, r26
	add r25, r26
	ld.bu 0x00000000[r26], r5
	cmp 0x00000008, r5
	bnz9 .BB.LABEL.32_3
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1065
	mulhi 0x00000014, r25, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1066
	mulhi 0x0000000C, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1065
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.w 0x00000010[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1066
	add r8, r6
	ld.bu 0x00000003[r6], r6
	mulh 0x00000006, r6
	ld.w 0x00000014[r7], r7
	add r6, r7
	ld.hu 0x00000004[r7], r6
	ld.hu 0x00000000[r3], r7
	cmp r6, r7
	bnh9 .BB.LABEL.32_3
.BB.LABEL.32_2:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1068
	mulh 0x0000000C, r5
	add r5, r8
	ld.hu 0x0000000A[r8], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1070
	st.b r0, 0x00000000[r26]
.BB.LABEL.32_3:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.c", 1074
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000301, [r31]
	.section .bss, bss
	.align 2
_CanTp_Channel:
	.ds (20)
_CanTp_TxConfirmationChannel:
	.ds (1)
	.align 2
_CanTp_MainFunctionTicks:
	.ds (2)
	.align 4
_CanTp_CfgPtr:
	.ds (4)
_CanTp_SubState:
	.ds (1)
	.section .const, const
_CanTp_State:
	.ds (1)
	.db 0x01,0x01,0x01,0x01,0x02,0x02,0x02,0x02
_CanTp_AddressSize:
	.ds (1)
	.db 0x01,0x01,0x01
	.ds (1)
_CanTp_PciFrameType:
	.ds (2)
	.db 0x01,0x01,0x02,0x03
_CanTp_PciSize:
	.db 0x01,0x02,0x02,0x06,0x01,0x03
_CanTp_CanDlTable:
	.db 0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x0C,0x0C,0x0C,0x0C,0x10,0x10,0x10
	.db 0x10,0x14,0x14,0x14,0x14,0x18,0x18,0x18,0x18,0x20,0x20,0x20,0x20,0x20,0x20,0x20
	.db 0x20,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30,0x30
	.db 0x30,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40
	.db 0x40
	.align 4
_CanTp_StateFunctions:
	.dw #_CanTp_Prv_Idle.1
	.dw #_CanTp_Prv_TxTransmissionRequestAccepted.1
	.dw #_CanTp_Prv_TxWaitForTransmitConfirmation.1
	.dw #_CanTp_Prv_TxWaitForFlowControlFrame.1
	.dw #_CanTp_Prv_TxSendConsecutiveFrame.1
	.dw #_CanTp_Prv_RxReceptionRequestAccepted.1
	.dw #_CanTp_Prv_RxSendFlowControlFrame.1
	.dw #_CanTp_Prv_RxWaitForFcTransmitConfirmation.1
	.dw #_CanTp_Prv_RxWaitForConsecutiveFrame.1
	.align 4
_CanTp_ProcessFrame:
	.dw #_CanTp_Prv_ProcessRxSingleFrame.1
	.dw #_CanTp_Prv_ProcessRxFirstFrame.1
	.dw #_CanTp_Prv_ProcessRxConsecutiveFrame.1
	.dw #_CanTp_Prv_ProcessRxFlowControlFrame.1
	.align 4
_CanTp_CreateFrame:
	.dw #_CanTp_Prv_CreateTxSingleFrame.1
	.dw #_CanTp_Prv_CreateTxFirstFrame.1
	.dw #_CanTp_Prv_CreateTxConsecutiveFrame.1
	.dw #_CanTp_Prv_CreateTxFlowControlFrame.1
	.align 4
_CanTp_PduRConfirmationApis:
	.dw #_Dcm_TxConfirmation
	.dw #_Dcm_RxIndication
