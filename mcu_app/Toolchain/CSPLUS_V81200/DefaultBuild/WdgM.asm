#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\WdgM\WdgM.c -oDefaultBuild\WdgM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f43d14bd92c9428fa305e8fe667a88e6oa0sz2wl.ngg
#@	compiled at Fri Mar 27 09:50:24 2026

	.file "..\..\Bsw\SystemServices\WdgM\WdgM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _WdgM_SupervisedEntityToTabIndex
	.extern _WdgM_CheckpointQuantityInSE
	.extern _WdgMConfigRoot
	.public _WdgM_Init
	.extern _Det_ReportError
	.extern _WdgIf_SetMode
	.public _WdgM_DeInit
	.public _WdgM_SetMode
	.extern _Det_ReportRuntimeError
	.public _WdgM_GetMode
	.public _WdgM_CheckpointReached
	.extern _SchM_Enter_WdgM_Exclusive
	.extern _SchM_Exit_WdgM_Exclusive
	.public _WdgM_GetLocalStatus
	.public _WdgM_GetGlobalStatus
	.public _WdgM_PerformReset
	.extern _WdgIf_SetTriggerCondition
	.public _WdgM_GetFirstExpiredSEID
	.public _WdgM_MainFunction

	.section .text, text
_WdgM_Init:
	.stack _WdgM_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 252
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 261
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000014, r0, r9
.BB.LABEL.1_2:	; if_then_bb
	mov 0x00000000, r7
	mov 0x0000000D, r6
	mov r7, r8
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 321
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 266
	mov r20, r6
	jarl _WdgM_InitModeConfirmation.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000011, r0, r9
	br9 .BB.LABEL.1_2
