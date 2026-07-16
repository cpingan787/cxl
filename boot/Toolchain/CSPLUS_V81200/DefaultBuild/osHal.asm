#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\SrcCode\osHal.c -oDefaultBuild\osHal.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_92739bedaf9d43028a42ea8fd784c9e00t10jmbz.a2x
#@	compiled at Thu Jul 16 13:41:54 2026

	.file "..\..\SrcCode\osHal.c"

	$reg_mode 22
	.dbl_size 4

	.public _ulCriticalNesting, 4
	.public _delay_us
	.public _my_delay_ms
	.public _get_system_tick
	.public _xQueueCreate
	.extern _memset
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
_delay_us:
	.stack _delay_us = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 12
	mov 0x00000000, r5
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 19
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 20
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 21
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 22
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 23
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 24
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 25
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 26
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 27
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 28
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 29
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 30
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
	add 0x00000001, r5
.BB.LABEL.1_2:	; bb5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 15
	cmp r6, r5
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 33
	jmp [r31]
_my_delay_ms:
	.stack _my_delay_ms = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 36
	jmp [r31]
_get_system_tick:
	.stack _get_system_tick = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 54
	movhi HIGHW1(#_tick.3.get_system_tick), r0, r5
	ld.w LOWW(#_tick.3.get_system_tick)[r5], r10
	addi 0x00000001, r10, r6
	st.w r6, LOWW(#_tick.3.get_system_tick)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 55
	jmp [r31]
_xQueueCreate:
	.stack _xQueueCreate = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 57
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 60
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_2:	; entry
	movea 0x00000014, r0, r5
	cmp r5, r6
	bh9 .BB.LABEL.4_9
.BB.LABEL.4_3:	; entry
	cmp 0x00000004, r7
	bh9 .BB.LABEL.4_9
.BB.LABEL.4_4:	; entry.bb80_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.4_8
.BB.LABEL.4_5:	; bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 68
	mov r25, r5
	mul 0x00000068, r5, r0
	mov #_queue_pool.1, r8
	add r5, r8
	ld.w 0x00000064[r8], r5
	cmp 0x00000000, r5
	movea 0x00000064, r8, r5
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 70
	mov r25, r8
	mul 0x00000068, r8, r0
	mov #_queue_pool.1, r9
	add r8, r9
	st.w r7, 0x00000050[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 71
	st.w r6, 0x00000054[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 72
	st.w r0, 0x00000058[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 73
	st.w r0, 0x0000005C[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 74
	st.w r0, 0x00000060[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 75
	st.w r6, 0x00000000[r5]
	movea 0x00000050, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 78
	mov r9, r6
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 81
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.4_7:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	add 0x00000001, r25
.BB.LABEL.4_8:	; bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 67
	cmp 0x00000005, r25
	bl9 .BB.LABEL.4_5
.BB.LABEL.4_9:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 87
	dispose 0x00000000, 0x00000201, [r31]
_xQueueSend:
	.stack _xQueueSend = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 89
	prepare 0x00000B87, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 91
	mulhi 0x00000068, r6, r5
	mov #_queue_pool.1, r9
	add r5, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 95
	cmp 0x00000000, r9
	mov r6, r25
	mov r8, r26
	mov r7, r27
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	cmp 0x00000000, r27
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb21
	mulhi 0x00000068, r25, r5
	mov #_queue_pool.1, r6
	add r5, r6
	ld.w 0x00000064[r6], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 96
	movhi HIGHW1(#_printFalg.4.xQueueSend), r0, r25
	ld.bu LOWW(#_printFalg.4.xQueueSend)[r25], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.5_12
.BB.LABEL.5_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 100
	movhi HIGHW1(#_printFalg.4.xQueueSend), r0, r25
	mov 0x00000001, r26
	st.b r26, LOWW(#_printFalg.4.xQueueSend)[r25]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000B87, [r31]
.BB.LABEL.5_5:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 107
	jarl _get_system_tick, r31
	mov r10, r28
	br9 .BB.LABEL.5_10
.BB.LABEL.5_6:	; bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 111
	cmp 0x00000000, r26
	bz9 .BB.LABEL.5_12
.BB.LABEL.5_7:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 116
	cmp 0xFFFFFFFF, r26
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 118
	jarl _get_system_tick, r31
	sub r28, r10
	cmp r26, r10
	bnc9 .BB.LABEL.5_12
.BB.LABEL.5_9:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 124
	jarl _my_delay_ms, r31
.BB.LABEL.5_10:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 110
	mulhi 0x00000068, r25, r5
	mov #_queue_pool.1, r6
	add r5, r6
	ld.w 0x00000060[r6], r5
	ld.w 0x00000054[r6], r7
	cmp r7, r5
	movea 0x00000054, r6, r29
	movea 0x00000060, r6, r30
	bnc9 .BB.LABEL.5_6
.BB.LABEL.5_11:	; bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 128
	mulhi 0x00000068, r25, r5
	mov #_queue_pool.1, r25
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 129
	ld.w 0x00000050[r25], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 128
	ld.w 0x0000005C[r25], r6
	shl 0x00000002, r6
	add r25, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 129
	mov r27, r7
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 132
	ld.w 0x0000005C[r25], r5
	add 0x00000001, r5
	ld.w 0x00000000[r29], r6
	divqu r6, r5, r5
	st.w r5, 0x0000005C[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 133
	ld.w 0x00000000[r30], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r30]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 135
	dispose 0x00000000, 0x00000B87, [r31]
.BB.LABEL.5_12:	; bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 136
	dispose 0x00000000, 0x00000B87, [r31]
_xQueueSendFromISR:
	.stack _xQueueSendFromISR = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 138
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 140
	mulhi 0x00000068, r6, r5
	mov #_queue_pool.1, r8
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 143
	cmp 0x00000000, r8
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; bb20
	mulhi 0x00000068, r6, r5
	mov #_queue_pool.1, r8
	add r5, r8
	ld.w 0x00000064[r8], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 148
	mulhi 0x00000068, r6, r5
	mov #_queue_pool.1, r8
	add r5, r8
	ld.w 0x00000060[r8], r5
	ld.w 0x00000054[r8], r9
	cmp r9, r5
	movea 0x00000054, r8, r25
	movea 0x00000060, r8, r26
	bnc9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 153
	mulhi 0x00000068, r6, r5
	mov #_queue_pool.1, r27
	add r5, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 154
	ld.w 0x00000050[r27], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 153
	ld.w 0x0000005C[r27], r6
	shl 0x00000002, r6
	add r27, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 154
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 157
	ld.w 0x0000005C[r27], r5
	add 0x00000001, r5
	ld.w 0x00000000[r25], r6
	divqu r6, r5, r5
	st.w r5, 0x0000005C[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 158
	ld.w 0x00000000[r26], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r26]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 160
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.6_5:	; bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 161
	dispose 0x00000000, 0x00000381, [r31]
_xQueueReceive:
	.stack _xQueueReceive = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 163
	prepare 0x00000387, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 165
	mulhi 0x00000068, r6, r5
	mov #_queue_pool.1, r9
	add r5, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 168
	cmp 0x00000000, r9
	mov r6, r25
	mov r8, r26
	mov r7, r27
	bz9 .BB.LABEL.7_10
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	cmp 0x00000000, r27
	bz9 .BB.LABEL.7_10
.BB.LABEL.7_2:	; bb21
	mulhi 0x00000068, r25, r5
	mov #_queue_pool.1, r6
	add r5, r6
	ld.w 0x00000064[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 172
	jarl _get_system_tick, r31
	mov r10, r28
	br9 .BB.LABEL.7_8
.BB.LABEL.7_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 176
	cmp 0x00000000, r26
	bz9 .BB.LABEL.7_10
.BB.LABEL.7_5:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 181
	cmp 0xFFFFFFFF, r26
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 183
	jarl _get_system_tick, r31
	sub r28, r10
	cmp r26, r10
	bnc9 .BB.LABEL.7_10
.BB.LABEL.7_7:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 189
	jarl _my_delay_ms, r31
.BB.LABEL.7_8:	; bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 175
	mulhi 0x00000068, r25, r5
	mov #_queue_pool.1, r6
	add r5, r6
	ld.w 0x00000060[r6], r5
	cmp 0x00000000, r5
	movea 0x00000060, r6, r29
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_9:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 193
	mulhi 0x00000068, r25, r5
	mov #_queue_pool.1, r25
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 194
	ld.w 0x00000050[r25], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 193
	ld.w 0x00000058[r25], r7
	shl 0x00000002, r7
	add r25, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 194
	mov r27, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 197
	ld.w 0x00000054[r25], r5
	ld.w 0x00000058[r25], r6
	add 0x00000001, r6
	divqu r5, r6, r6
	st.w r6, 0x00000058[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 198
	ld.w 0x00000000[r29], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000000[r29]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 200
	dispose 0x00000000, 0x00000387, [r31]
.BB.LABEL.7_10:	; bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 201
	dispose 0x00000000, 0x00000387, [r31]
_xSemaphoreCreateMutex:
	.stack _xSemaphoreCreateMutex = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 260
	mov 0x00000000, r5
	br9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 264
	mov r5, r6
	mul 0x0000000C, r6, r0
	mov #_mutex_pool.2, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 266
	st.w r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 264
	mul 0x0000000C, r5, r0
	mov #_mutex_pool.2, r10
	add r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 267
	st.w r0, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 268
	st.b r0, 0x00000008[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 270
	jmp [r31]
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	add 0x00000001, r5
.BB.LABEL.8_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 263
	cmp 0x00000008, r5
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 276
	jmp [r31]
_xSemaphoreCreateRecursiveMutex:
	.stack _xSemaphoreCreateRecursiveMutex = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 278
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 282
	jarl _xSemaphoreCreateMutex, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 283
	dispose 0x00000000, 0x00000001, [r31]
_xSemaphoreTake:
	.stack _xSemaphoreTake = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 285
	prepare 0x00000381, 0x00000000
	mov r7, r25
	addi 0x00000000, r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 290
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	ld.w 0x00000000[r26], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 294
	jarl _get_system_tick, r31
	mov r10, r27
	br9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 308
	cmp 0x00000000, r25
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_4:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 313
	cmp 0xFFFFFFFF, r25
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 315
	jarl _get_system_tick, r31
	sub r27, r10
	cmp r25, r10
	bnc9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 321
	jarl _my_delay_ms, r31
.BB.LABEL.10_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 299
	ld.w 0x00000000[r26], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_8:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 301
	st.w r10, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 302
	st.w r10, 0x00000004[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 303
	st.b r10, 0x00000008[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 304
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.10_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 323
	dispose 0x00000000, 0x00000381, [r31]
_xSemaphoreTakeRecursive:
	.stack _xSemaphoreTakeRecursive = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 325
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 330
	cmp 0x00000000, r6
	bz9 .BB.LABEL.11_6
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	ld.w 0x00000000[r6], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.11_6
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 335
	ld.w 0x00000000[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_3:	; bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	ld.w 0x00000004[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 337
	ld.b 0x00000008[r6], r5
	add 0x00000001, r5
	st.b r5, 0x00000008[r6]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 338
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_5:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 342
	jarl _xSemaphoreTake, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_6:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 343
	dispose 0x00000000, 0x00000001, [r31]
_xSemaphoreGive:
	.stack _xSemaphoreGive = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 345
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 350
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.12_9
.BB.LABEL.12_2:	; bb
	ld.w 0x00000000[r6], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 355
	ld.w 0x00000000[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.12_1
.BB.LABEL.12_4:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 361
	ld.w 0x00000004[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.12_1
.BB.LABEL.12_5:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 367
	ld.bu 0x00000008[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 368
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000008[r6]
.BB.LABEL.12_7:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 372
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_8:	; if_break_bb50.bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000001, r10
.BB.LABEL.12_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 378
	jmp [r31]
.BB.LABEL.12_10:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 373
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 374
	st.w r0, 0x00000004[r6]
	br9 .BB.LABEL.12_8
_xSemaphoreGiveRecursive:
	.stack _xSemaphoreGiveRecursive = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 380
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 383
	jarl _xSemaphoreGive, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 384
	dispose 0x00000000, 0x00000001, [r31]
_vSemaphoreDelete:
	.stack _vSemaphoreDelete = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 386
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 390
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 392
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 393
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 394
	st.b r0, 0x00000008[r6]
.BB.LABEL.14_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 396
	jmp [r31]
_xSemaphoreCreateCounting:
	.stack _xSemaphoreCreateCounting = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 399
	prepare 0x00000201, 0x00000000
	mov r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 403
	jarl _xSemaphoreCreateMutex, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 406
	cmp 0x00000000, r10
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 408
	st.w r0, 0x00000000[r10]
.BB.LABEL.15_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 412
	dispose 0x00000000, 0x00000201, [r31]
_vPortEnterCritical:
	.stack _vPortEnterCritical = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 420
	di
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 423
	movhi HIGHW1(#_ulCriticalNesting), r0, r5
	ld.w LOWW(#_ulCriticalNesting)[r5], r6
	add 0x00000001, r6
	st.w r6, LOWW(#_ulCriticalNesting)[r5]
	jmp [r31]
_vPortExitCritical:
	.stack _vPortExitCritical = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 432
	movhi HIGHW1(#_ulCriticalNesting), r0, r5
	ld.w LOWW(#_ulCriticalNesting)[r5], r6
	add 0xFFFFFFFF, r6
	st.w r6, LOWW(#_ulCriticalNesting)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 435
	ld.w LOWW(#_ulCriticalNesting)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 437
	ei
.BB.LABEL.17_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/osHal.c", 439
	jmp [r31]
	.section .bss, bss
	.align 4
_queue_pool.1:
	.ds (520)
	.align 4
_mutex_pool.2:
	.ds (96)
	.section .data, data
	.align 4
_ulCriticalNesting:
	.ds (4)
	.align 4
_tick.3.get_system_tick:
	.ds (4)
_printFalg.4.xQueueSend:
	.ds (1)
