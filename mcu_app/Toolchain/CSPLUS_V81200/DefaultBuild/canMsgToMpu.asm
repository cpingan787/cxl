#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\vehicle_data_to_mpu\canMsgToMpu.c -oDefaultBuild\canMsgToMpu.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_15405ff8bfc44fbdb354dddf7ec6dcd6ciba442l.syn
#@	compiled at Fri Mar 27 09:50:32 2026

	.file "..\..\Srcode\app\vehicle_data_to_mpu\canMsgToMpu.c"

	$reg_mode 32
	.dbl_size 8

	.public _g_canRxToCpuConfigureBuffer, 400
	.public _g_txBuffer, 1411
	.public _g_txBufferCount, 2
	.public _g_txByteOffset, 2
	.extern _SuspendAllInterrupts
	.extern _ResumeAllInterrupts
	.extern _memcpy
	.public _SaveCanMsgToBuffer
	.public _CanMsgReceiveFromBuffer
	.public _CanMsgTansmitToCpuInitialize
	.public _CanMsgTransmitToCpu
	.extern _LogHalPrint
	.extern _MpuHalTransmit
	.public _GetCanMsgConfigureBufferSize
	.public _CanMsgConfigureBufferAdd
	.public _SetCanMsgConfigureBufferInvalidData
	.public _SetCanMsgConfigureBufferValidData
	.public _CanMsgConfigureBufferDataIsValid

	.section .text, text
