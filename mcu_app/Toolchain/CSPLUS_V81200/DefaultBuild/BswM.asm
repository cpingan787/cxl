#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BswM\BswM.c -oDefaultBuild\BswM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_beb0f9d26543405a9359c035c64cf461pm2xgdqo.oqq
#@	compiled at Fri Mar 27 09:50:47 2026

	.file "..\..\Bsw\SystemServices\BswM\BswM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _BswM_CoreLinkCfg
	.extern _BswM_CorePCCfg
	.public _BswM_RuntimeStatus, 20
	.public _BswM_Init
	.public _BswM_MainFunction
	.public _BswM_Deinit
	.public _BswM_RequestMode
	.extern _BswM_DetChkGenericRqst
	.public _BswM_InitGenericRequestPorts
	.extern _Det_ReportError
	.public _BswM_GetGeneRqstStatus
	.public _BswM_GetPartitionIdx
	.public _BswM_ArbitrateRule
	.extern _BswM_InitCanSMRequestPorts
	.extern _BswM_InitComMRequestPorts
	.extern _BswM_InitDcmRequestPorts
	.extern _BswM_InitEcuMRequestPorts
	.extern _BswM_InitBswMTimer
	.extern _Det_ReportRuntimeError
	.extern _BswM_DoComMAllowCom
	.extern _BswM_DoComMModeSwitch
	.extern _BswM_DoDMControl
	.extern _BswM_DoEcuMGoDownHaltPoll
	.extern _BswM_DoEcuMInitBswM
	.extern _BswM_DoEcuMStateSwitch
	.extern _BswM_DoNMControl
	.extern _BswM_DoPduGrpSwitch
	.extern _BswM_DoPduRouterControl
	.extern _BswM_DoUserCallout

	.section .text, text
