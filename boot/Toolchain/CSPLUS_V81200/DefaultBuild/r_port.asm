#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\uart\r_port.c -oDefaultBuild\r_port.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_57da99e1c2864795a3369a9a2e2d4dcaycndmutx.ufg
#@	compiled at Thu Jul 16 13:41:24 2026

	.file "..\..\Cpu\uart\r_port.c"

	$reg_mode 22
	.dbl_size 4

	.public _R_PORT_SetGpioOutput
	.public _R_PORT_ToggleGpioOutput
	.public _R_PORT_SetGpioInput
	.public _R_PORT_SetGpioHighZ
	.public _R_PORT_SetAltFunc
	.public _R_PORT_GetLevel
	.public _R_PORT_GetPort
	.public _R_PORT_SetOpenDrain
	.public _R_PORT_SetPushPull
	.public _R_PORT_ConnectPullUp
	.public _R_PORT_DisconnectPullUp
	.public _R_PORT_ConnectPullDown
	.public _R_PORT_DisconnectPullDown

	.section .text, text
_R_PORT_SetGpioOutput:
	.stack _R_PORT_SetGpioOutput = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 78
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 80
	shl r7, r5
	mov r6, r9
	shl 0x00000006, r9
	mov #_PortList.1, r10
	add r9, r10
	ld.w 0x00000000[r10], r9
	cmp 0x00000000, r8
	ld.h 0x00000000[r9], r8
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 82
	not r5, r5
	and r5, r8
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 86
	or r5, r8
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	st.h r8, 0x00000000[r9]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 88
	shl r7, r5
	not r5, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x00000008[r7], r6
	ld.h 0x00000000[r6], r8
	and r5, r8
	st.h r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 89
	ld.w 0x0000000C[r7], r6
	ld.h 0x00000000[r6], r7
	and r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_ToggleGpioOutput:
	.stack _R_PORT_ToggleGpioOutput = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 99
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 101
	shl r7, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_SetGpioInput:
	.stack _R_PORT_SetGpioInput = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 111
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 113
	shl r7, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x00000008[r7], r6
	ld.h 0x00000000[r6], r8
	or r5, r8
	st.h r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 114
	ld.w 0x00000020[r7], r6
	ld.h 0x00000000[r6], r8
	or r5, r8
	st.h r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 115
	not r5, r5
	ld.w 0x0000000C[r7], r6
	ld.h 0x00000000[r6], r7
	and r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_SetGpioHighZ:
	.stack _R_PORT_SetGpioHighZ = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 125
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 127
	shl r7, r5
	not r5, r7
	shl 0x00000006, r6
	mov #_PortList.1, r8
	add r6, r8
	ld.w 0x00000020[r8], r6
	ld.h 0x00000000[r6], r9
	and r7, r9
	st.h r9, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 128
	ld.w 0x00000008[r8], r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_SetAltFunc:
	.stack _R_PORT_SetAltFunc = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 140
	cmp 0x00000006, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 142
	bh17 .BB.LABEL.5_14
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	mov 0x00000001, r5
	shl r7, r5
	shl 0x00000002, r8
	jmp #.SWITCH.LABEL.5_20[r8]
.SWITCH.LABEL.5_20:
	jr .BB.LABEL.5_2
	jr .BB.LABEL.5_4
	jr .BB.LABEL.5_7
	jr .BB.LABEL.5_8
	jr .BB.LABEL.5_9
	jr .BB.LABEL.5_10
	jr .BB.LABEL.5_11
.SWITCH.LABEL.5_20.END:
.BB.LABEL.5_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 145
	not r5, r5
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r10
	add r8, r10
	ld.w 0x00000018[r10], r8
	ld.h 0x00000000[r8], r11
	and r5, r11
.BB.LABEL.5_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	st.h r11, 0x00000000[r8]
	ld.w 0x00000014[r10], r8
	ld.h 0x00000000[r8], r11
	and r5, r11
	jr .BB.LABEL.5_12
.BB.LABEL.5_4:	; switch_clause_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 151
	not r5, r8
	mov r6, r10
	shl 0x00000006, r10
	mov #_PortList.1, r11
	add r10, r11
	ld.w 0x00000018[r11], r10
	ld.h 0x00000000[r10], r12
	and r8, r12
	st.h r12, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 152
	ld.w 0x00000014[r11], r10
	ld.h 0x00000000[r10], r12
	and r8, r12
	st.h r12, 0x00000000[r10]
