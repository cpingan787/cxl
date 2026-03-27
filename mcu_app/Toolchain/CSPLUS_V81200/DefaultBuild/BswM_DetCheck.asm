#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BswM\BswM_DetCheck.c -oDefaultBuild\BswM_DetCheck.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ba700e1bc6754d04870582f4b0a27bfcp0osn3b1.w45
#@	compiled at Fri Mar 27 09:50:57 2026

	.file "..\..\Bsw\SystemServices\BswM\BswM_DetCheck.c"

	$reg_mode 32
	.dbl_size 8

	.extern _BswM_RuntimeStatus
	.public _BswM_ChkBswMInitStatus
	.extern _Det_ReportError
	.public _BswM_DetChkCanSMInd
	.public _BswM_DetChkComMInd
	.public _BswM_DetChkComMInitRst
	.public _BswM_DetChkDcmUpdate
	.public _BswM_DetChkDcmModeCurState
	.public _BswM_DetChkEcuMCurWakeUp
	.public _BswM_DetChkRequestedState
	.public _BswM_DetChkEcuMCurState
	.public _BswM_DetChkNmCarWkUp
	.public _BswM_DetChkGenericRqst
	.extern _BswM_GetPartitionIdx
	.public _BswM_DetChkWgmParRst

	.section .text, text
_BswM_ChkBswMInitStatus:
	.stack _BswM_ChkBswMInitStatus = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 59
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 63
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000004), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r6, r8
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r20
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 67
	mov r20, r9
	jarl _Det_ReportError, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 70
	dispose 0x00000000, 0x00000041, [r31]
_BswM_DetChkCanSMInd:
	.stack _BswM_DetChkCanSMInd = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 88
	prepare 0x00000041, 0x00000000
	mov r6, r20
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 92
	jarl _BswM_ChkBswMInitStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry.if_break_bb13_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r10
.BB.LABEL.2_2:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 111
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 96
	cmp 0x00000004, r20
	bgt9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_else_bb.if_break_bb13_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_2
.BB.LABEL.2_5:	; if_then_bb10
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 100
	mov r8, r9
	jarl _Det_ReportError, r31
	br9 .BB.LABEL.2_1
_BswM_DetChkComMInd:
	.stack _BswM_DetChkComMInd = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 131
	prepare 0x00000041, 0x00000000
	mov r6, r20
	mov 0x0000000E, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 135
	jarl _BswM_ChkBswMInitStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; entry.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r10
.BB.LABEL.3_2:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 155
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 139
	cmp 0x00000002, r20
	bh9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_else_bb.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_2
.BB.LABEL.3_5:	; if_then_bb33
	mov 0x00000005, r9
	mov 0x0000000E, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 144
	jarl _Det_ReportError, r31
	br9 .BB.LABEL.3_1
_BswM_DetChkComMInitRst:
	.stack _BswM_DetChkComMInitRst = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 189
	prepare 0x00000001, 0x00000000
	movea 0x00000022, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 193
	jarl _BswM_ChkBswMInitStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 195
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 198
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DetChkDcmUpdate:
	.stack _BswM_DetChkDcmUpdate = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 203
	prepare 0x00000001, 0x00000000
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 207
	jarl _BswM_ChkBswMInitStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 209
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 212
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DetChkDcmModeCurState:
	.stack _BswM_DetChkDcmModeCurState = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 215
	prepare 0x00000041, 0x00000000
	mov r6, r20
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 219
	jarl _BswM_ChkBswMInitStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry.if_break_bb14_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r10
.BB.LABEL.6_2:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 238
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 224
	cmp 0x0000000B, r20
	bh9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_else_bb.if_break_bb14_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_2
.BB.LABEL.6_5:	; if_then_bb11
	mov 0x00000005, r9
	mov 0x00000006, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 227
	jarl _Det_ReportError, r31
	br9 .BB.LABEL.6_1
_BswM_DetChkEcuMCurWakeUp:
	.stack _BswM_DetChkEcuMCurWakeUp = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 243
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 247
	jarl _BswM_ChkBswMInitStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; entry.if_break_bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r10
.BB.LABEL.7_2:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 271
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 251
	cmp 0x00000003, r20
	bh9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_else_bb.if_break_bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_2
.BB.LABEL.7_5:	; if_then_bb45
	mov 0x00000005, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 260
	jarl _Det_ReportError, r31
	br9 .BB.LABEL.7_1
_BswM_DetChkRequestedState:
	.stack _BswM_DetChkRequestedState = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 274
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 278
	jarl _BswM_ChkBswMInitStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; entry.if_break_bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r10
.BB.LABEL.8_2:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 305
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 282
	movea 0xFFFFFFCE, r20, r2
	zxb r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000004, r9
.BB.LABEL.8_5:	; if_then_bb28
	movea 0x00000023, r0, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 305
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.8_6:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 291
	cmp 0x00000002, r21
	bgt9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_else_bb30.if_break_bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_2
.BB.LABEL.8_8:	; if_then_bb36
	mov 0x00000005, r9
	br9 .BB.LABEL.8_5
_BswM_DetChkEcuMCurState:
	.stack _BswM_DetChkEcuMCurState = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 307
	prepare 0x00000001, 0x00000000
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 311
	jarl _BswM_ChkBswMInitStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 313
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 316
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DetChkNmCarWkUp:
	.stack _BswM_DetChkNmCarWkUp = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 498
	prepare 0x00000001, 0x00000000
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 502
	jarl _BswM_ChkBswMInitStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 504
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 507
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DetChkGenericRqst:
	.stack _BswM_DetChkGenericRqst = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 567
	prepare 0x00000041, 0x00000004
	mov r6, r20
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 575
	jarl _BswM_ChkBswMInitStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_2:	; if_else_bb
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 581
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 582
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 584
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r5
	mov r5, r6
	shl 0x00000005, r6
	add r6, r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 585
	ld.hu 0x00000028[r2], r2
	mov 0x00000000, r6
	br9 .BB.LABEL.11_6
.BB.LABEL.11_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 587
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r7
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r7], r7
	mov r5, r8
	mul 0x00000028, r8, r0
	add r8, r7
	ld.w 0x00000004[r7], r7
	ld.w 0x00000030[r7], r7
	andi 0x0000FFFF, r6, r8
	add r8, r8
	add r8, r7
	ld.hu 0x00000000[r7], r7
	cmp r7, r20
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	add 0x00000001, r6
.BB.LABEL.11_6:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 585
	andi 0x0000FFFF, r6, r7
	cmp r2, r7
	bl9 .BB.LABEL.11_4
.BB.LABEL.11_7:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 592
	zxh r6
	cmp r2, r6
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; bb56.if_break_bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_9:	; if_then_bb64
	mov 0x00000004, r9
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 595
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.11_10:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 0
	mov 0x00000000, r20
	mov 0x00000006, r9
	mov 0x00000002, r8
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 604
	mov r20, r7
	jarl _Det_ReportError, r31
	mov r20, r10
.BB.LABEL.11_11:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 608
	dispose 0x00000004, 0x00000041, [r31]
_BswM_DetChkWgmParRst:
	.stack _BswM_DetChkWgmParRst = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 692
	prepare 0x00000001, 0x00000000
	movea 0x00000011, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 696
	jarl _BswM_ChkBswMInitStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 698
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_DetCheck.c", 701
	dispose 0x00000000, 0x00000001, [r31]
