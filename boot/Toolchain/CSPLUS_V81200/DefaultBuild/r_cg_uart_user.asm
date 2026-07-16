#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\uart\r_cg_uart_user.c -oDefaultBuild\r_cg_uart_user.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_03b127dad284418b8b7f51f2ed81e20dqvuvqbbe.mpc
#@	compiled at Thu Jul 16 13:41:23 2026

	.file "..\..\Cpu\uart\r_cg_uart_user.c"

	$reg_mode 22
	.dbl_size 4

	.extern _gp_uart4_tx_address
	.extern _g_uart4_tx_count
	.extern _gp_uart5_tx_address
	.extern _g_uart5_tx_count
	.extern _g_debugPrintEndFlag
	.extern _g_debugUartReciveData
	.extern _g_debugUartReciveCount
	.extern _g_debugUartErrorType
	.extern _g_debugUartErrorFlag
	.extern _g_mpuUartErrorType
	.extern _g_mpuUartErrorFlag
	.extern _g_MpuEndFlag
	.public _r_uart4_interrupt_receive
	.public _r_uart4_interrupt_error
	.public _r_uart4_interrupt_send
	.public _r_uart5_interrupt_receive
	.extern _MpuHalUartInterruptCallback
	.public _r_uart5_interrupt_error
	.public _r_uart5_interrupt_send

	.section .text, text
_r_uart4_interrupt_receive:
	.stack _r_uart4_interrupt_receive = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 95
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r5
	ld23.hu 0xFFCE2126[r0], r6
	ld.hu LOWW(#_g_debugUartReciveCount)[r5], r5
	addi 0xFFFFFF9D, r5, r0
	bgt9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 97
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r5
	ld.hu LOWW(#_g_debugUartReciveCount)[r5], r7
	mov #_g_debugUartReciveData, r8
	add r7, r8
	st.b r6, 0x00000000[r8]
	ld.h LOWW(#_g_debugUartReciveCount)[r5], r6
	add 0x00000001, r6
	st.h r6, LOWW(#_g_debugUartReciveCount)[r5]
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 99
	jmp [r31]
_r_uart4_interrupt_error:
	.stack _r_uart4_interrupt_error = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 107
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 112
	movhi 0x0000FFCE, r0, r5
	ld.h 0x00002126[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 115
	ld.bu 0x00002113[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 114
	ld.bu 0x00002113[r5], r7
	andi 0x00000082, r7, r7
	st.b r7, 0x00002113[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 115
	jarl _r_uart4_callback_error.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart4_interrupt_send:
	.stack _r_uart4_interrupt_send = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 124
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 126
	movhi HIGHW1(#_g_uart4_tx_count), r0, r5
	ld.hu LOWW(#_g_uart4_tx_count)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 128
	movhi HIGHW1(#_gp_uart4_tx_address), r0, r5
	ld.w LOWW(#_gp_uart4_tx_address)[r5], r6
	ld.bu 0x00000000[r6], r6
	st23.h r6, 0xFFCE2124[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 129
	ld.w LOWW(#_gp_uart4_tx_address)[r5], r6
	add 0x00000001, r6
	st.w r6, LOWW(#_gp_uart4_tx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 130
	movhi HIGHW1(#_g_uart4_tx_count), r0, r5
	ld.h LOWW(#_g_uart4_tx_count)[r5], r6
	add 0xFFFFFFFF, r6
	st.h r6, LOWW(#_g_uart4_tx_count)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 134
	jarl _r_uart4_callback_sendend.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart4_callback_sendend.1:
	.stack _r_uart4_callback_sendend.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 146
	movhi HIGHW1(#_g_debugPrintEndFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_g_debugPrintEndFlag)[r5]
	jmp [r31]
_r_uart4_callback_error.1:
	.stack _r_uart4_callback_error.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 156
	movhi HIGHW1(#_g_debugUartErrorFlag), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 159
	ld.bu LOWW(#_g_debugUartErrorFlag)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 161
	movhi HIGHW1(#_g_debugUartErrorType), r0, r5
	st.b r6, LOWW(#_g_debugUartErrorType)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 162
	movhi HIGHW1(#_g_debugUartErrorFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_g_debugUartErrorFlag)[r5]
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 165
	jmp [r31]
_r_uart5_interrupt_receive:
	.stack _r_uart5_interrupt_receive = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 173
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 177
	ld23.hu 0xFFCE2166[r0], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 178
	zxb r6
	jarl32 _MpuHalUartInterruptCallback, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart5_interrupt_error:
	.stack _r_uart5_interrupt_error = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 187
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 192
	movhi 0x0000FFCE, r0, r5
	ld.h 0x00002166[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 195
	ld.bu 0x00002153[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 194
	ld.bu 0x00002153[r5], r7
	andi 0x00000082, r7, r7
	st.b r7, 0x00002153[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 195
	jarl _r_uart5_callback_error.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart5_interrupt_send:
	.stack _r_uart5_interrupt_send = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 204
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 206
	movhi HIGHW1(#_g_uart5_tx_count), r0, r5
	ld.hu LOWW(#_g_uart5_tx_count)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 208
	movhi HIGHW1(#_gp_uart5_tx_address), r0, r5
	ld.w LOWW(#_gp_uart5_tx_address)[r5], r6
	ld.bu 0x00000000[r6], r6
	st23.h r6, 0xFFCE2164[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 209
	ld.w LOWW(#_gp_uart5_tx_address)[r5], r6
	add 0x00000001, r6
	st.w r6, LOWW(#_gp_uart5_tx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 210
	movhi HIGHW1(#_g_uart5_tx_count), r0, r5
	ld.h LOWW(#_g_uart5_tx_count)[r5], r6
	add 0xFFFFFFFF, r6
	st.h r6, LOWW(#_g_uart5_tx_count)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 214
	jarl _r_uart5_callback_sendend.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart5_callback_sendend.1:
	.stack _r_uart5_callback_sendend.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 226
	movhi HIGHW1(#_g_MpuEndFlag), r0, r5
	st.b r0, LOWW(#_g_MpuEndFlag)[r5]
	jmp [r31]
_r_uart5_callback_error.1:
	.stack _r_uart5_callback_error.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 236
	movhi HIGHW1(#_g_mpuUartErrorFlag), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 239
	ld.bu LOWW(#_g_mpuUartErrorFlag)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 241
	movhi HIGHW1(#_g_mpuUartErrorType), r0, r5
	st.b r6, LOWW(#_g_mpuUartErrorType)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 242
	movhi HIGHW1(#_g_mpuUartErrorFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_g_mpuUartErrorFlag)[r5]
.BB.LABEL.10_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/uart/r_cg_uart_user.c", 245
	jmp [r31]
