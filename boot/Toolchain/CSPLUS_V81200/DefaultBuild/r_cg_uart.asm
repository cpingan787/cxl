#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\uart\r_cg_uart.c -oDefaultBuild\r_cg_uart.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_167190f583764b06bb3f42587350b3641eyrec5m.ecj
#@	compiled at Thu Jul 16 13:41:22 2026

	.file "..\..\Cpu\uart\r_cg_uart.c"

	$reg_mode 22
	.dbl_size 4

	.public _g_cg_sync_read, 4
	.public _gp_uart1_tx_address, 4
	.public _g_uart1_tx_count, 2
	.public _gp_uart1_rx_address, 4
	.public _g_uart1_rx_count, 2
	.public _g_uart1_rx_length, 2
	.public _gp_uart4_tx_address, 4
	.public _g_uart4_tx_count, 2
	.public _gp_uart4_rx_address, 4
	.public _g_uart4_rx_count, 2
	.public _g_uart4_rx_length, 2
	.public _gp_uart5_tx_address, 4
	.public _g_uart5_tx_count, 2
	.public _gp_uart5_rx_address, 4
	.public _g_uart5_rx_count, 2
	.public _g_uart5_rx_length, 2
	.public _R_UART4_Create
	.public _R_UART4_Start
	.public _R_UART4_Stop
	.public _R_UART4_Receive
	.public _R_UART4_Send
	.public _R_UART5_Create
	.public _R_UART5_Start
	.public _R_UART5_Stop
	.public _R_UART5_Receive
	.public _R_UART5_Send
	.public _GetUart1RxCount
	.public _R_UART4_SendStatus
	.public _GetUart5RxCount
	.public _R_UART5_SendStatus

	.section .text, text