.BB.LABEL.5_5:	; switch_clause_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	ld.w 0x00000010[r11], r8
.BB.LABEL.5_6:	; switch_clause_bb35
	ld.h 0x00000000[r8], r10
	or r5, r10
	br9 .BB.LABEL.5_13
.BB.LABEL.5_7:	; switch_clause_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 157
	not r5, r8
	mov r6, r10
	shl 0x00000006, r10
	mov #_PortList.1, r11
	add r10, r11
	ld.w 0x00000018[r11], r10
	ld.h 0x00000000[r10], r12
	and r8, r12
	st.h r12, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 158
	ld.w 0x00000014[r11], r10
	ld.h 0x00000000[r10], r12
	or r5, r12
	st.h r12, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 159
	ld.w 0x00000010[r11], r5
	ld.h 0x00000000[r5], r10
	and r8, r10
	st.h r10, 0x00000000[r5]
	br9 .BB.LABEL.5_14
.BB.LABEL.5_8:	; switch_clause_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 163
	not r5, r8
	mov r6, r10
	shl 0x00000006, r10
	mov #_PortList.1, r11
	add r10, r11
	ld.w 0x00000018[r11], r10
	ld.h 0x00000000[r10], r12
	and r8, r12
	st.h r12, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 164
	ld.w 0x00000014[r11], r8
	ld.h 0x00000000[r8], r10
	or r5, r10
	st.h r10, 0x00000000[r8]
	br9 .BB.LABEL.5_5
.BB.LABEL.5_9:	; switch_clause_bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 169
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r10
	add r8, r10
	ld.w 0x00000018[r10], r8
	ld.h 0x00000000[r8], r11
	or r5, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 170
	not r5, r5
	br9 .BB.LABEL.5_3
.BB.LABEL.5_10:	; switch_clause_bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 175
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r10
	add r8, r10
	ld.w 0x00000018[r10], r8
	ld.h 0x00000000[r8], r11
	or r5, r11
	st.h r11, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 176
	not r5, r8
	ld.w 0x00000014[r10], r11
	ld.h 0x00000000[r11], r12
	and r8, r12
	st.h r12, 0x00000000[r11]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 177
	ld.w 0x00000010[r10], r8
	br9 .BB.LABEL.5_6
.BB.LABEL.5_11:	; switch_clause_bb190
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 181
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r10
	add r8, r10
	ld.w 0x00000018[r10], r8
	ld.h 0x00000000[r8], r11
	or r5, r11
	st.h r11, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 182
	ld.w 0x00000014[r10], r8
	ld.h 0x00000000[r8], r11
	or r5, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 183
	not r5, r5
.BB.LABEL.5_12:	; switch_clause_bb190
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	st.h r11, 0x00000000[r8]
	ld.w 0x00000010[r10], r8
	ld.h 0x00000000[r8], r10
	and r5, r10
.BB.LABEL.5_13:	; switch_clause_bb190
	st.h r10, 0x00000000[r8]
.BB.LABEL.5_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 190
	cmp 0x00000001, r9
	bz9 .BB.LABEL.5_17
.BB.LABEL.5_15:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.5_19
.BB.LABEL.5_16:	; switch_clause_bb223
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 193
	shl r7, r5
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r9
	add r8, r9
	ld.w 0x00000008[r9], r8
	ld.h 0x00000000[r8], r9
	or r5, r9
	br9 .BB.LABEL.5_18
.BB.LABEL.5_17:	; switch_clause_bb234
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 197
	shl r7, r5
	not r5, r5
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r9
	add r8, r9
	ld.w 0x00000008[r9], r8
	ld.h 0x00000000[r8], r9
	and r5, r9
.BB.LABEL.5_18:	; switch_clause_bb234
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 0
	st.h r9, 0x00000000[r8]
