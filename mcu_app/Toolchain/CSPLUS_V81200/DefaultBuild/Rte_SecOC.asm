#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\APP\Rte_SecOC.c -oDefaultBuild\Rte_SecOC.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bab8e3d907074331b690c3c62764c4c2m1zn13fw.f25
#@	compiled at Fri Mar 27 09:50:05 2026

	.file "..\..\ASW\APP\Rte_SecOC.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CryptoKeyStatus
	.public _SecOC_ErrorLogQueue, 612
	.public _SecOC_ErrLog_QueueRead, 16
	.public _SecOC_ErrLogInfo, 80
	.public _SecOC_RxTxPduInfo, 10
	.public _App_VerificationStatusCallout
	.extern _NvM_ReadBlock
	.extern _Fee_MainFunction
	.extern _Fls_MainFunction
	.extern _NvM_MainFunction
	.extern _NvM_GetErrorStatus
	.extern _queue_write
	.public _App_SecOC_ErrorLogProcess
	.extern _queue_get_count
	.extern _queue_read
	.extern _Com_SendSignal

	.section .text, text
_App_SecOC_RxTxPduInfo_Index.1:
	.stack _App_SecOC_RxTxPduInfo_Index.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 56
	mov 0x00000000, r10
	br9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 62
	andi 0x0000FFFF, r10, r2
	add r2, r2
	mov #_SecOC_RxTxPduInfo, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	cmp r2, r6
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 65
	zxb r10
	jmp [r31]
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 0
	add 0x00000001, r10
.BB.LABEL.1_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 60
	andi 0x0000FFFF, r10, r2
	cmp 0x00000005, r2
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_5:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 71
	jmp [r31]
_App_VerificationStatusCallout:
	.stack _App_VerificationStatusCallout = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 77
	prepare 0x00000071, 0x00000014
	st.w r6, 0x00000008[r3]
	st.w r7, 0x0000000C[r3]
	st.w r8, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 80
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 82
	ld.hu 0x00000010[r3], r20
	mov r20, r6
	jarl _App_SecOC_RxTxPduInfo_Index.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 85
	mov r21, r2
	shl 0x00000004, r2
	mov #_SecOC_ErrLogInfo, r22
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 88
	st.h r20, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 90
	st.b r0, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 91
	ld.w 0x0000000C[r3], r2
	st.b r2, 0x00000003[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 93
	ld.h 0x00000004[r22], r2
	add 0x00000001, r2
	st.h r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 95
	st.b r0, 0x00000006[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 96
	st.b r0, 0x00000007[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 97
	movhi HIGHW1(#_CryptoKeyStatus), r0, r2
	ld.w LOWW(#_CryptoKeyStatus)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 103
	cmp 0x00000001, r2
	setf 0x0000000A, r2
	st.b r2, 0x00000008[r22]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 106
	st.w r2, 0x00000000[r3]
	movea 0x00000004, r3, r7
	movea 0x00000033, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 108
	jarl _NvM_ReadBlock, r31
	mov 0x00000000, r20
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 112
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 113
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 114
	jarl _NvM_MainFunction, r31
	mov r3, r7
	movea 0x00000033, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 115
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 111
	add 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 116
	addi 0xFFFFEC78, r20, r0
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 109
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 120
	shl 0x00000004, r21
	mov #_SecOC_ErrLogInfo, r2
	add r21, r2
	add 0x0000000C, r2
	ld.w 0x00000000[r3], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb67.if_break_bb102_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 122
	ld.bu 0x00000004[r3], r6
	shl 0x00000010, r6
	ld.w 0x00000000[r2], r5
	or r6, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 123
	ld.bu 0x00000005[r3], r6
	shl 0x00000008, r6
	or r6, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 124
	ld.bu 0x00000006[r3], r6
	or r6, r5
.BB.LABEL.2_6:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 0
	st.w r5, 0x00000000[r2]
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 132
	mov #_SecOC_ErrorLogQueue, r6
	mov r22, r7
	jarl _queue_write, r31
	dispose 0x00000014, 0x00000071, [r31]
_App_SecOC_ErrorLogProcess:
	.stack _App_SecOC_ErrorLogProcess = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 140
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 144
	movhi HIGHW1(#_ErrorLogCycle.2.App_SecOC_ErrorLogProcess), r0, r2
	ld.h LOWW(#_ErrorLogCycle.2.App_SecOC_ErrorLogProcess)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_ErrorLogCycle.2.App_SecOC_ErrorLogProcess)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 146
	zxh r5
	mov 0x0000000A, r2
	divhu r2, r5, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 148
	movhi HIGHW1(#_ErrorLogCycle.2.App_SecOC_ErrorLogProcess), r0, r2
	st.h r0, LOWW(#_ErrorLogCycle.2.App_SecOC_ErrorLogProcess)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 150
	mov #_SecOC_ErrorLogQueue, r20
	mov r20, r6
	jarl _queue_get_count, r31
	movhi HIGHW1(#_queue_count.1), r0, r2
	st.h r10, LOWW(#_queue_count.1)[r2]
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 151
	mov #_SecOC_ErrLog_QueueRead, r7
	mov r20, r6
	jarl _queue_read, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 164
	mov #_SecOC_ErrLog_QueueRead, r20
	movea 0x0000008F, r0, r6
	mov r20, r7
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 165
	addi 0x00000002, r20, r7
	movea 0x0000008E, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 166
	addi 0x00000003, r20, r7
	movea 0x0000008D, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 167
	addi 0x00000004, r20, r7
	movea 0x0000008C, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 168
	addi 0x00000006, r20, r7
	movea 0x0000008B, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 169
	addi 0x00000007, r20, r7
	movea 0x0000008A, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 170
	addi 0x00000008, r20, r7
	movea 0x00000089, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 171
	addi 0x0000000C, r20, r7
	movea 0x00000088, r0, r6
	jarl _Com_SendSignal, r31
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Rte_SecOC.c", 179
	dispose 0x00000000, 0x00000041, [r31]
	.section .bss, bss
	.align 4
_SecOC_ErrorLogQueue:
	.ds (612)
	.align 4
_SecOC_ErrLog_QueueRead:
	.ds (16)
	.align 4
_SecOC_ErrLogInfo:
	.ds (80)
	.section .data, data
	.align 2
_SecOC_RxTxPduInfo:
	.ds (2)
	.dhw 0x0098
	.ds (6)
	.align 2
_queue_count.1:
	.ds (2)
	.align 2
_ErrorLogCycle.2.App_SecOC_ErrorLogProcess:
	.ds (2)