_R_UART4_Create:
	.stack _R_UART4_Create = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 80
	movhi 0x0000FFCE, r0, r5
	st.b r0, 0x0000210E[r5]
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 82
	st.b r6, 0x00002101[r5]
	movea 0x0000001C, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 83
	st.h r6, 0x00002102[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 84
	st.b r6, 0x00002108[r5]
	mov 0x0000000D, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 85
	st.b r7, 0x0000210D[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 86
	st.b r0, 0x00002109[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 88
	st.b r6, 0x0000210E[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 90
	ld.bu 0x0000210E[r5], r5
	movhi HIGHW1(#_g_cg_sync_read), r0, r6
	st.w r5, LOWW(#_g_cg_sync_read)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 91
	syncp
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 93
	movhi 0x0000FFC1, r0, r5
	ld.hu 0x00004030[r5], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00004030[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 94
	ld.hu 0x00004130[r5], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00004130[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 95
	ld.h 0x00000330[r5], r6
	ori 0x00000002, r6, r6
	st.h r6, 0x00000330[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 96
	ld.hu 0x00000430[r5], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00000430[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 97
	ld.hu 0x00000530[r5], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00000530[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 98
	ld.h 0x00000630[r5], r6
	ori 0x00000002, r6, r6
	st.h r6, 0x00000630[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 99
	ld.h 0x00000A30[r5], r6
	ori 0x00000002, r6, r6
	st.h r6, 0x00000A30[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 100
	ld.h 0x00000430[r5], r6
	ori 0x00000002, r6, r6
	st.h r6, 0x00000430[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 102
	ld.hu 0x00004030[r5], r6
	andi 0x0000FFFB, r6, r6
	st.h r6, 0x00004030[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 103
	ld.hu 0x00004130[r5], r6
	andi 0x0000FFFB, r6, r6
	st.h r6, 0x00004130[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 104
	ld.h 0x00000330[r5], r6
	ori 0x00000004, r6, r6
	st.h r6, 0x00000330[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 105
	ld.hu 0x00000430[r5], r6
	andi 0x0000FFFB, r6, r6
	st.h r6, 0x00000430[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 106
	ld.hu 0x00000530[r5], r6
	andi 0x0000FFFB, r6, r6
	st.h r6, 0x00000530[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 107
	ld.hu 0x00000630[r5], r6
	andi 0x0000FFFB, r6, r6
	st.h r6, 0x00000630[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 108
	ld.h 0x00000430[r5], r6
	ori 0x00000004, r6, r6
	st.h r6, 0x00000430[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 109
	ld.hu 0x00000330[r5], r6
	andi 0x0000FFFB, r6, r6
	st.h r6, 0x00000330[r5]
	jmp [r31]
_R_UART4_Start:
	.stack _R_UART4_Start = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 120
	ld23.b 0xFFCE2120[r0], r5
	ori 0x00000003, r5, r5
	st23.b r5, 0xFFCE2120[r0]
	jmp [r31]
_R_UART4_Stop:
	.stack _R_UART4_Stop = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 131
	set1 0x00000007, 0xFFFFB1D2[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 133
	set1 0x00000007, 0xFFFFB1D4[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 135
	set1 0x00000007, 0xFFFFB1D6[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 137
	movhi 0x0000FFCE, r0, r5
	ld.bu 0x00002120[r5], r6
	andi 0x000000FC, r6, r6
	st.b r6, 0x00002120[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 139
	ld.bu 0x0000210E[r5], r6
	movhi HIGHW1(#_g_cg_sync_read), r0, r7
	st.w r6, LOWW(#_g_cg_sync_read)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 140
	syncp
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 142
	clr1 0x00000004, 0xFFFFB1D3[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 144
	clr1 0x00000004, 0xFFFFB1D5[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 146
	clr1 0x00000004, 0xFFFFB1D7[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 148
	ld.bu 0x0000210E[r5], r5
	st.w r5, LOWW(#_g_cg_sync_read)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 149
	syncp
	jmp [r31]
_R_UART4_Receive:
	.stack _R_UART4_Receive = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 161
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 165
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb16_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_else_bb
	movhi 0x0000FFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 171
	tst1 0x00000005, 0x00002112[r5]
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_else_bb.if_break_bb16_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	mov 0x00000000, r10
.BB.LABEL.4_4:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 180
	jmp [r31]
.BB.LABEL.4_5:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 173
	movhi HIGHW1(#_g_uart4_rx_count), r0, r5
	st.h r0, LOWW(#_g_uart4_rx_count)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 174
	movhi HIGHW1(#_g_uart4_rx_length), r0, r5
	st.h r7, LOWW(#_g_uart4_rx_length)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 175
	movhi HIGHW1(#_gp_uart4_rx_address), r0, r5
	st.w r6, LOWW(#_gp_uart4_rx_address)[r5]
	br9 .BB.LABEL.4_3
_R_UART4_Send:
	.stack _R_UART4_Send = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 191
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 195
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.5_5
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 201
	movhi HIGHW1(#_gp_uart4_tx_address), r0, r5
	st.w r6, LOWW(#_gp_uart4_tx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 202
	movhi HIGHW1(#_g_uart4_tx_count), r0, r5
	st.h r7, LOWW(#_g_uart4_tx_count)[r5]
	movhi 0x0000FFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 204
	tst1 0x00000004, 0x00002112[r5]
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_else_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 207
	set1 0x00000007, 0xFFFFB1D2[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 208
	clr1 0x00000004, 0xFFFFB1D3[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 209
	movhi HIGHW1(#_gp_uart4_tx_address), r0, r5
	ld.w LOWW(#_gp_uart4_tx_address)[r5], r6
	ld.bu 0x00000000[r6], r6
	st23.h r6, 0xFFCE2124[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 210
	ld.w LOWW(#_gp_uart4_tx_address)[r5], r6
	add 0x00000001, r6
	st.w r6, LOWW(#_gp_uart4_tx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 211
	movhi HIGHW1(#_g_uart4_tx_count), r0, r5
	ld.h LOWW(#_g_uart4_tx_count)[r5], r6
	add 0xFFFFFFFF, r6
	st.h r6, LOWW(#_g_uart4_tx_count)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 213
	clr1 0x00000004, 0xFFFFB1D3[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 214
	clr1 0x00000007, 0xFFFFB1D2[r0]
	mov 0x00000000, r10
.BB.LABEL.5_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 222
	jmp [r31]
_R_UART5_Create:
	.stack _R_UART5_Create = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 232
	movhi 0x0000FFCE, r0, r5
	st.b r0, 0x0000214E[r5]
	movea 0x00000052, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 234
	st.b r6, 0x00002141[r5]
	movea 0x0000001C, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 235
	st.h r6, 0x00002142[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 236
	st.b r6, 0x00002148[r5]
	mov 0x0000000D, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 237
	st.b r7, 0x0000214D[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 238
	st.b r0, 0x00002149[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 240
	st.b r6, 0x0000214E[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 242
	ld.bu 0x0000214E[r5], r5
	movhi HIGHW1(#_g_cg_sync_read), r0, r6
	st.w r5, LOWW(#_g_cg_sync_read)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 243
	syncp
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 245
	movhi 0x0000FFC1, r0, r5
	ld.h 0x00004004[r5], r6
	ori 0x00000010, r6, r6
	st.h r6, 0x00004004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 246
	ld.hu 0x00004104[r5], r6
	andi 0x0000FFEF, r6, r6
	st.h r6, 0x00004104[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 247
	ld.h 0x00000304[r5], r6
	ori 0x00000010, r6, r6
	st.h r6, 0x00000304[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 248
	ld.hu 0x00000404[r5], r6
	andi 0x0000FFEF, r6, r6
	st.h r6, 0x00000404[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 249
	ld.hu 0x00000504[r5], r6
	andi 0x0000FFEF, r6, r6
	st.h r6, 0x00000504[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 250
	ld.h 0x00000604[r5], r6
	ori 0x00000010, r6, r6
	st.h r6, 0x00000604[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 251
	ld.h 0x00000A04[r5], r6
	ori 0x00000010, r6, r6
	st.h r6, 0x00000A04[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 252
	ld.h 0x00000404[r5], r6
	ori 0x00000010, r6, r6
	st.h r6, 0x00000404[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 254
	ld.hu 0x00004004[r5], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00004004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 255
	ld.hu 0x00004104[r5], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00004104[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 256
	ld.h 0x00000304[r5], r6
	ori 0x00000020, r6, r6
	st.h r6, 0x00000304[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 257
	ld.hu 0x00000404[r5], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000404[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 258
	ld.hu 0x00000504[r5], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000504[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 259
	ld.h 0x00000404[r5], r6
	ori 0x00000020, r6, r6
	st.h r6, 0x00000404[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 260
	ld.hu 0x00000304[r5], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000304[r5]
	jmp [r31]
_R_UART5_Start:
	.stack _R_UART5_Start = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 271
	ld23.b 0xFFCE2160[r0], r5
	ori 0x00000003, r5, r5
	st23.b r5, 0xFFCE2160[r0]
	jmp [r31]
_R_UART5_Stop:
	.stack _R_UART5_Stop = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 282
	set1 0x00000007, 0xFFFFB1DA[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 284
	set1 0x00000007, 0xFFFFB1DC[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 286
	set1 0x00000007, 0xFFFFB1DE[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 288
	movhi 0x0000FFCE, r0, r5
	ld.bu 0x00002160[r5], r6
	andi 0x000000FC, r6, r6
	st.b r6, 0x00002160[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 290
	ld.bu 0x0000214E[r5], r6
	movhi HIGHW1(#_g_cg_sync_read), r0, r7
	st.w r6, LOWW(#_g_cg_sync_read)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 291
	syncp
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 293
	clr1 0x00000004, 0xFFFFB1DB[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 295
	clr1 0x00000004, 0xFFFFB1DD[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 297
	clr1 0x00000004, 0xFFFFB1DF[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 299
	ld.bu 0x0000214E[r5], r5
	st.w r5, LOWW(#_g_cg_sync_read)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 300
	syncp
	jmp [r31]
_R_UART5_Receive:
	.stack _R_UART5_Receive = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 312
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 316
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movhi 0x0000FFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 322
	tst1 0x00000005, 0x00002152[r5]
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 324
	movhi HIGHW1(#_g_uart5_rx_count), r0, r5
	st.h r0, LOWW(#_g_uart5_rx_count)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 325
	movhi HIGHW1(#_g_uart5_rx_length), r0, r5
	st.h r7, LOWW(#_g_uart5_rx_length)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 326
	movhi HIGHW1(#_gp_uart5_rx_address), r0, r5
	st.w r6, LOWW(#_gp_uart5_rx_address)[r5]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.9_3:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 335
	jmp [r31]
_R_UART5_Send:
	.stack _R_UART5_Send = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 346
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 350
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 356
	movhi HIGHW1(#_gp_uart5_tx_address), r0, r5
	st.w r6, LOWW(#_gp_uart5_tx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 357
	movhi HIGHW1(#_g_uart5_tx_count), r0, r5
	st.h r7, LOWW(#_g_uart5_tx_count)[r5]
	movhi 0x0000FFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 359
	tst1 0x00000004, 0x00002152[r5]
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_else_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 362
	set1 0x00000007, 0xFFFFB1DA[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 363
	clr1 0x00000004, 0xFFFFB1DB[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 364
	movhi HIGHW1(#_gp_uart5_tx_address), r0, r5
	ld.w LOWW(#_gp_uart5_tx_address)[r5], r6
	ld.bu 0x00000000[r6], r6
	st23.h r6, 0xFFCE2164[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 365
	ld.w LOWW(#_gp_uart5_tx_address)[r5], r6
	add 0x00000001, r6
	st.w r6, LOWW(#_gp_uart5_tx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 366
	movhi HIGHW1(#_g_uart5_tx_count), r0, r5
	ld.h LOWW(#_g_uart5_tx_count)[r5], r6
	add 0xFFFFFFFF, r6
	st.h r6, LOWW(#_g_uart5_tx_count)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 369
	clr1 0x00000007, 0xFFFFB1DA[r0]
	mov 0x00000000, r10
.BB.LABEL.10_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 377
	jmp [r31]
_GetUart1RxCount:
	.stack _GetUart1RxCount = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 382
	movhi HIGHW1(#_g_uart1_rx_count), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 383
	ld.hu LOWW(#_g_uart1_rx_count)[r5], r10
	jmp [r31]
_R_UART4_SendStatus:
	.stack _R_UART4_SendStatus = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 385
	movhi 0x0000FFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 390
	tst1 0x00000004, 0x00002112[r5]
	movea 0x00000080, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 396
	cmov 0x00000002, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 400
	jmp [r31]
_GetUart5RxCount:
	.stack _GetUart5RxCount = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 404
	movhi HIGHW1(#_g_uart5_rx_count), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 405
	ld.hu LOWW(#_g_uart5_rx_count)[r5], r10
	jmp [r31]
_R_UART5_SendStatus:
	.stack _R_UART5_SendStatus = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 407
	movhi 0x0000FFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 411
	tst1 0x00000004, 0x00002152[r5]
	movea 0x00000080, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 417
	cmov 0x00000002, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart.c", 421
	jmp [r31]
	.section .bss, bss
	.align 4
_g_cg_sync_read:
	.ds (4)
	.align 4
_gp_uart1_tx_address:
	.ds (4)
	.align 2
_g_uart1_tx_count:
	.ds (2)
	.align 4
_gp_uart1_rx_address:
	.ds (4)
	.align 2
_g_uart1_rx_count:
	.ds (2)
	.align 2
_g_uart1_rx_length:
	.ds (2)
	.align 4
_gp_uart4_tx_address:
	.ds (4)
	.align 2
_g_uart4_tx_count:
	.ds (2)
	.align 4
_gp_uart4_rx_address:
	.ds (4)
	.align 2
_g_uart4_rx_count:
	.ds (2)
	.align 2
_g_uart4_rx_length:
	.ds (2)
	.align 4
_gp_uart5_tx_address:
	.ds (4)
	.align 2
_g_uart5_tx_count:
	.ds (2)
	.align 4
_gp_uart5_rx_address:
	.ds (4)
	.align 2
_g_uart5_rx_count:
	.ds (2)
	.align 2
_g_uart5_rx_length:
	.ds (2)
