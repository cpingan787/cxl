#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\APP\Queue_Fifo.c -oDefaultBuild\Queue_Fifo.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_17ef281b621b4a6b9a28a0b6033d10a2dgnlxkge.50y
#@	compiled at Fri Mar 27 09:50:02 2026

	.file "..\..\ASW\APP\Queue_Fifo.c"

	$reg_mode 32
	.dbl_size 8

	.public _my_memcpy
	.public _queue_init
	.public _queue_write
	.public _queue_peek
	.public _queue_read
	.public _queue_process
	.public _queue_is_empty
	.public _queue_is_full
	.public _queue_is_overflow
	.public _queue_get_count
	.public _queue_get_overflow_count
	.public _queue_get_free_space
	.public _queue_clear
	.public _queue_reset_stats
	.public _queue_get_name
	.public _queue_is_initialized
	.public _queue_set_lock
	.public _queue_get_max_size
	.public _queue_get_max_data_size

	.section .text, text
_queue_lock.1:
	.stack _queue_lock.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 7
	jmp [r31]
_queue_unlock.1:
	.stack _queue_unlock.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 17
	jmp [r31]
_my_memcpy:
	.stack _my_memcpy = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 24
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 27
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; entry
	cmp 0x00000000, r8
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; entry.bb41_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 38
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r6, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.3_5:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 36
	cmp r8, r2
	bl9 .BB.LABEL.3_4
.BB.LABEL.3_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 42
	jmp [r31]
