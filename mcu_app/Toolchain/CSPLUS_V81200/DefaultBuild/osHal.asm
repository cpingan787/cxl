#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\hal\source\osHal.c -oDefaultBuild\osHal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bf552ea84bab485c84d688bc45fba9bdvcrxtjwd.gwz
#@	compiled at Fri Mar 27 09:51:05 2026

	.file "..\..\Srcode\hal\source\osHal.c"

	$reg_mode 32
	.dbl_size 8

	.public _ulCriticalNesting, 4
	.extern _memset
	.public _delay_us
	.public _my_delay_ms
	.public _get_system_tick
	.public _xQueueCreate
	.public _xQueueSend
	.extern _memcpy
	.public _xQueueSendFromISR
	.public _xQueueReceive
	.public _xSemaphoreCreateMutex
	.public _xSemaphoreCreateRecursiveMutex
	.public _xSemaphoreTake
	.public _xSemaphoreTakeRecursive
	.public _xSemaphoreGive
	.public _xSemaphoreGiveRecursive
	.public _vSemaphoreDelete
	.public _xSemaphoreCreateCounting
	.public _vPortEnterCritical
	.public _vPortExitCritical

	.section .text, text
_OsHalInit.1:
	.stack _OsHalInit.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 13
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 17
	movhi HIGHW1(#_osHalInitFlag.3), r0, r2
	ld.bu LOWW(#_osHalInitFlag.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_1:	; entry.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 24
	mov r20, r2
	mul 0x00000068, r2, r0
	mov #_queue_pool.1, r6
	add r2, r6
	st.w r0, 0x00000064[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 25
	st.w r0, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 26
	st.w r0, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 27
	st.w r0, 0x00000058[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 28
	st.w r0, 0x0000005C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 29
	st.w r0, 0x00000060[r6]
	movea 0x00000050, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 30
	jarl _memset, r31
	add 0x00000001, r20
.BB.LABEL.1_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 22
	cmp 0x00000005, r20
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; bb32.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 35
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_mutex_pool.2, r6
	add r5, r6
	mov 0x00000002, r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 36
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 37
	st.b r0, 0x00000008[r6]
	add 0x00000001, r2
.BB.LABEL.1_6:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 33
	cmp 0x00000008, r2
	bl9 .BB.LABEL.1_5
.BB.LABEL.1_7:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 40
	movhi HIGHW1(#_osHalInitFlag.3), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_osHalInitFlag.3)[r2]
.BB.LABEL.1_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 41
	dispose 0x00000000, 0x00000041, [r31]
_GetQueueHandle.1:
	.stack _GetQueueHandle.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 43
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 47
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	cmp 0x00000005, r6
	bgt9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 52
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 53
	mulhi 0x00000068, r6, r2
	mov #_queue_pool.1, r5
	add r2, r5
	ld.w 0x00000064[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_break_bb30
	mulhi 0x00000068, r6, r2
	mov #_queue_pool.1, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 58
	jmp [r31]
.BB.LABEL.2_4:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 59
	jmp [r31]
_delay_us:
	.stack _delay_us = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 61
	mov 0x00000000, r2
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 68
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 69
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 70
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 71
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 72
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 73
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 74
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 75
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 76
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 77
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 78
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 79
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add 0x00000001, r2
.BB.LABEL.3_2:	; bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 64
	cmp r6, r2
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 82
	jmp [r31]
_my_delay_ms:
	.stack _my_delay_ms = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 85
	jmp [r31]
_get_system_tick:
	.stack _get_system_tick = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 103
	movhi HIGHW1(#_tick.4.get_system_tick), r0, r2
	ld.w LOWW(#_tick.4.get_system_tick)[r2], r10
	addi 0x00000001, r10, r5
	st.w r5, LOWW(#_tick.4.get_system_tick)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 104
	jmp [r31]
_xQueueCreate:
	.stack _xQueueCreate = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 106
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 109
	jarl _OsHalInit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 111
	cmp 0x00000000, r20
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_2:	; entry
	movea 0x00000014, r0, r2
	cmp r2, r20
	bh9 .BB.LABEL.6_9
.BB.LABEL.6_3:	; entry
	cmp 0x00000004, r21
	bh9 .BB.LABEL.6_9
.BB.LABEL.6_4:	; entry.bb81_crit_edge
	mov 0x00000000, r22
	br9 .BB.LABEL.6_8
.BB.LABEL.6_5:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 119
	mov r22, r2
	mul 0x00000068, r2, r0
	mov #_queue_pool.1, r5
	add r2, r5
	ld.w 0x00000064[r5], r2
	cmp 0x00000000, r2
	movea 0x00000064, r5, r2
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 121
	mov r22, r5
	mul 0x00000068, r5, r0
	mov #_queue_pool.1, r6
	add r5, r6
	st.w r21, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 122
	st.w r20, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 123
	st.w r0, 0x00000058[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 124
	st.w r0, 0x0000005C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 125
	st.w r0, 0x00000060[r6]
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 126
	st.w r20, 0x00000000[r2]
	movea 0x00000050, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 129
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 132
	add 0x00000001, r22
	andi 0x000000FF, r22, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.6_7:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	add 0x00000001, r22
.BB.LABEL.6_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 118
	cmp 0x00000005, r22
	bl9 .BB.LABEL.6_5
.BB.LABEL.6_9:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 138
	dispose 0x00000000, 0x00000071, [r31]
_xQueueSend:
	.stack _xQueueSend = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 140
	prepare 0x00000079, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 142
	jarl _GetQueueHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 146
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 147
	movhi HIGHW1(#_printFalg.5.xQueueSend), r0, r20
	ld.bu LOWW(#_printFalg.5.xQueueSend)[r20], r20
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.7_11
.BB.LABEL.7_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 149
	movhi HIGHW1(#_printFalg.5.xQueueSend), r0, r20
	mov 0x00000001, r21
	st.b r21, LOWW(#_printFalg.5.xQueueSend)[r20]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_4:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 154
	jarl _get_system_tick, r31
	mov r10, r23
	br9 .BB.LABEL.7_9
.BB.LABEL.7_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 158
	cmp 0x00000000, r21
	bz9 .BB.LABEL.7_11
.BB.LABEL.7_6:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 163
	cmp 0xFFFFFFFF, r21
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 165
	jarl _get_system_tick, r31
	sub r23, r10
	cmp r21, r10
	bnc9 .BB.LABEL.7_11
.BB.LABEL.7_8:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 171
	jarl _my_delay_ms, r31
.BB.LABEL.7_9:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 157
	ld.w 0x00000060[r22], r2
	ld.w 0x00000054[r22], r5
	cmp r5, r2
	bnc9 .BB.LABEL.7_5
.BB.LABEL.7_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 175
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 177
	ld.w 0x00000050[r22], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 176
	ld.w 0x0000005C[r22], r6
	shl 0x00000002, r6
	add r22, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 177
	mov r20, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 180
	ld.w 0x0000005C[r22], r2
	add 0x00000001, r2
	ld.w 0x00000054[r22], r5
	divu r5, r2, r2
	st.w r2, 0x0000005C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 181
	ld.w 0x00000060[r22], r2
	add 0x00000001, r2
	st.w r2, 0x00000060[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 182
	jarl _vPortExitCritical, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 184
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_11:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 185
	dispose 0x00000000, 0x00000079, [r31]
_xQueueSendFromISR:
	.stack _xQueueSendFromISR = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 187
	prepare 0x00000061, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 189
	jarl _GetQueueHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 193
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 198
	ld.w 0x00000060[r21], r2
	ld.w 0x00000054[r21], r5
	cmp r5, r2
	bnc9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 204
	ld.w 0x00000050[r21], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 203
	ld.w 0x0000005C[r21], r6
	shl 0x00000002, r6
	add r21, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 204
	mov r20, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 207
	ld.w 0x0000005C[r21], r2
	add 0x00000001, r2
	ld.w 0x00000054[r21], r5
	divu r5, r2, r2
	st.w r2, 0x0000005C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 208
	ld.w 0x00000060[r21], r2
	add 0x00000001, r2
	st.w r2, 0x00000060[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 210
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.8_4:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 211
	dispose 0x00000000, 0x00000061, [r31]
_xQueueReceive:
	.stack _xQueueReceive = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 213
	prepare 0x00000079, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 215
	jarl _GetQueueHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 218
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 222
	jarl _get_system_tick, r31
	mov r10, r23
	br9 .BB.LABEL.9_7
.BB.LABEL.9_3:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 226
	cmp 0x00000000, r21
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_4:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 231
	cmp 0xFFFFFFFF, r21
	bz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 233
	jarl _get_system_tick, r31
	sub r23, r10
	cmp r21, r10
	bnc9 .BB.LABEL.9_9
.BB.LABEL.9_6:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 239
	jarl _my_delay_ms, r31
.BB.LABEL.9_7:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 225
	ld.w 0x00000060[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_8:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 243
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 245
	ld.w 0x00000050[r22], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 244
	ld.w 0x00000058[r22], r7
	shl 0x00000002, r7
	add r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 245
	mov r20, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 248
	ld.w 0x00000058[r22], r2
	add 0x00000001, r2
	ld.w 0x00000054[r22], r5
	divu r5, r2, r2
	st.w r2, 0x00000058[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 249
	ld.w 0x00000060[r22], r2
	add 0xFFFFFFFF, r2
	st.w r2, 0x00000060[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 250
	jarl _vPortExitCritical, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 252
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.9_9:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 253
	dispose 0x00000000, 0x00000079, [r31]
_xSemaphoreCreateMutex:
	.stack _xSemaphoreCreateMutex = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 315
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 318
	jarl _OsHalInit.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 321
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_mutex_pool.2, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 323
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 321
	mul 0x0000000C, r2, r0
	mov #_mutex_pool.2, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 324
	st.w r0, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 325
	st.b r0, 0x00000008[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 327
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	add 0x00000001, r2
.BB.LABEL.10_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 320
	cmp 0x00000008, r2
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 333
	dispose 0x00000000, 0x00000001, [r31]
_xSemaphoreCreateRecursiveMutex:
	.stack _xSemaphoreCreateRecursiveMutex = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 335
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 339
	jarl _xSemaphoreCreateMutex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 340
	dispose 0x00000000, 0x00000001, [r31]
_xSemaphoreTake:
	.stack _xSemaphoreTake = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 342
	prepare 0x00000071, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 347
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	ld.w 0x00000000[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 351
	jarl _get_system_tick, r31
	mov r10, r22
	br9 .BB.LABEL.12_7
.BB.LABEL.12_3:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 365
	jarl _vPortExitCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 368
	cmp 0x00000000, r20
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_4:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 373
	cmp 0xFFFFFFFF, r20
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 375
	jarl _get_system_tick, r31
	sub r22, r10
	cmp r20, r10
	bnc9 .BB.LABEL.12_9
.BB.LABEL.12_6:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 381
	jarl _my_delay_ms, r31
.BB.LABEL.12_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 356
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 357
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_8:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 359
	st.w r20, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 360
	st.w r20, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 361
	st.b r20, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 362
	jarl _vPortExitCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 363
	mov r20, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.12_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 383
	dispose 0x00000000, 0x00000071, [r31]
_xSemaphoreTakeRecursive:
	.stack _xSemaphoreTakeRecursive = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 385
	prepare 0x00000061, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 390
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	ld.w 0x00000000[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 395
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 396
	ld.w 0x00000000[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	ld.w 0x00000004[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 398
	ld.b 0x00000008[r21], r20
	add 0x00000001, r20
	st.b r20, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 399
	jarl _vPortExitCritical, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 400
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_5:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 402
	jarl _vPortExitCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 405
	mov r21, r6
	mov r20, r7
	jarl _xSemaphoreTake, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_6:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 406
	dispose 0x00000000, 0x00000061, [r31]
_xSemaphoreGive:
	.stack _xSemaphoreGive = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 408
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 413
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	ld.w 0x00000000[r20], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 418
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 419
	ld.w 0x00000000[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 426
	ld.w 0x00000004[r20], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	jarl _vPortExitCritical, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 445
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.14_5:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 433
	ld.bu 0x00000008[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 434
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000008[r20]
.BB.LABEL.14_7:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 438
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 439
	st.w r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 440
	st.w r0, 0x00000004[r20]
.BB.LABEL.14_9:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 442
	jarl _vPortExitCritical, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 444
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.14_10:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 445
	dispose 0x00000000, 0x00000041, [r31]
_xSemaphoreGiveRecursive:
	.stack _xSemaphoreGiveRecursive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 447
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 450
	jarl _xSemaphoreGive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 451
	dispose 0x00000000, 0x00000001, [r31]
_vSemaphoreDelete:
	.stack _vSemaphoreDelete = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 453
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 457
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 459
	st.w r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 460
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 461
	st.b r0, 0x00000008[r6]
.BB.LABEL.16_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 463
	jmp [r31]
_xSemaphoreCreateCounting:
	.stack _xSemaphoreCreateCounting = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 466
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 470
	jarl _xSemaphoreCreateMutex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 474
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 0
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 475
	st.w r2, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 476
	st.w r0, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 477
	st.b r0, 0x00000008[r10]
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 481
	dispose 0x00000000, 0x00000041, [r31]
_vPortEnterCritical:
	.stack _vPortEnterCritical = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 489
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 492
	movhi HIGHW1(#_ulCriticalNesting), r0, r2
	ld.w LOWW(#_ulCriticalNesting)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_ulCriticalNesting)[r2]
	jmp [r31]
_vPortExitCritical:
	.stack _vPortExitCritical = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 501
	movhi HIGHW1(#_ulCriticalNesting), r0, r2
	ld.w LOWW(#_ulCriticalNesting)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 503
	movhi HIGHW1(#_ulCriticalNesting), r0, r2
	ld.w LOWW(#_ulCriticalNesting)[r2], r5
	add 0xFFFFFFFF, r5
	st.w r5, LOWW(#_ulCriticalNesting)[r2]
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 507
	movhi HIGHW1(#_ulCriticalNesting), r0, r2
	ld.w LOWW(#_ulCriticalNesting)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 509
	ei
.BB.LABEL.19_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/osHal.c", 511
	jmp [r31]
	.section .bss, bss
	.align 4
_queue_pool.1:
	.ds (520)
	.align 4
_mutex_pool.2:
	.ds (96)
	.section .data, data
_osHalInitFlag.3:
	.ds (1)
	.align 4
_ulCriticalNesting:
	.ds (4)
	.align 4
_tick.4.get_system_tick:
	.ds (4)
_printFalg.5.xQueueSend:
	.ds (1)
