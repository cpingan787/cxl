#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\CanIf\CanIf.c -oDefaultBuild\CanIf.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2b306c6d9017480ca5b87f2a63cb5bf2bufeu2ch.m4i
#@	compiled at Thu Jul 16 13:41:28 2026

	.file "..\..\Bsw\SystemServices\BootServices\CanIf\CanIf.c"

	$reg_mode 22
	.dbl_size 4

	.extern _gDCM_FunReq_Flag
	.extern _g_BootM_SIBTimeout
	.extern _g_BootM_SIBData
	.extern _Can_GaaConfig
	.public _CanIf_Transmit
	.extern _Can_Write
	.public _CanIf_TxConfirmation
	.extern _CanTp_TxConfirmation
	.public _CanIf_RxIndication
	.extern _CanTp_RxIndication
	.public _CanIf_ControllerBusOff
	.extern _Can_Init
	.extern _Can_SetControllerMode
	.public _CanIf_ControllerModeIndication

	.section .text, text
_CanIf_Transmit:
	.stack _CanIf_Transmit = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 61
	prepare 0x00000001, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 67
	st.h r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 68
	ld.b 0x00000008[r7], r5
	st.b r5, 0x0000000A[r3]
	mov 0x40000719, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 69
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 70
	ld.w 0x00000000[r7], r5
	st.w r5, 0x00000000[r3]
	mov r3, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 74
	jarl32 _Can_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 76
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 79
	dispose 0x0000000C, 0x00000001, [r31]
_CanIf_TxConfirmation:
	.stack _CanIf_TxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 99
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 101
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 103
	jarl32 _CanTp_TxConfirmation, r31
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 105
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_RxIndication:
	.stack _CanIf_RxIndication = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 124
	prepare 0x00000001, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 129
	movhi HIGHW1(#_g_BootM_SIBTimeout), r0, r5
	ld.bu LOWW(#_g_BootM_SIBTimeout)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; entry.bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 133
	andi 0x000000FF, r5, r8
	mov #_g_BootM_SIBData, r9
	add r8, r9
	ld.w 0x00000000[r7], r10
	add r10, r8
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.3_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 131
	andi 0x000000FF, r5, r8
	cmp 0x00000003, r8
	bl9 .BB.LABEL.3_2
.BB.LABEL.3_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 137
	ld.h 0x00000008[r7], r5
	st.h r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 138
	ld.w 0x00000000[r7], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 142
	ld.hu 0x00000008[r7], r5
	movea 0x00000040, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.3_9
.BB.LABEL.3_5:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 145
	ld.w 0x00000000[r6], r5
	mov 0x40000711, r6
	cmp r6, r5
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 0
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 147
	jarl32 _CanTp_RxIndication, r31
	dispose 0x0000000C, 0x00000001, [r31]
.BB.LABEL.3_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 0
	mov 0x400007DF, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 149
	cmp r6, r5
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 151
	movhi HIGHW1(#_gDCM_FunReq_Flag), r0, r5
	st.b r6, LOWW(#_gDCM_FunReq_Flag)[r5]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 152
	jarl32 _CanTp_RxIndication, r31
.BB.LABEL.3_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 159
	dispose 0x0000000C, 0x00000001, [r31]
_CanIf_ControllerBusOff:
	.stack _CanIf_ControllerBusOff = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 178
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 181
	mov #_Can_GaaConfig, r6
	jarl32 _Can_Init, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 182
	mov r6, r7
	jarl32 _Can_SetControllerMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_ControllerModeIndication:
	.stack _CanIf_ControllerModeIndication = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanIf/CanIf.c", 202
	jmp [r31]