_BswM_Init:
	.stack _BswM_Init = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 152
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 180
	movhi HIGHW1(#_BswM_CorePCCfg), r0, r2
	ld.w LOWW(#_BswM_CorePCCfg)[r2], r5
	ld.b 0x00000000[r5], r5
	mov #_BswM_RuntimeStatus, r20
	st.b r5, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 181
	ld.w LOWW(#_BswM_CorePCCfg)[r2], r2
	ld.w 0x00000004[r2], r2
	st.w r2, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 182
	movhi HIGHW1(#_BswM_CoreLinkCfg), r0, r2
	ld.w LOWW(#_BswM_CoreLinkCfg)[r2], r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 184
	jarl _BswM_InitRules.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 185
	jarl _BswM_InitEventRequestPort.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 186
	jarl _BswM_InitModeRequestPort.1, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 187
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_BswM_MainFunction:
	.stack _BswM_MainFunction = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 201
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 214
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000004), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 216
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 217
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 220
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	ld.hu 0x00000002[r3], r5
	mul 0x00000028, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 221
	ld.bu 0x00000010[r2], r20
	mov 0x00000000, r21
	br9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 223
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	ld.hu 0x00000002[r3], r7
	mov r7, r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x00000014[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 224
	ld.bu 0x00000000[r2], r6
	jarl _BswM_ArbitrateRule, r31
	add 0x00000001, r21
.BB.LABEL.2_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 221
	andi 0x000000FF, r21, r2
	cmp r20, r2
	bl9 .BB.LABEL.2_3
.BB.LABEL.2_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 228
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 230
	ld.bu 0x00000030[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 229
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r2
	ld.w 0x00000010[r2], r2
	mov 0x00000000, r6
	br9 .BB.LABEL.2_11
.BB.LABEL.2_6:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 232
	andi 0x000000FF, r6, r7
	shl 0x00000002, r7
	ld.w 0x00000018[r2], r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	andi 0x000000FF, r6, r7
	shl 0x00000002, r7
	ld.w 0x0000001C[r2], r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_8:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 235
	andi 0x000000FF, r6, r7
	shl 0x00000002, r7
	ld.w 0x0000001C[r2], r8
	add r7, r8
	ld.w 0x00000000[r8], r9
	add 0xFFFFFFFF, r9
	st.w r9, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 236
	ld.w 0x0000001C[r2], r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 238
	andi 0x000000FF, r6, r7
	shl 0x00000002, r7
	ld.w 0x00000018[r2], r8
	add r7, r8
	mov 0x00000002, r7
	st.w r7, 0x00000000[r8]
.BB.LABEL.2_10:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	add 0x00000001, r6
.BB.LABEL.2_11:	; bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 230
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.2_6
.BB.LABEL.2_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 245
	dispose 0x00000004, 0x00000061, [r31]
_BswM_Deinit:
	.stack _BswM_Deinit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 261
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000004), r0, r2
	st.w r0, LOWW(#_BswM_RuntimeStatus+0x00000004)[r2]
	jmp [r31]
_BswM_RequestMode:
	.stack _BswM_RequestMode = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 278
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 294
	jarl _BswM_DetChkGenericRqst, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 297
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 298
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 300
	mov #_BswM_RuntimeStatus, r2
	ld.w 0x00000008[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 301
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 303
	ld.hu 0x00000028[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 301
	ld.hu 0x00000002[r3], r6
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.4_11
.BB.LABEL.4_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 305
	andi 0x0000FFFF, r23, r2
	add r2, r2
	ld.w 0x00000030[r22], r6
	add r2, r6
	ld.hu 0x00000000[r6], r2
	cmp r2, r20
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_4:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 307
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r5
	ld.hu 0x00000002[r3], r20
	shl 0x00000005, r20
	add r20, r5
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 308
	ld.w 0x00000014[r5], r5
	andi 0x0000FFFF, r23, r20
	mov r20, r2
	add r2, r2
	add r2, r5
	st.h r21, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 309
	mul 0x0000000C, r20, r0
	ld.w 0x0000002C[r22], r5
	add r5, r20
	ld.w 0x00000008[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_5:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 311
	andi 0x0000FFFF, r23, r20
	mul 0x0000000C, r20, r0
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 313
	ld.bu 0x00000004[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 312
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r5
	ld.hu 0x00000002[r3], r21
	mul 0x00000028, r21, r0
	add r21, r5
	ld.w 0x0000000C[r5], r21
	mov 0x00000000, r24
	br9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 315
	andi 0x0000FFFF, r23, r5
	mul 0x0000000C, r5, r0
	ld.w 0x0000002C[r22], r2
	add r5, r2
	ld.w 0x00000000[r2], r5
	andi 0x000000FF, r24, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 316
	ld.bu 0x00000000[r5], r6
	mulhi 0x00000014, r6, r5
	add r21, r5
	ld.bu 0x00000008[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 319
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.4_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	add 0x00000001, r24
.BB.LABEL.4_9:	; bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 313
	andi 0x000000FF, r24, r5
	cmp r20, r5
	bl9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_12
.BB.LABEL.4_10:	; if_break_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	add 0x00000001, r23
.BB.LABEL.4_11:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 303
	andi 0x0000FFFF, r23, r2
	cmp r5, r2
	bl9 .BB.LABEL.4_3
.BB.LABEL.4_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 328
	dispose 0x00000004, 0x00000479, [r31]
_BswM_InitGenericRequestPorts:
	.stack _BswM_InitGenericRequestPorts = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 333
	prepare 0x00000001, 0x00000004
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 343
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 344
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 346
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 347
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 349
	ld.hu 0x00000028[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 347
	ld.hu 0x00000002[r3], r7
	shl 0x00000005, r7
	add r7, r2
	ld.w 0x00000010[r2], r2
	mov 0x00000000, r7
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 351
	ld.w 0x0000002C[r5], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 353
	andi 0x0000FFFF, r7, r9
	add r9, r9
	ld.w 0x00000014[r2], r10
	add r9, r10
	ld.h 0x00000000[r8], r8
	st.h r8, 0x00000000[r10]
	add 0x00000001, r7
.BB.LABEL.5_4:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 349
	andi 0x0000FFFF, r7, r8
	cmp r6, r8
	bl9 .BB.LABEL.5_2
	br9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	mov 0x00000008, r9
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 364
	mov r7, r8
	jarl _Det_ReportError, r31
.BB.LABEL.5_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 367
	dispose 0x00000004, 0x00000001, [r31]
_BswM_GetGeneRqstStatus:
	.stack _BswM_GetGeneRqstStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 371
	prepare 0x00000041, 0x00000004
	mov r6, r20
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 377
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 378
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 380
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000014[r2], r2
	add r20, r20
	add r20, r2
	ld.hu 0x00000000[r2], r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	ori 0x0000FFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 383
	dispose 0x00000004, 0x00000041, [r31]
_BswM_GetPartitionIdx:
	.stack _BswM_GetPartitionIdx = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 492
	st.h r0, 0x00000000[r6]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 520
	jmp [r31]
_BswM_ArbitrateRule:
	.stack _BswM_ArbitrateRule = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 524
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 532
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mov r21, r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 534
	mulhi 0x00000014, r20, r2
	add r22, r2
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 535
	cmp 0x00000001, r10
	mov r10, r23
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	mulhi 0x00000014, r20, r2
	add r22, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 537
	mulhi 0x00000014, r20, r2
	add r2, r22
	movea 0x00000010, r22, r22
	br9 .BB.LABEL.8_6
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 539
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_4:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	mulhi 0x00000014, r20, r2
	add r22, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_9
.BB.LABEL.8_5:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 541
	mulhi 0x00000014, r20, r2
	add r2, r22
	add 0x0000000C, r22
.BB.LABEL.8_6:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 549
	mov r21, r2
	mul 0x00000028, r2, r0
	ld.w 0x00000000[r22], r5
	ld.bu 0x00000000[r5], r7
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r6
	add r2, r6
	ld.w 0x0000001C[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 550
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r8
	add r2, r8
	ld.w 0x00000024[r8], r8
	mov r20, r9
	shl 0x00000003, r9
	add r9, r8
	ld.w 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 552
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r5
	add r2, r5
	ld.w 0x00000024[r5], r2
	add r9, r2
	st.w r23, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 553
	mov r7, r2
	shl 0x00000004, r2
	add r2, r6
	cmp r8, r23
	ld.w 0x00000000[r6], r2
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 557
	mov r21, r6
	jarl _BswM_DoActionList.1, r31
.BB.LABEL.8_9:	; UPDATE_RULE_STATE
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 561
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r21, r0
	add r21, r2
	ld.w 0x00000024[r2], r2
	shl 0x00000003, r20
	add r20, r2
	st.w r23, 0x00000000[r2]
	dispose 0x00000000, 0x00000079, [r31]
_BswM_InitEventRequestPort.1:
	.stack _BswM_InitEventRequestPort.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 571
	prepare 0x00000001, 0x00000004
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 579
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 580
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 582
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 583
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 584
	ld.bu 0x00000000[r2], r2
	mov 0x00000000, r6
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 587
	andi 0x000000FF, r6, r7
	add r5, r7
	st.b r0, 0x00000000[r7]
	add 0x00000001, r6
.BB.LABEL.9_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 584
	andi 0x000000FF, r6, r7
	cmp r2, r7
	bl9 .BB.LABEL.9_2
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	mov 0x00000008, r9
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 593
	mov r7, r8
	jarl _Det_ReportError, r31
.BB.LABEL.9_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 596
	dispose 0x00000004, 0x00000001, [r31]
_BswM_InitModeRequestPort.1:
	.stack _BswM_InitModeRequestPort.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 599
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 607
	jarl _BswM_InitCanSMRequestPorts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 611
	jarl _BswM_InitComMRequestPorts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 615
	jarl _BswM_InitDcmRequestPorts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 619
	jarl _BswM_InitEcuMRequestPorts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 635
	jarl _BswM_InitGenericRequestPorts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 667
	jarl _BswM_InitBswMTimer, r31
	dispose 0x00000000, 0x00000001, [r31]
_BswM_InitRules.1:
	.stack _BswM_InitRules.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 672
	prepare 0x00000001, 0x00000004
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 682
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 683
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 685
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r5
	ld.hu 0x00000002[r3], r6
	mul 0x00000028, r6, r0
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 686
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r6
	ld.hu 0x00000002[r3], r7
	mul 0x00000028, r7, r0
	add r7, r6
	ld.w 0x00000024[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 687
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	ld.hu 0x00000002[r3], r7
	mul 0x00000028, r7, r0
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 688
	ld.bu 0x00000008[r2], r2
	mov 0x00000000, r7
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 690
	andi 0x000000FF, r7, r8
	mov r8, r9
	shl 0x00000003, r9
	add r6, r9
	st.b r0, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 691
	mul 0x00000014, r8, r0
	add r5, r8
	ld.w 0x00000004[r8], r8
	st.w r8, 0x00000000[r9]
	add 0x00000001, r7
.BB.LABEL.11_3:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 688
	andi 0x000000FF, r7, r8
	cmp r2, r8
	bl9 .BB.LABEL.11_2
.BB.LABEL.11_4:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 694
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	ld.hu 0x00000002[r3], r5
	mul 0x00000028, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 695
	ld.bu 0x00000010[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 697
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r7
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r7], r7
	ld.hu 0x00000002[r3], r8
	mul 0x00000028, r8, r0
	add r8, r7
	ld.w 0x00000014[r7], r7
	andi 0x000000FF, r5, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 699
	ld.bu 0x00000000[r7], r7
	shl 0x00000003, r7
	add r6, r7
	mov 0x00000001, r8
	st.b r8, 0x00000004[r7]
	add 0x00000001, r5
.BB.LABEL.11_6:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 695
	andi 0x000000FF, r5, r7
	cmp r2, r7
	bl9 .BB.LABEL.11_5
.BB.LABEL.11_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 702
	dispose 0x00000004, 0x00000001, [r31]
_BswM_DoActionList.1:
	.stack _BswM_DoActionList.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 705
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 714
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mov r6, r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x0000001C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 715
	mov r7, r2
	shl 0x00000004, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 716
	ld.bu 0x00000008[r2], r21
	mov 0x00000000, r22
	mov r7, r23
	mov r6, r24
	mov r22, r25
	br9 .BB.LABEL.12_13
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 718
	mov r23, r2
	shl 0x00000004, r2
	add r20, r2
	ld.w 0x0000000C[r2], r26
	andi 0x000000FF, r22, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 719
	mov r27, r2
	shl 0x00000004, r2
	add r26, r2
	ld.w 0x00000008[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_3:	; bb
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_4:	; switch_clause_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 752
	shl 0x00000004, r27
	add r27, r26
	ld.w 0x0000000C[r26], r2
	ld.w 0x00000004[r2], r2
	ld.bu 0x00000000[r2], r6
	mov r24, r7
	jarl _BswM_ArbitrateRule, r31
	br9 .BB.LABEL.12_11
.BB.LABEL.12_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 723
	mov r27, r2
	shl 0x00000004, r2
	add r26, r2
	ld.w 0x0000000C[r2], r2
	ld.w 0x00000008[r2], r2
	ld.bu 0x00000004[r2], r8
	ld.w 0x00000000[r2], r7
	mov r24, r6
	jarl _BswM_DoAction.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 727
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 730
	mov r27, r2
	shl 0x00000004, r2
	add r26, r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 732
	ld.bu 0x00000000[r2], r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.12_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 738
	shl 0x00000004, r27
	add r27, r26
	ld.bu 0x00000001[r26], r26
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_9:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.12_11
.BB.LABEL.12_10:	; switch_clause_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 748
	shl 0x00000004, r27
	add r27, r26
	ld.w 0x0000000C[r26], r26
	ld.w 0x00000000[r26], r26
	ld.bu 0x00000000[r26], r7
	mov r24, r6
	jarl _BswM_DoActionList.1, r31
.BB.LABEL.12_11:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 758
	andi 0x000000FF, r25, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.12_14
.BB.LABEL.12_12:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	add 0x00000001, r22
.BB.LABEL.12_13:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 716
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 763
	dispose 0x00000000, 0x000007F9, [r31]
_BswM_DoAction.1:
	.stack _BswM_DoAction.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 767
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 772
	add 0xFFFFFFFF, r7
	movea 0x0000001C, r0, r2
	cmp r2, r7
	bh9 .BB.LABEL.13_12
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	shl 0x00000001, r7
	jmp #.SWITCH.LABEL.13_13[r7]
.SWITCH.LABEL.13_13:
	br9 .BB.LABEL.13_2
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_3
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_4
	br9 .BB.LABEL.13_5
	br9 .BB.LABEL.13_6
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_7
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_8
	br9 .BB.LABEL.13_9
	br9 .BB.LABEL.13_10
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_12
	br9 .BB.LABEL.13_11
.SWITCH.LABEL.13_13.END:
.BB.LABEL.13_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 781
	mov r8, r7
	jarl _BswM_DoComMAllowCom, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; switch_clause_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 791
	mov r8, r7
	jarl _BswM_DoComMModeSwitch, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_4:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 803
	mov r8, r7
	jarl _BswM_DoDMControl, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_5:	; switch_clause_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 819
	mov r8, r7
	jarl _BswM_DoEcuMGoDownHaltPoll, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_6:	; switch_clause_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 825
	mov r8, r7
	jarl _BswM_DoEcuMInitBswM, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_7:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 835
	mov r8, r7
	jarl _BswM_DoEcuMStateSwitch, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_8:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 866
	mov r8, r7
	jarl _BswM_DoNMControl, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_9:	; switch_clause_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 871
	mov r8, r7
	jarl _BswM_DoPduGrpSwitch, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_10:	; switch_clause_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 876
	mov r8, r7
	jarl _BswM_DoPduRouterControl, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_11:	; switch_clause_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 936
	mov r8, r7
	jarl _BswM_DoUserCallout, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM.c", 944
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
	.align 4
_BswM_RuntimeStatus:
	.ds (20)