_CpuCanRxQueueIsEmpty.1:
	.stack _CpuCanRxQueueIsEmpty.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 58
	movhi HIGHW1(#_g_cpuCanRxQueueWrite.4), r0, r2
	ld.hu LOWW(#_g_cpuCanRxQueueWrite.4)[r2], r2
	movhi HIGHW1(#_g_cpuCanRxQueueRead.5), r0, r5
	ld.hu LOWW(#_g_cpuCanRxQueueRead.5)[r5], r5
	cmp r5, r2
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 59
	jmp [r31]
_CpuCanRxQueueIsFull.1:
	.stack _CpuCanRxQueueIsFull.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 61
	movhi HIGHW1(#_g_cpuCanRxQueueRead.5), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 63
	ld.hu LOWW(#_g_cpuCanRxQueueRead.5)[r2], r2
	cmp r2, r6
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 64
	jmp [r31]
_CpuCanRxQueueGetNextIndex.1:
	.stack _CpuCanRxQueueGetNextIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 66
	add 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 69
	andi 0x0000FFFF, r6, r2
	cmp 0x00000009, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 71
	cmov 0x0000000F, 0x00000000, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 74
	zxh r10
	jmp [r31]
_CpuCanRxQueuePush.1:
	.stack _CpuCanRxQueuePush.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 76
	prepare 0x00000679, 0x00000000
	addi 0x00000000, r9, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 81
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 86
	jarl _SuspendAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 87
	movhi HIGHW1(#_g_cpuCanRxQueueWrite.4), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 88
	ld.hu LOWW(#_g_cpuCanRxQueueWrite.4)[r2], r24
	mov r24, r6
	jarl _CpuCanRxQueueGetNextIndex.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 89
	mov r25, r6
	jarl _CpuCanRxQueueIsFull.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 91
	jarl _ResumeAllInterrupts, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 92
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.4_4:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 95
	mov r24, r2
	mul 0x0000004C, r2, r0
	mov #_g_cpuCanRxQueue.3, r5
	add r2, r5
	st.b r23, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 96
	st.w r22, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 97
	st.b r21, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 98
	cmp 0x00000000, r21
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 100
	mul 0x0000004C, r24, r0
	mov #_g_cpuCanRxQueue.3, r6
	add r24, r6
	add 0x00000009, r6
	mov r20, r7
	mov r21, r8
	jarl _memcpy, r31
.BB.LABEL.4_6:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 102
	movhi HIGHW1(#_g_cpuCanRxQueueWrite.4), r0, r2
	st.h r25, LOWW(#_g_cpuCanRxQueueWrite.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 103
	jarl _ResumeAllInterrupts, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 105
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.4_7:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 106
	dispose 0x00000000, 0x00000679, [r31]
_CpuCanRxQueuePeek.1:
	.stack _CpuCanRxQueuePeek.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 108
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 112
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 117
	jarl _SuspendAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 118
	jarl _CpuCanRxQueueIsEmpty.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 120
	jarl _ResumeAllInterrupts, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 121
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_3:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 124
	movhi HIGHW1(#_g_cpuCanRxQueueRead.5), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 125
	ld.hu LOWW(#_g_cpuCanRxQueueRead.5)[r2], r2
	mul 0x0000004C, r2, r0
	mov #_g_cpuCanRxQueue.3, r7
	add r2, r7
	movea 0x0000004C, r0, r8
	mov r20, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 126
	jarl _ResumeAllInterrupts, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 128
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 129
	dispose 0x00000000, 0x00000041, [r31]
_CpuCanRxQueueDrop.1:
	.stack _CpuCanRxQueueDrop.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 131
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 135
	jarl _SuspendAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 136
	jarl _CpuCanRxQueueIsEmpty.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 138
	jarl _ResumeAllInterrupts, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 139
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 142
	movhi HIGHW1(#_g_cpuCanRxQueueRead.5), r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 143
	ld.hu LOWW(#_g_cpuCanRxQueueRead.5)[r20], r6
	jarl _CpuCanRxQueueGetNextIndex.1, r31
	st.h r10, LOWW(#_g_cpuCanRxQueueRead.5)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 144
	jarl _ResumeAllInterrupts, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 146
	dispose 0x00000000, 0x00000041, [r31]
_CanMsgCopyFromQueueNode.1:
	.stack _CanMsgCopyFromQueueNode.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 149
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 151
	cmp 0x00000000, r6
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 156
	cmp 0x00000000, r7
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 158
	ld.b 0x00000000[r6], r2
	st.b r2, 0x00000000[r7]
.BB.LABEL.7_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 160
	ld.w 0x00000004[r6], r2
	st.w r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 161
	ld.b 0x00000008[r6], r2
	st.b r2, 0x00000044[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 162
	st.b r0, 0x00000045[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 163
	ld.bu 0x00000008[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 165
	addi 0x00000009, r6, r7
	add 0x00000004, r8
	mov r8, r6
	mov r2, r8
	jarl _memcpy, r31
.BB.LABEL.7_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 167
	dispose 0x00000000, 0x00000001, [r31]
_StackInit.1:
	.stack _StackInit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 170
	st.h r0, 0x000000C8[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 172
	jmp [r31]
_StackPush.1:
	.stack _StackPush.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 175
	ld.h 0x000000C8[r6], r2
	movea 0x00000063, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 177
	cmp r5, r2
	bh9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 181
	add r2, r2
	add r6, r2
	st.h r7, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 182
	ld.h 0x000000C8[r6], r2
	add 0x00000001, r2
	st.h r2, 0x000000C8[r6]
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 183
	jmp [r31]
_StackPop.1:
	.stack _StackPop.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 185
	ld.h 0x000000C8[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 187
	cmp 0x00000000, r2
	ble9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 191
	add 0xFFFFFFFF, r2
	st.h r2, 0x000000C8[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 192
	sxh r2
	add r2, r2
	add r2, r6
	ld.h 0x00000000[r6], r10
	jmp [r31]
.BB.LABEL.10_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 193
	jmp [r31]
_StackTop.1:
	.stack _StackTop.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 195
	ld.h 0x000000C8[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 197
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 201
	add r2, r2
	add r6, r2
	ld.h 0xFFFFFFFE[r2], r10
	jmp [r31]
.BB.LABEL.11_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 202
	jmp [r31]
_StackIsEmpty.1:
	.stack _StackIsEmpty.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 204
	ld.h 0x000000C8[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 210
	cmp 0x00000000, r2
	setf 0x0000000F, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 211
	jmp [r31]
_Partition.1:
	.stack _Partition.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 213
	prepare 0x00000079, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r6
	br9 .BB.LABEL.13_9
.BB.LABEL.13_1:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 223
	add 0xFFFFFFFF, r22
.BB.LABEL.13_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 221
	mov r21, r2
	sxh r2
	mov r22, r5
	sxh r5
	cmp r5, r2
	bge9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov r22, r2
	sxh r2
	shl 0x00000002, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r3], r5
	cmp r5, r2
	bnc9 .BB.LABEL.13_1
.BB.LABEL.13_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 225
	mov r21, r6
	sxh r6
	shl 0x00000002, r6
	add r20, r6
	mov r22, r23
	sxh r23
	shl 0x00000002, r23
	add r20, r23
	mov 0x00000004, r8
	mov r23, r7
	jarl _memcpy, r31
	br9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 228
	add 0x00000001, r21
.BB.LABEL.13_6:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 226
	mov r21, r2
	sxh r2
	mov r22, r5
	sxh r5
	cmp r5, r2
	bge9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov r21, r2
	sxh r2
	shl 0x00000002, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r3], r5
	cmp r5, r2
	bnh9 .BB.LABEL.13_5
.BB.LABEL.13_8:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 230
	mov r21, r7
	sxh r7
	mov r23, r6
.BB.LABEL.13_9:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	shl 0x00000002, r7
	add r20, r7
	mov 0x00000004, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 219
	mov r21, r2
	sxh r2
	mov r22, r5
	sxh r5
	cmp r5, r2
	blt9 .BB.LABEL.13_2
.BB.LABEL.13_10:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 232
	sxh r21
	mov r21, r2
	shl 0x00000002, r2
	mov r20, r6
	add r2, r6
	mov 0x00000004, r8
	mov r3, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 234
	mov r21, r10
	dispose 0x00000004, 0x00000079, [r31]
_CanMsgConfigureSortLittleToBig.1:
	.stack _CanMsgConfigureSortLittleToBig.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 236
	prepare 0x00000479, 0x00000000
	addi 0x00000000, r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 241
	bz9 .BB.LABEL.14_8
.BB.LABEL.14_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 246
	mov #_g_stack.2, r22
	mov r22, r6
	jarl _StackInit.1, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 247
	mov r22, r6
	jarl _StackPush.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 245
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 248
	mov r20, r7
	sxh r7
	mov r22, r6
	br9 .BB.LABEL.14_6
.BB.LABEL.14_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 251
	mov #_g_stack.2, r20
	mov r20, r6
	jarl _StackTop.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 252
	mov r20, r6
	jarl _StackPop.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 253
	mov r20, r6
	jarl _StackTop.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 254
	mov r20, r6
	jarl _StackPop.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 256
	mov r21, r6
	mov r23, r7
	mov r22, r8
	jarl _Partition.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 257
	addi 0xFFFFFFFF, r10, r2
	cmp r23, r2
	mov r10, r20
	ble9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 259
	mov #_g_stack.2, r24
	mov r24, r6
	mov r23, r7
	jarl _StackPush.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 260
	addi 0xFFFFFFFF, r20, r7
	sxh r7
	mov r24, r6
	jarl _StackPush.1, r31
.BB.LABEL.14_4:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 262
	addi 0x00000001, r20, r2
	cmp r22, r2
	bge9 .BB.LABEL.14_7
.BB.LABEL.14_5:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 264
	add 0x00000001, r20
	mov r20, r7
	sxh r7
	mov #_g_stack.2, r20
	mov r20, r6
	jarl _StackPush.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 265
	mov r20, r6
	mov r22, r7
.BB.LABEL.14_6:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	jarl _StackPush.1, r31
.BB.LABEL.14_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 249
	mov #_g_stack.2, r6
	jarl _StackIsEmpty.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 268
	dispose 0x00000000, 0x00000479, [r31]
_GetIndexFromCanMsgConfigureBuffer.1:
	.stack _GetIndexFromCanMsgConfigureBuffer.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 271
	movhi HIGHW1(#_g_canRxToCpuConfigure.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 284
	ld.w LOWW(#_g_canRxToCpuConfigure.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 286
	cmp 0x00000000, r2
	bz9 .BB.LABEL.15_12
.BB.LABEL.15_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 292
	add 0xFFFFFFFF, r2
	mov 0x00000000, r10
	mov r10, r5
	br9 .BB.LABEL.15_11
.BB.LABEL.15_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 295
	mov r2, r8
	sub r10, r8
	cmp 0x00000001, r8
	bh9 .BB.LABEL.15_7
.BB.LABEL.15_3:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 297
	mulhi 0x00000190, r6, r5
	mov #_g_canRxToCpuConfigureBuffer, r8
	add r5, r8
	mov r10, r5
	shl 0x00000002, r5
	add r5, r8
	ld.w 0x00000000[r8], r5
	cmp r5, r7
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 299
	sxh r10
	jmp [r31]
.BB.LABEL.15_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 301
	mulhi 0x00000190, r6, r5
	mov #_g_canRxToCpuConfigureBuffer, r6
	add r5, r6
	mov r2, r5
	shl 0x00000002, r5
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp r5, r7
	bnz9 .BB.LABEL.15_12
.BB.LABEL.15_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 303
	mov r2, r10
	sxh r10
	jmp [r31]
.BB.LABEL.15_7:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 308
	mulhi 0x00000190, r6, r8
	mov #_g_canRxToCpuConfigureBuffer, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 307
	mov r10, r8
	add r2, r8
	shr 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 308
	mov r8, r11
	shl 0x00000002, r11
	add r11, r9
	ld.w 0x00000000[r9], r9
	cmp r9, r7
	bnh9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; if_break_bb57.if_break_bb78_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov r8, r10
	br9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; if_else_bb76
	mov r8, r2
.BB.LABEL.15_10:	; if_break_bb78
	add 0x00000001, r5
.BB.LABEL.15_11:	; bb81
	movea 0x00000032, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 293
	cmp r8, r5
	bl9 .BB.LABEL.15_2
.BB.LABEL.15_12:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 318
	jmp [r31]
_SaveCanMsgToBuffer:
	.stack _SaveCanMsgToBuffer = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 320
	prepare 0x00000079, 0x00000000
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 323
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 327
	addi 0xFFFFFFC0, r21, r0
	bgt9 .BB.LABEL.16_1
.BB.LABEL.16_3:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 333
	mov r23, r6
	mov r22, r7
	jarl _GetIndexFromCanMsgConfigureBuffer.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 334
	cmp 0x00000000, r10
	bp9 .BB.LABEL.16_6
.BB.LABEL.16_4:	; if_break_bb17.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0x00000000, r10
.BB.LABEL.16_5:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 346
	sxh r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.16_6:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 345
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _CpuCanRxQueuePush.1, r31
	dispose 0x00000000, 0x00000079, [r31]
_CanMsgReceiveFromBuffer:
	.stack _CanMsgReceiveFromBuffer = 88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 348
	prepare 0x00000061, 0x0000004C
	addi 0x00000000, r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 352
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 357
	jarl _CpuCanRxQueuePeek.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 362
	mov r21, r7
	mov r20, r8
	jarl _CanMsgCopyFromQueueNode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 363
	jarl _CpuCanRxQueueDrop.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 365
	dispose 0x0000004C, 0x00000061, [r31]
.BB.LABEL.17_3:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 366
	dispose 0x0000004C, 0x00000061, [r31]
_CanMsgTansmitToCpuInitialize:
	.stack _CanMsgTansmitToCpuInitialize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 368
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 388
	jmp [r31]
_CanMsgTransmitToCpu:
	.stack _CanMsgTransmitToCpu = 184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 390
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFFD8, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 399
	movhi HIGHW1(#_g_txByteOffset), r0, r2
	mov 0x00000002, r5
	st.h r5, LOWW(#_g_txByteOffset)[r2]
	mov 0x00000000, r2
	mov r6, r20
	jr .BB.LABEL.19_12
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 405
	movhi HIGHW1(#_g_txByteOffset), r0, r2
	ld.hu LOWW(#_g_txByteOffset)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 404
	ld.bu 0x0000000C[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 405
	add r2, r5
	add 0x00000006, r5
	zxh r5
	addi 0xFFFFFA7D, r5, r0
	bgt17 .BB.LABEL.19_13
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	movea 0x00000050, r3, r7
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 410
	jarl _CanMsgReceiveFromBuffer, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.19_13
.BB.LABEL.19_3:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 415
	ld.w 0x00000050[r3], r2
	addi 0xFFFFFC9F, r2, r0
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_4:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 417
	ld.bu 0x00000094[r3], r7
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 420
	andi 0x000000FF, r21, r2
	movea 0x00000050, r3, r5
	add r2, r5
	ld.bu 0x00000004[r5], r7
	mov #.STR.1502, r6
	jarl _LogHalPrint, r31
	add 0x00000001, r21
.BB.LABEL.19_6:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 418
	andi 0x000000FF, r21, r2
	ld.bu 0x00000094[r3], r5
	cmp r5, r2
	bl9 .BB.LABEL.19_5
.BB.LABEL.19_7:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 422
	mov #.STR.1503, r6
	jarl _LogHalPrint, r31
.BB.LABEL.19_8:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 425
	movhi HIGHW1(#_g_txByteOffset), r0, r2
	ld.hu LOWW(#_g_txByteOffset)[r2], r5
	mov #_g_txBuffer, r6
	add r6, r5
	movea 0x00000003, r3, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r5]
	ld.h LOWW(#_g_txByteOffset)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_txByteOffset)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 426
	zxh r5
	add r6, r5
	ld.w 0x00000050[r3], r7
	shr 0x00000018, r7
	st.b r7, 0x00000000[r5]
	ld.h LOWW(#_g_txByteOffset)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_txByteOffset)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 427
	zxh r5
	add r6, r5
	ld.w 0x00000050[r3], r7
	shr 0x00000010, r7
	st.b r7, 0x00000000[r5]
	ld.h LOWW(#_g_txByteOffset)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_txByteOffset)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 428
	zxh r5
	add r6, r5
	ld.w 0x00000050[r3], r7
	shr 0x00000008, r7
	st.b r7, 0x00000000[r5]
	ld.h LOWW(#_g_txByteOffset)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_txByteOffset)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 429
	zxh r5
	add r6, r5
	ld.w 0x00000050[r3], r7
	st.b r7, 0x00000000[r5]
	ld.h LOWW(#_g_txByteOffset)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_txByteOffset)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 430
	zxh r5
	add r5, r6
	ld.bu 0x00000094[r3], r5
	st.b r5, 0x00000000[r6]
	ld.h LOWW(#_g_txByteOffset)[r2], r6
	add 0x00000001, r6
	st.h r6, LOWW(#_g_txByteOffset)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.19_10
.BB.LABEL.19_9:	; bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 433
	movhi HIGHW1(#_g_txByteOffset), r0, r6
	ld.hu LOWW(#_g_txByteOffset)[r6], r7
	mov #_g_txBuffer, r8
	add r7, r8
	andi 0x0000FFFF, r2, r7
	movea 0x00000050, r3, r9
	add r7, r9
	ld.b 0x00000004[r9], r7
	st.b r7, 0x00000000[r8]
	ld.h LOWW(#_g_txByteOffset)[r6], r7
	add 0x00000001, r7
	st.h r7, LOWW(#_g_txByteOffset)[r6]
	add 0x00000001, r2
.BB.LABEL.19_10:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 431
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	blt9 .BB.LABEL.19_9
.BB.LABEL.19_11:	; bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 435
	movhi HIGHW1(#_g_txBufferCount), r0, r2
	ld.h LOWW(#_g_txBufferCount)[r2], r2
	add 0x00000001, r2
.BB.LABEL.19_12:	; bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	movhi HIGHW1(#_g_txBufferCount), r0, r5
	st.h r2, LOWW(#_g_txBufferCount)[r5]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 402
	jarl _CpuCanRxQueuePeek.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.19_1
.BB.LABEL.19_13:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 438
	movhi HIGHW1(#_g_txBufferCount), r0, r2
	ld.hu LOWW(#_g_txBufferCount)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.19_15
.BB.LABEL.19_14:	; if_break_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 443
	shr 0x00000008, r2
	mov #_g_txBuffer, r5
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 444
	movhi HIGHW1(#_g_txBufferCount), r0, r21
	ld.b LOWW(#_g_txBufferCount)[r21], r2
	st.b r2, 0x00000001[r5]
	mov 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 446
	st.b r22, 0x00000098[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 447
	st.b r22, 0x00000099[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 448
	st.b r0, 0x0000009A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 449
	movhi HIGHW1(#_g_txByteOffset), r0, r23
	ld.h LOWW(#_g_txByteOffset)[r23], r2
	st.h r2, 0x0000009C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 450
	ld.h LOWW(#_g_txByteOffset)[r23], r2
	st.h r2, 0x0000009E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 451
	st.w r5, 0x000000A0[r3]
	movea 0x00000098, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 452
	mov r20, r6
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 454
	st.h r22, LOWW(#_g_txByteOffset)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 455
	st.h r0, LOWW(#_g_txBufferCount)[r21]
.BB.LABEL.19_15:	; bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0x00000000, r10
	movea 0x00000028, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 457
	dispose 0x0000007C, 0x00000079, [r31]
_GetCanMsgConfigureBufferSize:
	.stack _GetCanMsgConfigureBufferSize = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 459
	cmp 0x00000000, r6
	movea 0x00000064, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 465
	cmov 0x0000000A, 0xFFFFFFFF, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 466
	jmp [r31]
_CanMsgConfigureBufferAdd:
	.stack _CanMsgConfigureBufferAdd = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 468
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 470
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 474
	mov r6, r2
	shl 0x00000003, r2
	mov #_g_canRxToCpuConfigure.1, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	movea 0x00000063, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 478
	mulhi 0x00000190, r6, r2
	mov #_g_canRxToCpuConfigureBuffer, r5
	add r2, r5
	shl 0x00000003, r6
	mov #_g_canRxToCpuConfigure.1, r2
	add r6, r2
	ld.w 0x00000004[r2], r6
	shl 0x00000002, r6
	add r6, r5
	ld.w 0x00000000[r7], r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 480
	ld.w 0x00000004[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000004[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 481
	jmp [r31]
.BB.LABEL.21_3:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 482
	jmp [r31]
_SetCanMsgConfigureBufferInvalidData:
	.stack _SetCanMsgConfigureBufferInvalidData = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 484
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 487
	jarl _SuspendAllInterrupts, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 490
	mov r2, r5
	shl 0x00000003, r5
	mov #_g_canRxToCpuConfigure.1, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 491
	st.w r0, 0x00000004[r6]
	add 0x00000001, r2
.BB.LABEL.22_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 488
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_1
.BB.LABEL.22_3:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 493
	movhi HIGHW1(#_g_cpuCanRxQueueWrite.4), r0, r2
	st.h r0, LOWW(#_g_cpuCanRxQueueWrite.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 494
	movhi HIGHW1(#_g_cpuCanRxQueueRead.5), r0, r2
	st.h r0, LOWW(#_g_cpuCanRxQueueRead.5)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 495
	jarl _ResumeAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SetCanMsgConfigureBufferValidData:
	.stack _SetCanMsgConfigureBufferValidData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 498
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 503
	mov r20, r2
	shl 0x00000003, r2
	mov #_g_canRxToCpuConfigure.1, r5
	add r2, r5
	ld.hu 0x00000004[r5], r7
	mov r20, r2
	mulu 0x00000190, r2, r0
	mov #_g_canRxToCpuConfigureBuffer, r6
	add r2, r6
	jarl _CanMsgConfigureSortLittleToBig.1, r31
	add 0x00000001, r20
.BB.LABEL.23_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 501
	cmp 0x00000000, r20
	bz9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; bb11.bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 507
	mov r2, r5
	shl 0x00000003, r5
	mov #_g_canRxToCpuConfigure.1, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	st.w r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.23_5:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 505
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 509
	dispose 0x00000000, 0x00000041, [r31]
_CanMsgConfigureBufferDataIsValid:
	.stack _CanMsgConfigureBufferDataIsValid = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 513
	movhi HIGHW1(#_g_canRxToCpuConfigure.1), r0, r2
	ld.w LOWW(#_g_canRxToCpuConfigure.1)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 519
	cmp 0x00000000, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/vehicle_data_to_mpu/canMsgToMpu.c", 521
	jmp [r31]
	.section .bss, bss
	.align 4
_g_canRxToCpuConfigureBuffer:
	.ds (400)
	.align 4
_g_canRxToCpuConfigure.1:
	.ds (8)
	.align 2
_g_stack.2:
	.ds (202)
	.align 4
_g_cpuCanRxQueue.3:
	.ds (760)
_g_txBuffer:
	.ds (1411)
	.section .data, data
	.align 2
_g_cpuCanRxQueueWrite.4:
	.ds (2)
	.align 2
_g_cpuCanRxQueueRead.5:
	.ds (2)
	.align 2
_g_txBufferCount:
	.ds (2)
	.align 2
_g_txByteOffset:
	.dhw 0x0002
	.section .const, const
.STR.1:
	.db 0x43,0x41,0x4E,0x20,0x49,0x44,0x20,0x30,0x78,0x33,0x36,0x31,0x2C,0x20,0x44,0x4C
	.db 0x43,0x3A,0x20,0x25,0x64,0x2C,0x20,0x44,0x61,0x74,0x61,0x3A,0x20
	.ds (1)
.STR.1502:
	.db 0x30,0x78,0x25,0x30,0x32,0x58,0x20
	.ds (1)
.STR.1503:
	.db 0x0A
	.ds (1)