_queue_init:
	.stack _queue_init = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 47
	prepare 0x00000071, 0x00000000
	mov r8, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 49
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r22
	movea 0x00000264, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 54
	mov r21, r6
	mov r22, r7
	jarl _my_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 57
	st.h r0, 0x00000240[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 58
	st.h r0, 0x00000242[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 59
	st.h r0, 0x00000244[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 60
	st.h r0, 0x00000246[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 61
	st.b r0, 0x00000248[r21]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 62
	st.b r2, 0x00000249[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 63
	st.w r20, 0x0000025C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 64
	st.w r0, 0x00000260[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 75
	mov r22, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.4_2:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 76
	dispose 0x00000000, 0x00000071, [r31]
_queue_write:
	.stack _queue_write = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 81
	prepare 0x00000079, 0x00000000
	mov r8, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 82
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; bb
	ld.bu 0x00000249[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 86
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_break_bb.bb122_crit_edge
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_6:	; bb42
	addi 0xFFFFFFF0, r20, r0
	bgt9 .BB.LABEL.5_5
.BB.LABEL.5_7:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 90
	mov r22, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 93
	ld.hu 0x00000244[r22], r2
	addi 0xFFFFFFE0, r2, r0
	blt9 .BB.LABEL.5_11
.BB.LABEL.5_8:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 94
	st.b r20, 0x00000248[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 95
	ld.h 0x00000246[r22], r20
	add 0x00000001, r20
	st.h r20, 0x00000246[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 98
	ld.w 0x0000025C[r22], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 99
	mov r22, r6
	jarl [r20], r31
.BB.LABEL.5_10:	; if_break_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 102
	mov r22, r6
	jarl _queue_unlock.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 103
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_11:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 107
	ld.hu 0x00000242[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 108
	mul 0x00000012, r23, r0
	add r22, r23
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _my_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 109
	st.h r20, 0x00000010[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 112
	ld.hu 0x00000242[r22], r2
	add 0x00000001, r2
	andi 0x0000001F, r2, r2
	st.h r2, 0x00000242[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 113
	ld.h 0x00000244[r22], r2
	add 0x00000001, r2
	st.h r2, 0x00000244[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 114
	st.b r0, 0x00000248[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 116
	mov r22, r6
	jarl _queue_unlock.1, r31
	mov 0x00000000, r10
.BB.LABEL.5_12:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 118
	dispose 0x00000000, 0x00000079, [r31]
_queue_peek:
	.stack _queue_peek = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 123
	prepare 0x00000079, 0x00000000
	mov r8, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 124
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_2:	; bb
	cmp 0x00000000, r21
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_3:	; bb
	cmp 0x00000000, r20
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 128
	mov r22, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 130
	ld.hu 0x00000244[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 131
	mov r22, r6
	jarl _queue_unlock.1, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 132
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.6_6:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 135
	ld.hu 0x00000240[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 136
	mul 0x00000012, r23, r0
	add r22, r23
	ld.hu 0x00000010[r23], r8
	mov r21, r6
	mov r23, r7
	jarl _my_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 137
	ld.h 0x00000010[r23], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 139
	mov r22, r6
	jarl _queue_unlock.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 140
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.6_7:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 141
	dispose 0x00000000, 0x00000079, [r31]
_queue_read:
	.stack _queue_read = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 146
	prepare 0x00000079, 0x00000000
	mov r8, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 147
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 151
	mov r22, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 153
	ld.hu 0x00000244[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 154
	mov r22, r6
	jarl _queue_unlock.1, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 155
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_4:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 161
	cmp 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 158
	ld.hu 0x00000240[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 161
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_5:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 162
	mul 0x00000012, r23, r0
	add r22, r23
	ld.hu 0x00000010[r23], r8
	mov r21, r6
	mov r23, r7
	jarl _my_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 163
	ld.h 0x00000010[r23], r2
	st.h r2, 0x00000000[r20]
.BB.LABEL.7_7:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 167
	ld.hu 0x00000240[r22], r2
	add 0x00000001, r2
	andi 0x0000001F, r2, r2
	st.h r2, 0x00000240[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 168
	ld.h 0x00000244[r22], r2
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000244[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 170
	mov r22, r6
	jarl _queue_unlock.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 171
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_8:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 172
	dispose 0x00000000, 0x00000079, [r31]
_queue_process:
	.stack _queue_process = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 177
	prepare 0x00000071, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 180
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 184
	mov r21, r6
	jarl _queue_lock.1, r31
	mov 0x00000000, r22
	br9 .BB.LABEL.8_6
.BB.LABEL.8_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 191
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 188
	ld.hu 0x00000240[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 191
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 192
	mul 0x00000012, r6, r0
	add r21, r6
	ld.hu 0x00000010[r6], r7
	jarl [r20], r31
.BB.LABEL.8_5:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 199
	ld.hu 0x00000240[r21], r2
	add 0x00000001, r2
	andi 0x0000001F, r2, r2
	st.h r2, 0x00000240[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 200
	ld.h 0x00000244[r21], r2
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000244[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 201
	add 0x00000001, r22
.BB.LABEL.8_6:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 187
	ld.hu 0x00000244[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_7:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 204
	mov r21, r6
	jarl _queue_unlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 205
	andi 0x0000FFFF, r22, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.8_8:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 206
	dispose 0x00000000, 0x00000071, [r31]
_queue_is_empty:
	.stack _queue_is_empty = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 211
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 212
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 217
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 218
	ld.hu 0x00000244[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 219
	mov r20, r6
	jarl _queue_unlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 218
	cmp 0x00000000, r21
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 221
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 222
	dispose 0x00000000, 0x00000061, [r31]
_queue_is_full:
	.stack _queue_is_full = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 227
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 228
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 233
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 234
	ld.hu 0x00000244[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 235
	mov r20, r6
	jarl _queue_unlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 234
	addi 0xFFFFFFE1, r21, r0
	setf 0x0000000F, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 237
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.10_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 238
	dispose 0x00000000, 0x00000061, [r31]
_queue_is_overflow:
	.stack _queue_is_overflow = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 243
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 244
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 249
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 253
	ld.bu 0x00000248[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 251
	mov r20, r6
	jarl _queue_unlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 253
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 254
	dispose 0x00000000, 0x00000061, [r31]
_queue_get_count:
	.stack _queue_get_count = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 259
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 260
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 265
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 269
	ld.hu 0x00000244[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 267
	mov r20, r6
	jarl _queue_unlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 269
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.12_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 270
	dispose 0x00000000, 0x00000061, [r31]
_queue_get_overflow_count:
	.stack _queue_get_overflow_count = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 275
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 276
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 281
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 285
	ld.hu 0x00000246[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 283
	mov r20, r6
	jarl _queue_unlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 285
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 286
	dispose 0x00000000, 0x00000061, [r31]
_queue_get_free_space:
	.stack _queue_get_free_space = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 291
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 292
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 297
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 298
	ld.h 0x00000244[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 299
	mov r20, r6
	jarl _queue_unlock.1, r31
	movea 0x00000020, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 298
	sub r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 301
	zxh r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.14_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 302
	dispose 0x00000000, 0x00000061, [r31]
_queue_clear:
	.stack _queue_clear = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 307
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 308
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 312
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 314
	st.h r0, 0x00000240[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 315
	st.h r0, 0x00000242[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 316
	st.h r0, 0x00000244[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 317
	st.b r0, 0x00000248[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 319
	mov r20, r6
	jarl _queue_unlock.1, r31
.BB.LABEL.15_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 320
	dispose 0x00000000, 0x00000041, [r31]
_queue_reset_stats:
	.stack _queue_reset_stats = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 325
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 326
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 330
	mov r20, r6
	jarl _queue_lock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 332
	st.h r0, 0x00000246[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 333
	st.b r0, 0x00000248[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 335
	mov r20, r6
	jarl _queue_unlock.1, r31
.BB.LABEL.16_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 336
	dispose 0x00000000, 0x00000041, [r31]
_queue_get_name:
	.stack _queue_get_name = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 341
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 342
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	movea 0x0000024A, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 343
	jmp [r31]
.BB.LABEL.17_2:	; bb8
	mov #.STR.1, r10
	jmp [r31]
_queue_is_initialized:
	.stack _queue_is_initialized = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 348
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 349
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	ld.bu 0x00000249[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; bb11
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 350
	jmp [r31]
.BB.LABEL.18_3:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 350
	jmp [r31]
_queue_set_lock:
	.stack _queue_set_lock = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 355
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 356
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 357
	st.w r7, 0x00000260[r6]
.BB.LABEL.19_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 359
	jmp [r31]
_queue_get_max_size:
	.stack _queue_get_max_size = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 364
	movea 0x00000020, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 366
	jmp [r31]
_queue_get_max_data_size:
	.stack _queue_get_max_data_size = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 371
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Queue_Fifo.c", 373
	jmp [r31]
	.section .const, const
.STR.1:
	.db 0x4E,0x55,0x4C,0x4C,0x5F,0x50,0x54,0x52
	.ds (1)
