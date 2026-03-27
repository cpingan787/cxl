#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\uart\r_cg_uart_user.c -oDefaultBuild\r_cg_uart_user.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8d4168c97c264996abd064f9a1e106e0nrfmx3dw.jeo
#@	compiled at Fri Mar 27 09:49:59 2026

	.file "..\..\Cpu\uart\r_cg_uart_user.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 200
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	ld23.hu 0xFFCE2126[r0], r5
	ld.hu LOWW(#_g_debugUartReciveCount)[r2], r2
	addi 0xFFFFFF9D, r2, r0
	bgt9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 202
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	ld.hu LOWW(#_g_debugUartReciveCount)[r2], r6
	mov #_g_debugUartReciveData, r7
	add r6, r7
	st.b r5, 0x00000000[r7]
	ld.h LOWW(#_g_debugUartReciveCount)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_debugUartReciveCount)[r2]
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 204
	jmp [r31]
_r_uart4_interrupt_error:
	.stack _r_uart4_interrupt_error = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 212
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 217
	movhi 0x0000FFCE, r0, r2
	ld.h 0x00002126[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 220
	ld.bu 0x00002113[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 219
	ld.bu 0x00002113[r2], r5
	andi 0x00000082, r5, r5
	st.b r5, 0x00002113[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 220
	jarl _r_uart4_callback_error.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart4_interrupt_send:
	.stack _r_uart4_interrupt_send = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 229
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 231
	movhi HIGHW1(#_g_uart4_tx_count), r0, r2
	ld.hu LOWW(#_g_uart4_tx_count)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 233
	movhi HIGHW1(#_gp_uart4_tx_address), r0, r2
	ld.w LOWW(#_gp_uart4_tx_address)[r2], r5
	ld.bu 0x00000000[r5], r5
	st23.h r5, 0xFFCE2124[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 234
	ld.w LOWW(#_gp_uart4_tx_address)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_gp_uart4_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 235
	movhi HIGHW1(#_g_uart4_tx_count), r0, r2
	ld.h LOWW(#_g_uart4_tx_count)[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, LOWW(#_g_uart4_tx_count)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 239
	jarl _r_uart4_callback_sendend.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart4_callback_sendend.1:
	.stack _r_uart4_callback_sendend.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 251
	movhi HIGHW1(#_g_debugPrintEndFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_debugPrintEndFlag)[r2]
	jmp [r31]
_r_uart4_callback_error.1:
	.stack _r_uart4_callback_error.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 261
	movhi HIGHW1(#_g_debugUartErrorFlag), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 264
	ld.bu LOWW(#_g_debugUartErrorFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 266
	movhi HIGHW1(#_g_debugUartErrorType), r0, r2
	st.b r6, LOWW(#_g_debugUartErrorType)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 267
	movhi HIGHW1(#_g_debugUartErrorFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_debugUartErrorFlag)[r2]
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 270
	jmp [r31]
_r_uart5_interrupt_receive:
	.stack _r_uart5_interrupt_receive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 278
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 282
	ld23.hu 0xFFCE2166[r0], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 283
	zxb r6
	jarl _MpuHalUartInterruptCallback, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart5_interrupt_error:
	.stack _r_uart5_interrupt_error = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 292
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 297
	movhi 0x0000FFCE, r0, r2
	ld.h 0x00002166[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 300
	ld.bu 0x00002153[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 299
	ld.bu 0x00002153[r2], r5
	andi 0x00000082, r5, r5
	st.b r5, 0x00002153[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 300
	jarl _r_uart5_callback_error.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart5_interrupt_send:
	.stack _r_uart5_interrupt_send = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 309
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 311
	movhi HIGHW1(#_g_uart5_tx_count), r0, r2
	ld.hu LOWW(#_g_uart5_tx_count)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 313
	movhi HIGHW1(#_gp_uart5_tx_address), r0, r2
	ld.w LOWW(#_gp_uart5_tx_address)[r2], r5
	ld.bu 0x00000000[r5], r5
	st23.h r5, 0xFFCE2164[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 314
	ld.w LOWW(#_gp_uart5_tx_address)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_gp_uart5_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 315
	movhi HIGHW1(#_g_uart5_tx_count), r0, r2
	ld.h LOWW(#_g_uart5_tx_count)[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, LOWW(#_g_uart5_tx_count)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 319
	jarl _r_uart5_callback_sendend.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_r_uart5_callback_sendend.1:
	.stack _r_uart5_callback_sendend.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 328
	jmp [r31]
_r_uart5_callback_error.1:
	.stack _r_uart5_callback_error.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 340
	movhi HIGHW1(#_g_mpuUartErrorFlag), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 343
	ld.bu LOWW(#_g_mpuUartErrorFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 345
	movhi HIGHW1(#_g_mpuUartErrorType), r0, r2
	st.b r6, LOWW(#_g_mpuUartErrorType)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 346
	movhi HIGHW1(#_g_mpuUartErrorFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_mpuUartErrorFlag)[r2]
.BB.LABEL.10_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart_user.c", 349
	jmp [r31]