.BB.LABEL.1_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 280
	movhi HIGHW1(#_WdgM_Config.4), r0, r2
	st.w r20, LOWW(#_WdgM_Config.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 283
	st.h r0, 0x00000000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 284
	st.h r0, 0x00000000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 287
	movhi HIGHW1(#_WdgM_GlobalInfo.6), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_WdgM_GlobalInfo.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 289
	jarl _WdgM_InitAllTabStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 291
	ld.bu 0x00000000[r20], r2
	mulhi 0x0000001C, r2, r2
	ld.w 0x00000004[r20], r5
	add r2, r5
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	st.w r5, LOWW(#_WdgM_CurModeCfg.3)[r2]
	mov 0x00000000, r20
	mov r20, r21
	br9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 295
	andi 0x000000FF, r20, r6
	mov r6, r21
	shl 0x00000003, r21
	ld.w 0x00000018[r2], r2
	add r21, r2
	ld.w 0x00000000[r2], r7
	jarl _WdgIf_SetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 297
	cmp 0x00000001, r10
	mov r10, r21
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 299
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r6
	jarl _WdgM_DeinitSEStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 301
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	mov 0x00000003, r20
	st.w r20, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 303
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	st.w r0, LOWW(#_WdgM_ModeInfo.5)[r2]
	br9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r20
.BB.LABEL.1_9:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 293
	movhi HIGHW1(#_WdgM_Config.4), r0, r2
	ld.w LOWW(#_WdgM_Config.4)[r2], r2
	ld.w 0x00000004[r2], r5
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.bu 0x00000000[r2], r6
	mulhi 0x0000001C, r6, r6
	add r6, r5
	ld.bu 0x00000014[r5], r5
	andi 0x000000FF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.1_6
.BB.LABEL.1_10:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 308
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 310
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r20
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r20], r6
	jarl _WdgM_InitSEStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 312
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	st.w r0, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 314
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r20], r2
	ld.b 0x00000000[r2], r2
	mov #_WdgM_ModeInfo.5, r5
	st.b r2, 0x00000004[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 316
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 318
	st.h r0, 0x00000006[r5]
.BB.LABEL.1_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 321
	dispose 0x00000000, 0x00000061, [r31]
_WdgM_DeInit:
	.stack _WdgM_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 338
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 340
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	movea 0x00000010, r0, r9
	mov 0x00000001, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 344
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 350
	jarl _WdgM_SetMode, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 353
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	mov 0x00000004, r5
	st.w r5, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 354
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	st.w r0, LOWW(#_WdgM_ModeInfo.5)[r2]
.BB.LABEL.2_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 361
	dispose 0x00000000, 0x00000001, [r31]
_WdgM_SetMode:
	.stack _WdgM_SetMode = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 419
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 429
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_then_bb
	movea 0x00000010, r0, r9
.BB.LABEL.3_3:	; if_then_bb
	mov 0x00000003, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 497
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 438
	mov r20, r6
	jarl _WdgM_ModeExistenceConfirmation.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000012, r0, r9
	br9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 457
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000004), r0, r2
	ld.bu LOWW(#_WdgM_ModeInfo.5+0x00000004)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_else_bb27.if_break_bb135_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_10
.BB.LABEL.3_8:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 463
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.3_11
.BB.LABEL.3_9:	; if_else_bb36.if_break_bb135_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r10
.BB.LABEL.3_10:	; if_break_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 497
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_11:	; if_else_bb36.bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r21
	mov 0x00000000, r22
	br9 .BB.LABEL.3_15
.BB.LABEL.3_12:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 468
	ld.w 0x00000004[r2], r2
	mulhi 0x0000001C, r20, r21
	add r21, r2
	ld.w 0x00000018[r2], r2
	andi 0x000000FF, r22, r21
	shl 0x00000003, r21
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 469
	ld.w 0x00000000[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 470
	ld.bu 0x00000006[r2], r6
	jarl _WdgIf_SetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 471
	cmp 0x00000001, r10
	mov r10, r21
	bnz9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000003, r22
	movea 0x0000001D, r0, r9
	mov 0x00000000, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 475
	mov r22, r8
	jarl _Det_ReportRuntimeError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 478
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	st.w r22, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
	br9 .BB.LABEL.3_16
.BB.LABEL.3_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r22
.BB.LABEL.3_15:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 466
	movhi HIGHW1(#_WdgM_Config.4), r0, r2
	ld.w LOWW(#_WdgM_Config.4)[r2], r2
	ld.w 0x00000004[r2], r5
	mulhi 0x0000001C, r20, r6
	add r6, r5
	ld.bu 0x00000014[r5], r5
	andi 0x000000FF, r22, r6
	cmp r5, r6
	bl9 .BB.LABEL.3_12
.BB.LABEL.3_16:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 483
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_17:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 485
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r21
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r21], r6
	movhi HIGHW1(#_WdgM_Config.4), r0, r22
	ld.w LOWW(#_WdgM_Config.4)[r22], r2
	ld.w 0x00000004[r2], r7
	mulhi 0x0000001C, r20, r23
	add r23, r7
	jarl _WdgM_ChangeSEStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 486
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000004), r0, r2
	st.b r20, LOWW(#_WdgM_ModeInfo.5+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 487
	ld.w LOWW(#_WdgM_Config.4)[r22], r2
	ld.w 0x00000004[r2], r2
	add r23, r2
	st.w r2, LOWW(#_WdgM_CurModeCfg.3)[r21]
	br9 .BB.LABEL.3_7
_WdgM_GetMode:
	.stack _WdgM_GetMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 515
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 518
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_then_bb
	movea 0x00000010, r0, r9
.BB.LABEL.4_3:	; if_then_bb
	mov 0x0000000B, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 539
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 526
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000014, r0, r9
	br9 .BB.LABEL.4_3
.BB.LABEL.4_6:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 535
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000004), r0, r2
	ld.b LOWW(#_WdgM_ModeInfo.5+0x00000004)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 536
	dispose 0x00000000, 0x00000001, [r31]
_WdgM_CheckpointReached:
	.stack _WdgM_CheckpointReached = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 559
	prepare 0x00000061, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 561
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 562
	st.h r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 574
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 578
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 588
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_4:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000013, r0, r9
.BB.LABEL.5_5:	; if_then_bb27
	mov 0x0000000E, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 668
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.5_6:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 597
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r8
	mov r3, r7
	mov r20, r6
	jarl _WdgM_GetModeSEIndex.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000019, r0, r9
	mov 0x0000000E, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 600
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 605
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.5_8:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 607
	ld.hu 0x00000000[r3], r2
	mov r2, r5
	add r5, r5
	mov #_WdgM_CheckpointQuantityInSE, r6
	add r5, r6
	ld.hu 0x00000000[r6], r5
	addi 0x00000001, r21, r6
	cmp r5, r6
	ble9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000016, r0, r9
	br9 .BB.LABEL.5_5
.BB.LABEL.5_10:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 623
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r5
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r5], r5
	ld.w 0x00000008[r5], r20
	mul 0x00000034, r2, r0
	add r2, r20
	movea 0x00000002, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 635
	mov r21, r6
	mov r20, r7
	jarl _WdgM_GetSECheckpointIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 636
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 638
	jarl _SchM_Enter_WdgM_Exclusive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 641
	ld.hu 0x00000002[r3], r6
	mov r20, r7
	jarl _WdgM_UpdateAICounter.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 659
	jarl _SchM_Exit_WdgM_Exclusive, r31
.BB.LABEL.5_12:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 668
	dispose 0x00000004, 0x00000061, [r31]
_WdgM_GetLocalStatus:
	.stack _WdgM_GetLocalStatus = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 686
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 692
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 694
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 696
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	mov r10, r22
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 705
	cmp 0x00000000, r22
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000013, r0, r9
.BB.LABEL.6_5:	; if_then_bb25
	mov 0x0000000C, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 739
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.6_6:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 716
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000014, r0, r9
	br9 .BB.LABEL.6_5
.BB.LABEL.6_8:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 727
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r8
	movea 0x00000002, r3, r7
	mov r20, r6
	jarl _WdgM_GetModeSEIndex.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 729
	mul 0x00000018, r22, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r22, r2
	ld.w 0x00000000[r2], r2
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000003, r2
.BB.LABEL.6_11:	; if_else_bb49
	st.w r2, 0x00000000[r21]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 739
	dispose 0x00000004, 0x00000071, [r31]
_WdgM_GetGlobalStatus:
	.stack _WdgM_GetGlobalStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 756
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 760
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; if_then_bb
	movea 0x00000010, r0, r9
.BB.LABEL.7_3:	; if_then_bb
	mov 0x00000000, r7
	mov 0x0000000D, r6
	mov r6, r8
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 789
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 772
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000014, r0, r9
	br9 .BB.LABEL.7_3
.BB.LABEL.7_6:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 785
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 786
	dispose 0x00000000, 0x00000001, [r31]
_WdgM_PerformReset:
	.stack _WdgM_PerformReset = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 806
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 809
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; bb.bb37_crit_edge
	mov 0x00000000, r20
	br9 .BB.LABEL.8_7
.BB.LABEL.8_3:	; if_then_bb
	movea 0x00000010, r0, r9
	mov 0x0000000F, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 813
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_4:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 822
	andi 0x000000FF, r20, r5
	shl 0x00000003, r5
	ld.w 0x00000018[r2], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 825
	andi 0x000000FF, r20, r5
	shl 0x00000003, r5
	ld.w 0x00000018[r2], r2
	add r5, r2
	ld.bu 0x00000006[r2], r6
	mov 0x00000000, r7
	jarl _WdgIf_SetTriggerCondition, r31
.BB.LABEL.8_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r20
.BB.LABEL.8_7:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 820
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.bu 0x00000014[r2], r5
	andi 0x000000FF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.8_4
.BB.LABEL.8_8:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 830
	jarl _SchM_Exit_WdgM_Exclusive, r31
.BB.LABEL.8_9:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 831
	br9 .BB.LABEL.8_9
_WdgM_GetFirstExpiredSEID:
	.stack _WdgM_GetFirstExpiredSEID = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 856
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 866
	cmp 0x00000000, r6
	ld.hu 0x00000000[r0], r2
	ld.hu 0x00000000[r0], r5
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	movea 0x00000014, r0, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 868
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 873
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 879
	add r2, r5
	ori 0x0000FFFF, r0, r7
	cmp r7, r5
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 881
	st.h r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 882
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_4:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 887
	st.h r0, 0x00000000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 888
	st.h r0, 0x00000000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 890
	st.h r0, 0x00000000[r6]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 891
	dispose 0x00000000, 0x00000001, [r31]
_WdgM_UpdateAICounter.1:
	.stack _WdgM_UpdateAICounter.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 913
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 915
	ld.w 0x00000004[r21], r2
	mov r20, r5
	shl 0x00000004, r5
	add r5, r2
	ld.hu 0x00000002[r2], r6
	mov 0x00000000, r7
	jarl _WdgM_GetWordBitState.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 918
	ld.w 0x00000004[r21], r2
	shl 0x00000004, r20
	add r20, r2
	ld.hu 0x00000004[r2], r2
	shl 0x00000003, r2
	mov #_WdgM_AliveSupInfoTab.2, r5
	add r2, r5
	ld.h 0x00000002[r5], r2
	add 0x00000001, r2
	st.h r2, 0x00000002[r5]
.BB.LABEL.10_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 920
	dispose 0x00000000, 0x00000061, [r31]
_WdgM_ConfirmAliveSupResultEachSE.1:
	.stack _WdgM_ConfirmAliveSupResultEachSE.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 936
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 945
	ld.hu 0x00000008[r6], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz17 .BB.LABEL.11_17
.BB.LABEL.11_1:	; entry.bb126_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.11_11
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 950
	andi 0x0000FFFF, r21, r2
	shl 0x00000003, r2
	ld.w 0x0000000C[r20], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 953
	ld.hu 0x00000000[r5], r22
	ld.hu 0x00000004[r5], r7
	mov r22, r6
	jarl _WdgM_ConfirmAliveSupResult.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 959
	mov r22, r2
	shl 0x00000003, r2
	mov #_WdgM_AliveSupInfoTab.2, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	ld.hu 0x00000002[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 956
	andi 0x0000FFFF, r21, r7
	shl 0x00000003, r7
	ld.w 0x0000000C[r20], r8
	add r7, r8
	ld.hu 0x00000002[r8], r9
	ld.hu 0x00000004[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 963
	st.h r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 964
	st.h r0, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 959
	sub r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 956
	sub r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 961
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 966
	ld.w 0x0000000C[r20], r2
	add r2, r7
	ld.bu 0x00000007[r7], r5
	add r8, r5
	cmp 0x00000000, r5
	bn9 .BB.LABEL.11_6
.BB.LABEL.11_4:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	andi 0x0000FFFF, r21, r5
	shl 0x00000003, r5
	add r5, r2
	ld.bu 0x00000006[r2], r2
	cmp r2, r8
	bgt9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; bb94.bb109_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb108
	mov 0x00000001, r2
.BB.LABEL.11_7:	; bb109
	shl 0x00000003, r22
	mov #_WdgM_AliveSupInfoTab.2, r5
	add r22, r5
	add 0x00000004, r5
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 969
	st.w r0, 0x00000000[r5]
	br9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 973
	st.w r2, 0x00000000[r5]
.BB.LABEL.11_10:	; if_break_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r21
.BB.LABEL.11_11:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 948
	andi 0x0000FFFF, r21, r2
	ld.hu 0x00000008[r20], r5
	cmp r5, r2
	bl9 .BB.LABEL.11_2
.BB.LABEL.11_12:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 978
	ld.hu 0x00000000[r20], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 980
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	st.w r0, 0x00000008[r2]
	add 0x00000008, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.11_16
.BB.LABEL.11_13:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 985
	andi 0x0000FFFF, r5, r6
	shl 0x00000003, r6
	ld.w 0x0000000C[r20], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 986
	ld.hu 0x00000000[r7], r6
	shl 0x00000003, r6
	mov #_WdgM_AliveSupInfoTab.2, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.11_15
.BB.LABEL.11_14:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 988
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 989
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.11_15:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r5
.BB.LABEL.11_16:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 983
	andi 0x0000FFFF, r5, r6
	ld.hu 0x00000008[r20], r7
	cmp r7, r6
	bl9 .BB.LABEL.11_13
.BB.LABEL.11_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 993
	dispose 0x00000000, 0x00000071, [r31]
_WdgM_ConfirmAliveSupResult.1:
	.stack _WdgM_ConfirmAliveSupResult.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1010
	shl 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1014
	mov #_WdgM_AliveSupInfoTab.2, r2
	add r6, r2
	ld.h 0x00000000[r2], r5
	add 0x00000001, r5
	st.h r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1015
	zxh r5
	cmp r7, r5
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1025
	jmp [r31]
_WdgM_ClearNoUseAliveDeadlineStatus.1:
	.stack _WdgM_ClearNoUseAliveDeadlineStatus.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1634
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1640
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1641
	st.h r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1644
	ld.h 0x00000008[r6], r2
	st.h r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1645
	ld.h 0x00000008[r7], r2
	st.h r2, 0x00000000[r3]
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.13_7
.BB.LABEL.13_1:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1651
	andi 0x0000FFFF, r2, r5
	shl 0x00000003, r5
	ld.w 0x0000000C[r6], r10
	add r5, r10
	ld.hu 0x00000000[r10], r10
	andi 0x0000FFFF, r8, r5
	shl 0x00000003, r5
	ld.w 0x0000000C[r7], r11
	add r5, r11
	ld.hu 0x00000000[r11], r11
	addi 0x00000001, r8, r5
	cmp r11, r10
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1649
	andi 0x0000FFFF, r8, r5
	ld.hu 0x00000000[r3], r10
	cmp r10, r5
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; bb43.bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov r9, r5
.BB.LABEL.13_4:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1657
	zxh r8
	ld.hu 0x00000000[r3], r9
	cmp r9, r8
	bl9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1659
	andi 0x0000FFFF, r2, r9
	shl 0x00000003, r9
	ld.w 0x0000000C[r6], r8
	add r9, r8
	ld.hu 0x00000000[r8], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1660
	shl 0x00000003, r9
	mov #_WdgM_AliveSupInfoTab.2, r8
	add r9, r8
	st.h r0, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1661
	st.h r0, 0x00000002[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1662
	st.w r0, 0x00000004[r8]
.BB.LABEL.13_6:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r2
.BB.LABEL.13_7:	; bb84
	mov r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1646
	andi 0x0000FFFF, r2, r5
	ld.hu 0x00000002[r3], r8
	cmp r8, r5
	bnc9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; bb84.bb43_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov r9, r5
	br9 .BB.LABEL.13_2
.BB.LABEL.13_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1690
	dispose 0x00000004, 0x00000000, [r31]
_WdgM_MainFunction:
	.stack _WdgM_MainFunction = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1707
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1716
	movhi HIGHW1(#_WdgM_ModeInfo.5), r0, r2
	ld.w LOWW(#_WdgM_ModeInfo.5)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_9
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1718
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_2:	; if_then_bb.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.14_7
.BB.LABEL.14_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1731
	andi 0x0000FFFF, r20, r5
	mul 0x00000034, r5, r0
	ld.w 0x00000008[r2], r21
	add r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1732
	ld.hu 0x00000000[r21], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1733
	mov r10, r2
	mul 0x00000018, r2, r0
	mov #_WdgM_SEInfoRelated.1, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1738
	mov r21, r6
	jarl _WdgM_ConfirmAliveSupResultEachSE.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1753
	mov r21, r6
	jarl _WdgM_ConfirmSELocalStatus.1, r31
.BB.LABEL.14_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r20
.BB.LABEL.14_7:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1725
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.hu 0x00000004[r2], r5
	andi 0x0000FFFF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.14_3
.BB.LABEL.14_8:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1759
	jarl _WdgM_ConfirmGlobalStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1762
	jarl _WdgM_SetTrigger.1, r31
.BB.LABEL.14_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1765
	dispose 0x00000000, 0x00000061, [r31]
_WdgM_ConfirmSELocalStatus.1:
	.stack _WdgM_ConfirmSELocalStatus.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1782
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1787
	ld.hu 0x00000000[r20], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1789
	mov r10, r2
	mul 0x00000018, r2, r0
	mov #_WdgM_SEInfoRelated.1, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov #_WdgM_SEInfoRelated.1, r5
	cmp 0x00000000, r2
	mov r10, r2
	mul 0x00000018, r2, r0
	bnz9 .BB.LABEL.15_7
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1791
	add r2, r5
	ld.w 0x00000010[r5], r2
	add 0x00000008, r5
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_13
.BB.LABEL.15_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	ld.w 0x0000000C[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_13
.BB.LABEL.15_3:	; bb38
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_13
.BB.LABEL.15_4:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1795
	ld.w 0x00000000[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_16
.BB.LABEL.15_5:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1797
	ld.bu 0x00000020[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.15_13
.BB.LABEL.15_6:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1800
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r20
	add r10, r20
	ld.b 0x00000004[r20], r2
	add 0x00000001, r2
	st.b r2, 0x00000004[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1801
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_7:	; if_else_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1818
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_16
.BB.LABEL.15_8:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1820
	mov r10, r2
	mul 0x00000018, r2, r0
	mov #_WdgM_SEInfoRelated.1, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	add 0x00000008, r5
	cmp 0x00000001, r2
	bz9 .BB.LABEL.15_13
.BB.LABEL.15_9:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	ld.w 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.15_13
.BB.LABEL.15_10:	; bb126
	ld.w 0x00000004[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.15_13
.BB.LABEL.15_11:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1827
	mov r10, r2
	mul 0x00000018, r2, r0
	mov #_WdgM_SEInfoRelated.1, r6
	add r2, r6
	ld.bu 0x00000004[r6], r2
	add 0x00000004, r6
	ld.w 0x00000000[r5], r5
	cmp 0x00000001, r5
	mov #_WdgM_SEInfoRelated.1, r5
	bnz9 .BB.LABEL.15_17
.BB.LABEL.15_12:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1829
	add 0x00000001, r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1830
	mov r10, r2
	mul 0x00000018, r2, r0
	add r2, r5
	ld.bu 0x00000004[r5], r2
	ld.bu 0x00000020[r20], r5
	cmp r2, r5
	bnc9 .BB.LABEL.15_16
.BB.LABEL.15_13:	; if_then_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1858
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	mov 0x00000002, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1859
	jarl _SchM_Enter_WdgM_Exclusive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1860
	movhi HIGHW1(#_WdgM_GlobalInfo.6), r0, r2
	ld.bu LOWW(#_WdgM_GlobalInfo.6)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_14:	; if_then_bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1863
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1864
	ld.h 0x00000000[r20], r2
	not r2, r2
	st.h r2, 0x00000000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1867
	movhi HIGHW1(#_WdgM_GlobalInfo.6), r0, r2
	st.b r0, LOWW(#_WdgM_GlobalInfo.6)[r2]
.BB.LABEL.15_15:	; if_break_bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1869
	jarl _SchM_Exit_WdgM_Exclusive, r31
.BB.LABEL.15_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1874
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_17:	; if_else_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1838
	mov r10, r20
	mul 0x00000018, r20, r0
	add r20, r5
	add 0x00000004, r5
	cmp 0x00000001, r2
	bgt9 .BB.LABEL.15_19
.BB.LABEL.15_18:	; if_then_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1840
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1842
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r5
	add r10, r5
	st.w r0, 0x00000000[r5]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_19:	; if_else_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1847
	ld.b 0x00000000[r5], r20
	add 0xFFFFFFFF, r20
	st.b r20, 0x00000000[r5]
	dispose 0x00000000, 0x00000041, [r31]
_WdgM_ConfirmGlobalStatus.1:
	.stack _WdgM_ConfirmGlobalStatus.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1892
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1904
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	add 0xFFFFFFFD, r2
	mov 0x00000000, r20
	mov r20, r21
	cmp 0x00000002, r2
	bl9 .BB.LABEL.16_8
.BB.LABEL.16_1:	; entry.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov r20, r22
	br9 .BB.LABEL.16_7
.BB.LABEL.16_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1909
	andi 0x0000FFFF, r22, r5
	mul 0x00000034, r5, r0
	ld.w 0x00000008[r2], r2
	add r5, r2
	ld.hu 0x00000000[r2], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1910
	mov r10, r2
	mul 0x00000018, r2, r0
	mov #_WdgM_SEInfoRelated.1, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; bb16.if_break_bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.16_6
.BB.LABEL.16_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1914
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_5:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r20
.BB.LABEL.16_6:	; if_break_bb45
	add 0x00000001, r22
.BB.LABEL.16_7:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1907
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.hu 0x00000004[r2], r5
	andi 0x0000FFFF, r22, r6
	cmp r5, r6
	bl9 .BB.LABEL.16_2
.BB.LABEL.16_8:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1925
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.16_12
.BB.LABEL.16_9:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1927
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000006), r0, r20
	ld.h LOWW(#_WdgM_ModeInfo.5+0x00000006)[r20], r2
	add 0x00000001, r2
	st.h r2, LOWW(#_WdgM_ModeInfo.5+0x00000006)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1928
	zxh r2
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r20
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r20], r20
	ld.hu 0x00000002[r20], r20
	cmp r20, r2
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r20
	bnh9 .BB.LABEL.16_11
.BB.LABEL.16_10:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1931
	st.w r2, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1932
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000006), r0, r20
	st.h r0, LOWW(#_WdgM_ModeInfo.5+0x00000006)[r20]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_11:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1940
	st.w r2, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r20]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_12:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1945
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_17
.BB.LABEL.16_13:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_20
.BB.LABEL.16_14:	; if_else_bb80
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_23
.BB.LABEL.16_15:	; switch_clause_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1968
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000006), r0, r2
	ld.h LOWW(#_WdgM_ModeInfo.5+0x00000006)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_WdgM_ModeInfo.5+0x00000006)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1969
	zxh r5
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.hu 0x00000002[r2], r2
	cmp r2, r5
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	bnh9 .BB.LABEL.16_22
.BB.LABEL.16_16:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1972
	st.w r5, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1973
	movhi HIGHW1(#_WdgM_ModeInfo.5+0x00000006), r0, r2
	st.h r0, LOWW(#_WdgM_ModeInfo.5+0x00000006)[r2]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_17:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1948
	andi 0x000000FF, r20, r0
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r20
	bz9 .BB.LABEL.16_19
.BB.LABEL.16_18:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1950
	st.w r2, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r20]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_19:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1954
	st.w r0, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r20]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_20:	; switch_clause_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1958
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.16_23
.BB.LABEL.16_21:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1964
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	st.w r0, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_22:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1981
	st.w r5, LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2]
.BB.LABEL.16_23:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 1990
	dispose 0x00000000, 0x00000071, [r31]
_WdgM_SetTrigger.1:
	.stack _WdgM_SetTrigger.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2068
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2076
	movhi HIGHW1(#_WdgM_GlobalInfo.6+0x00000004), r0, r2
	ld.w LOWW(#_WdgM_GlobalInfo.6+0x00000004)[r2], r2
	cmp 0x00000002, r2
	bh9 .BB.LABEL.17_6
.BB.LABEL.17_1:	; entry.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.17_5
.BB.LABEL.17_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2082
	andi 0x000000FF, r20, r5
	shl 0x00000003, r5
	ld.w 0x00000018[r2], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2084
	andi 0x000000FF, r20, r5
	shl 0x00000003, r5
	ld.w 0x00000018[r2], r2
	add r5, r2
	ld.hu 0x00000004[r2], r7
	ld.bu 0x00000006[r2], r6
	jarl _WdgIf_SetTriggerCondition, r31
.BB.LABEL.17_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r20
.BB.LABEL.17_5:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2080
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.bu 0x00000014[r2], r5
	andi 0x000000FF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.17_2
	br9 .BB.LABEL.17_12
.BB.LABEL.17_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2090
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.17_12
.BB.LABEL.17_7:	; if_else_bb.bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.17_11
.BB.LABEL.17_8:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2094
	andi 0x000000FF, r20, r5
	shl 0x00000003, r5
	ld.w 0x00000018[r2], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_9:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2096
	andi 0x000000FF, r20, r5
	shl 0x00000003, r5
	ld.w 0x00000018[r2], r2
	add r5, r2
	ld.bu 0x00000006[r2], r6
	mov 0x00000000, r7
	jarl _WdgIf_SetTriggerCondition, r31
.BB.LABEL.17_10:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r20
.BB.LABEL.17_11:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2092
	movhi HIGHW1(#_WdgM_CurModeCfg.3), r0, r2
	ld.w LOWW(#_WdgM_CurModeCfg.3)[r2], r2
	ld.bu 0x00000014[r2], r5
	andi 0x000000FF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.17_8
.BB.LABEL.17_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2107
	dispose 0x00000000, 0x00000041, [r31]
_WdgM_GetSECheckpointIndex.1:
	.stack _WdgM_GetSECheckpointIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2125
	mov 0x00000000, r2
	br9 .BB.LABEL.18_4
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2132
	andi 0x0000FFFF, r2, r5
	shl 0x00000004, r5
	ld.w 0x00000004[r7], r9
	add r5, r9
	ld.hu 0x00000000[r9], r5
	cmp r5, r6
	bnz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2134
	st.h r2, 0x00000000[r8]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2136
	jmp [r31]
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r2
.BB.LABEL.18_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2130
	andi 0x0000FFFF, r2, r5
	ld.hu 0x00000002[r7], r9
	cmp r9, r5
	bl9 .BB.LABEL.18_1
.BB.LABEL.18_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2141
	jmp [r31]
_WdgM_InitAllTabStatus.1:
	.stack _WdgM_InitAllTabStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2157
	mov 0x00000000, r2
	br9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2164
	andi 0x0000FFFF, r2, r5
	mul 0x00000018, r5, r0
	mov #_WdgM_SEInfoRelated.1, r6
	add r5, r6
	mov 0x00000003, r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2165
	st.b r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2166
	st.w r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2167
	st.w r0, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2168
	st.w r0, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2169
	st.w r0, 0x00000014[r6]
	add 0x00000001, r2
.BB.LABEL.19_2:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2161
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.19_1
.BB.LABEL.19_3:	; bb35.bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2175
	andi 0x0000FFFF, r2, r5
	shl 0x00000003, r5
	mov #_WdgM_AliveSupInfoTab.2, r6
	add r5, r6
	st.h r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2176
	st.h r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2177
	st.w r0, 0x00000004[r6]
	add 0x00000001, r2
.BB.LABEL.19_5:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2173
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2207
	jmp [r31]
_WdgM_InitSEStatus.1:
	.stack _WdgM_InitSEStatus.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2224
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2232
	andi 0x0000FFFF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2233
	mul 0x00000034, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2232
	ld.w 0x00000008[r21], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2233
	add r2, r5
	ld.hu 0x00000000[r5], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2235
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	st.w r0, 0x00000000[r2]
	add 0x00000001, r20
.BB.LABEL.20_2:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2230
	andi 0x0000FFFF, r20, r2
	ld.hu 0x00000004[r21], r5
	cmp r5, r2
	bl9 .BB.LABEL.20_1
.BB.LABEL.20_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2237
	dispose 0x00000000, 0x00000061, [r31]
_WdgM_DeinitSEStatus.1:
	.stack _WdgM_DeinitSEStatus.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2254
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2261
	andi 0x0000FFFF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2262
	mul 0x00000034, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2261
	ld.w 0x00000008[r21], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2262
	add r2, r5
	ld.hu 0x00000000[r5], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2264
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	mov 0x00000003, r5
	st.w r5, 0x00000000[r2]
	add 0x00000001, r20
.BB.LABEL.21_2:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2259
	andi 0x0000FFFF, r20, r2
	ld.hu 0x00000004[r21], r5
	cmp r5, r2
	bl9 .BB.LABEL.21_1
.BB.LABEL.21_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2266
	dispose 0x00000000, 0x00000061, [r31]
_WdgM_GetModeSEIndex.1:
	.stack _WdgM_GetModeSEIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2285
	mov 0x00000000, r2
	br9 .BB.LABEL.22_4
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2292
	andi 0x0000FFFF, r2, r5
	mul 0x00000034, r5, r0
	ld.w 0x00000008[r8], r9
	add r5, r9
	ld.hu 0x00000000[r9], r5
	cmp r5, r6
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2294
	st.h r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2296
	jmp [r31]
.BB.LABEL.22_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r2
.BB.LABEL.22_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2290
	andi 0x0000FFFF, r2, r5
	ld.hu 0x00000004[r8], r9
	cmp r9, r5
	bl9 .BB.LABEL.22_1
.BB.LABEL.22_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2300
	jmp [r31]
_WdgM_ChangeSEStatus.1:
	.stack _WdgM_ChangeSEStatus.1 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2317
	prepare 0x000007F9, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2332
	ld.hu 0x00000004[r7], r20
	ld.hu 0x00000004[r6], r21
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2326
	st.b r2, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2329
	movhi HIGHW1(#.STR.1), r0, r2
	ld.w LOWW(#.STR.1)[r2], r2
	st.w r2, 0x00000000[r3]
	mov 0x00000000, r22
	mov r7, r23
	mov r6, r24
	br9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2334
	andi 0x0000FFFF, r22, r2
	mul 0x00000034, r2, r0
	ld.w 0x00000008[r24], r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2336
	mov r10, r2
	shl 0x00000002, r2
	mov r3, r5
	add r2, r5
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r5]
	add 0x00000001, r22
.BB.LABEL.23_2:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2332
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; bb38.bb66_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2341
	andi 0x0000FFFF, r22, r2
	mul 0x00000034, r2, r0
	ld.w 0x00000008[r23], r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2343
	mul 0x00000018, r10, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r10, r2
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2344
	st.b r0, 0x00000004[r2]
	add 0x00000001, r22
.BB.LABEL.23_5:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2339
	andi 0x0000FFFF, r22, r2
	cmp r20, r2
	bl9 .BB.LABEL.23_4
.BB.LABEL.23_6:	; bb66.bb171_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r22
	mov r22, r25
	br9 .BB.LABEL.23_16
.BB.LABEL.23_7:	; bb75
	mov 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2350
	st.b r25, 0x00000007[r3]
	mov r26, r25
	br9 .BB.LABEL.23_11
.BB.LABEL.23_8:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2353
	andi 0x0000FFFF, r25, r27
	mul 0x00000034, r27, r0
	ld.w 0x00000008[r23], r2
	add r27, r2
	ld.hu 0x00000000[r2], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2355
	andi 0x0000FFFF, r22, r2
	mul 0x00000034, r2, r0
	ld.w 0x00000008[r24], r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	ld.w 0x00000008[r23], r5
	add r27, r5
	ld.hu 0x00000000[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_10
.BB.LABEL.23_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2358
	mov r10, r26
	mul 0x00000018, r26, r0
	mov #_WdgM_SEInfoRelated.1, r2
	add r26, r2
	shl 0x00000002, r10
	mov r3, r26
	add r10, r26
	ld.w 0x00000000[r26], r26
	st.w r26, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2360
	ld.w 0x00000008[r23], r7
	ld.w 0x00000008[r24], r6
	andi 0x0000FFFF, r25, r26
	mul 0x00000034, r26, r0
	add r26, r7
	andi 0x0000FFFF, r22, r26
	mul 0x00000034, r26, r0
	add r26, r6
	jarl _WdgM_ClearNoUseAliveDeadlineStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2366
	st.b r0, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2364
	add 0x00000001, r25
	br9 .BB.LABEL.23_13
.BB.LABEL.23_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r25
.BB.LABEL.23_11:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2351
	andi 0x0000FFFF, r25, r2
	cmp r20, r2
	bl9 .BB.LABEL.23_8
.BB.LABEL.23_12:	; bb136.bb145_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov r26, r25
.BB.LABEL.23_13:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2374
	ld.bu 0x00000007[r3], r26
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_14:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2376
	andi 0x0000FFFF, r22, r26
	mov r26, r2
	mul 0x00000034, r2, r0
	ld.w 0x00000008[r24], r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	jarl _WdgM_GetSupervisedEntityTabIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2378
	mov r10, r2
	mul 0x00000018, r2, r0
	mov #_WdgM_SEInfoRelated.1, r5
	add r2, r5
	mov 0x00000003, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2379
	mov r24, r6
	mov r26, r7
	mov r10, r8
	jarl _WdgM_SEDeactivateInternal.1, r31
.BB.LABEL.23_15:	; if_break_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r22
.BB.LABEL.23_16:	; bb171
	mov r25, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2348
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.23_7
.BB.LABEL.23_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2389
	dispose 0x00000008, 0x000007F9, [r31]
_WdgM_GetSupervisedEntityTabIndex.1:
	.stack _WdgM_GetSupervisedEntityTabIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2405
	mov 0x00000000, r10
	br9 .BB.LABEL.24_3
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2411
	andi 0x0000FFFF, r10, r2
	add r2, r2
	mov #_WdgM_SupervisedEntityToTabIndex, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	cmp r2, r6
	bz9 .BB.LABEL.24_4
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r10
.BB.LABEL.24_3:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2409
	andi 0x0000FFFF, r10, r0
	bz9 .BB.LABEL.24_1
.BB.LABEL.24_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2417
	zxh r10
	jmp [r31]
_WdgM_SEDeactivateInternal.1:
	.stack _WdgM_SEDeactivateInternal.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2436
	mul 0x00000018, r8, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2443
	mov #_WdgM_SEInfoRelated.1, r2
	add r8, r2
	st.b r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2444
	st.w r0, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2445
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2446
	st.w r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2447
	st.w r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2451
	mov r7, r2
	mul 0x00000034, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2448
	ld.w 0x00000008[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2451
	add r5, r2
	ld.hu 0x00000008[r2], r6
	add 0x00000008, r2
	cmp 0x00000000, r6
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_1:	; entry.bb68_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2455
	mov r7, r8
	mul 0x00000034, r8, r0
	add r5, r8
	ld.w 0x0000000C[r8], r8
	andi 0x0000FFFF, r6, r9
	shl 0x00000003, r9
	add r9, r8
	ld.hu 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2456
	shl 0x00000003, r8
	mov #_WdgM_AliveSupInfoTab.2, r9
	add r8, r9
	st.h r0, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2457
	st.h r0, 0x00000002[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2458
	st.w r0, 0x00000004[r9]
	add 0x00000001, r6
.BB.LABEL.25_3:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2453
	andi 0x0000FFFF, r6, r8
	ld.hu 0x00000000[r2], r9
	cmp r9, r8
	bl9 .BB.LABEL.25_2
.BB.LABEL.25_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2485
	jmp [r31]
_WdgM_ModeExistenceConfirmation.1:
	.stack _WdgM_ModeExistenceConfirmation.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2502
	movhi HIGHW1(#_WdgM_Config.4), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2506
	ld.w LOWW(#_WdgM_Config.4)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2508
	ld.bu 0x00000001[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2510
	movhi HIGHW1(#_WdgM_Config.4), r0, r7
	ld.w LOWW(#_WdgM_Config.4)[r7], r7
	ld.w 0x00000004[r7], r7
	andi 0x000000FF, r5, r8
	mul 0x0000001C, r8, r0
	add r8, r7
	ld.bu 0x00000000[r7], r7
	cmp r7, r6
	bz9 .BB.LABEL.26_5
.BB.LABEL.26_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	add 0x00000001, r5
.BB.LABEL.26_3:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2508
	andi 0x000000FF, r5, r7
	cmp r2, r7
	bl9 .BB.LABEL.26_1
.BB.LABEL.26_4:	; bb23.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.26_6
.BB.LABEL.26_5:	; bb.bb32_crit_edge
	mov 0x00000000, r10
.BB.LABEL.26_6:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2517
	jmp [r31]
_WdgM_InitModeConfirmation.1:
	.stack _WdgM_InitModeConfirmation.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2534
	mov #_WdgMConfigRoot, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2545
	cmp r2, r6
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2548
	jmp [r31]
_WdgM_GetWordBitState.1:
	.stack _WdgM_GetWordBitState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2650
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2654
	shl r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2660
	tst r6, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/WdgM/WdgM.c", 2663
	jmp [r31]
	.section .bss, bss
	.align 4
_WdgM_SEInfoRelated.1:
	.ds (24)
	.align 4
_WdgM_AliveSupInfoTab.2:
	.ds (8)
	.section .data, data
	.align 4
_WdgM_CurModeCfg.3:
	.ds (4)
	.align 4
_WdgM_Config.4:
	.ds (4)
	.align 4
_WdgM_ModeInfo.5:
	.ds (8)
	.align 4
_WdgM_GlobalInfo.6:
	.db 0x01
	.ds (3)
	.dw 0x00000004
	.section .const, const
	.align 4
.STR.1:
	.ds (4)