.BB.LABEL.5_19:	; switch_break_bb246
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 205
	shl r7, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x0000000C[r7], r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_GetLevel:
	.stack _R_PORT_GetLevel = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 217
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 222
	shl r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 221
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x00000024[r7], r6
	ld.h 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 222
	and r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 230
	andi 0x0000FFFF, r6, r0
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 232
	jmp [r31]
_R_PORT_GetPort:
	.stack _R_PORT_GetPort = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 240
	shl 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 244
	mov #_PortList.1, r5
	add r6, r5
	ld.w 0x00000024[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 246
	ld.hu 0x00000000[r5], r10
	jmp [r31]
_R_PORT_SetOpenDrain:
	.stack _R_PORT_SetOpenDrain = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 254
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 258
	shl r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 257
	mov r6, r7
	shl 0x00000006, r7
	mov #_PortList.1, r8
	add r7, r8
	ld.w 0x00000030[r8], r7
	ld.w 0x00000000[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 258
	or r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 257
	movea 0x00000030, r8, r5
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 259
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r9
	add r8, r9
	ld.w 0x0000003C[r9], r8
	movea 0x000000A5, r0, r10
	st.w r10, 0x00000000[r8]
	ld.w 0x00000000[r5], r8
	st.w r7, 0x00000000[r8]
	not r7, r8
	ld.w 0x00000000[r5], r10
	st.w r8, 0x00000000[r10]
	ld.w 0x00000000[r5], r8
	st.w r7, 0x00000000[r8]
	ld.w 0x00000038[r9], r8
	ld.w 0x00000000[r8], r8
	cmp 0x00000001, r8
	bz9 .BB.LABEL.8_1
.BB.LABEL.8_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 260
	jmp [r31]
_R_PORT_SetPushPull:
	.stack _R_PORT_SetPushPull = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 269
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 273
	shl r7, r5
	not r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 272
	mov r6, r8
	shl 0x00000006, r8
	mov #_PortList.1, r9
	add r8, r9
	ld.w 0x00000030[r9], r8
	ld.w 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 273
	and r8, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 272
	movea 0x00000030, r9, r9
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 274
	mov r6, r10
	shl 0x00000006, r10
	mov #_PortList.1, r11
	add r10, r11
	ld.w 0x0000003C[r11], r10
	movea 0x000000A5, r0, r12
	st.w r12, 0x00000000[r10]
	ld.w 0x00000000[r9], r10
	st.w r7, 0x00000000[r10]
	not r8, r10
	or r5, r10
	ld.w 0x00000000[r9], r12
	st.w r10, 0x00000000[r12]
	ld.w 0x00000000[r9], r10
	st.w r7, 0x00000000[r10]
	ld.w 0x00000038[r11], r10
	ld.w 0x00000000[r10], r10
	cmp 0x00000001, r10
	bz9 .BB.LABEL.9_1
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 275
	jmp [r31]
_R_PORT_ConnectPullUp:
	.stack _R_PORT_ConnectPullUp = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 284
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 286
	shl r7, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x0000002C[r7], r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_DisconnectPullUp:
	.stack _R_PORT_DisconnectPullUp = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 296
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 298
	shl r7, r5
	not r5, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x0000002C[r7], r6
	ld.h 0x00000000[r6], r7
	and r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_ConnectPullDown:
	.stack _R_PORT_ConnectPullDown = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 307
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 309
	shl r7, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x00000028[r7], r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
_R_PORT_DisconnectPullDown:
	.stack _R_PORT_DisconnectPullDown = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 319
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_port.c", 321
	shl r7, r5
	shl 0x00000006, r6
	mov #_PortList.1, r7
	add r6, r7
	ld.w 0x00000028[r7], r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	jmp [r31]
	.section .const, const
	.align 4
_PortList.1:
	.dw 0xFFC10000
	.dw 0xFFC10700
	.dw 0xFFC10300
	.dw 0xFFC10400
	.dw 0xFFC10500
	.dw 0xFFC10600
	.dw 0xFFC10A00
	.dw 0xFFC14200
	.dw 0xFFC14000
	.dw 0xFFC10200
	.dw 0xFFC14400
	.dw 0xFFC14300
	.dw 0xFFC14500
	.dw 0xFFC14600
	.dw 0xFFC14B00
	.dw 0xFFC14C00
	.dw 0xFFC10004
	.dw 0xFFC10704
	.dw 0xFFC10304
	.dw 0xFFC10404
	.dw 0xFFC10504
	.dw 0xFFC10604
	.ds (4)
	.ds (4)
	.dw 0xFFC14004
	.dw 0xFFC10204
	.dw 0xFFC14404
	.dw 0xFFC14304
	.dw 0xFFC14504
	.dw 0xFFC14604
	.dw 0xFFC14B04
	.dw 0xFFC14C04
	.dw 0xFFC10020
	.dw 0xFFC10720
	.dw 0xFFC10320
	.dw 0xFFC10420
	.dw 0xFFC10520
	.dw 0xFFC10620
	.ds (4)
	.ds (4)
	.dw 0xFFC14020
	.dw 0xFFC10220
	.dw 0xFFC14420
	.dw 0xFFC14320
	.dw 0xFFC14520
	.ds (4)
	.dw 0xFFC14B20
	.dw 0xFFC14C20
	.dw 0xFFC10024
	.dw 0xFFC10724
	.dw 0xFFC10324
	.dw 0xFFC10424
	.dw 0xFFC10524
	.dw 0xFFC10624
	.ds (4)
	.ds (4)
	.dw 0xFFC14024
	.dw 0xFFC10224
	.dw 0xFFC14424
	.dw 0xFFC14324
	.dw 0xFFC14524
	.ds (4)
	.dw 0xFFC14B24
	.dw 0xFFC14C24
	.dw 0xFFC10028
	.dw 0xFFC10728
	.dw 0xFFC10328
	.dw 0xFFC10428
	.dw 0xFFC10528
	.dw 0xFFC10628
	.dw 0xFFC10A28
	.dw 0xFFC14228
	.dw 0xFFC14028
	.dw 0xFFC10228
	.dw 0xFFC14428
	.dw 0xFFC14328
	.dw 0xFFC14528
	.dw 0xFFC14628
	.dw 0xFFC14B28
	.dw 0xFFC14C28
	.dw 0xFFC1002C
	.dw 0xFFC1072C
	.dw 0xFFC1032C
	.dw 0xFFC1042C
	.dw 0xFFC1052C
	.dw 0xFFC1062C
	.dw 0xFFC10A2C
	.dw 0xFFC1422C
	.dw 0xFFC1402C
	.dw 0xFFC1022C
	.dw 0xFFC1442C
	.dw 0xFFC1432C
	.dw 0xFFC1452C
	.dw 0xFFC1462C
	.dw 0xFFC14B2C
	.dw 0xFFC14C2C
	.dw 0xFFC10030
	.dw 0xFFC10730
	.dw 0xFFC10330
	.dw 0xFFC10430
	.dw 0xFFC10530
	.dw 0xFFC10630
	.ds (4)
	.ds (4)
	.dw 0xFFC14030
	.dw 0xFFC10230
	.dw 0xFFC14430
	.dw 0xFFC14330
	.dw 0xFFC14530
	.dw 0xFFC14630
	.dw 0xFFC14B30
	.dw 0xFFC14C30
	.dw 0xFFC10048
	.dw 0xFFC10748
	.dw 0xFFC10348
	.dw 0xFFC10448
	.dw 0xFFC10548
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0xFFC14048
	.dw 0xFFC10248
	.dw 0xFFC14448
	.dw 0xFFC14348
	.dw 0xFFC14548
	.dw 0xFFC14648
	.dw 0xFFC14B48
	.dw 0xFFC14C48
	.dw 0xFFC10050
	.dw 0xFFC10750
	.dw 0xFFC10350
	.dw 0xFFC10450
	.dw 0xFFC10550
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0xFFC14050
	.dw 0xFFC10250
	.dw 0xFFC14450
	.dw 0xFFC14350
	.dw 0xFFC14550
	.dw 0xFFC14650
	.dw 0xFFC14B50
	.dw 0xFFC14C50
	.dw 0xFFC100C8
	.dw 0xFFC107C8
	.dw 0xFFC103C8
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0xFFC140C8
	.dw 0xFFC102C8
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0xFFC100CC
	.dw 0xFFC107CC
	.dw 0xFFC103CC
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0xFFC140CC
	.dw 0xFFC102CC
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
