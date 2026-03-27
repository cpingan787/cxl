#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\uart\r_cg_uart.c -oDefaultBuild\r_cg_uart.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a4ad922ed926470f9707d277c8d1af4cgg30i0ls.3xe
#@	compiled at Fri Mar 27 09:49:58 2026

	.file "..\..\Cpu\uart\r_cg_uart.c"

	$reg_mode 32
	.dbl_size 8

	.public _g_cg_sync_read, 4
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
	.public _R_UART4_SendStatus
	.public _R_UART5_SendStatus

	.section .text, text
_R_UART4_Create:
	.stack _R_UART4_Create = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 264
	movhi 0x0000FFCE, r0, r2
	st.b r0, 0x0000210E[r2]
	movea 0x00000050, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 287
	st.b r5, 0x00002101[r2]
	movea 0x0000001C, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 288
	st.h r5, 0x00002102[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 289
	st.b r5, 0x00002108[r2]
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 290
	st.b r6, 0x0000210D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 291
	st.b r0, 0x00002109[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 293
	st.b r5, 0x0000210E[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 295
	ld.bu 0x0000210E[r2], r2
	movhi HIGHW1(#_g_cg_sync_read), r0, r5
	st.w r2, LOWW(#_g_cg_sync_read)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 296
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 298
	movhi 0x0000FFC1, r0, r2
	ld.hu 0x00004030[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x00004030[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 299
	ld.hu 0x00004130[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x00004130[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 300
	ld.h 0x00000330[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0x00000330[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 301
	ld.hu 0x00000430[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x00000430[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 302
	ld.hu 0x00000530[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x00000530[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 303
	ld.h 0x00000630[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0x00000630[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 304
	ld.h 0x00000A30[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0x00000A30[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 305
	ld.h 0x00000430[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0x00000430[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 307
	ld.hu 0x00004030[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00004030[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 308
	ld.hu 0x00004130[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00004130[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 309
	ld.h 0x00000330[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00000330[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 310
	ld.hu 0x00000430[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000430[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 311
	ld.hu 0x00000530[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000530[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 312
	ld.hu 0x00000630[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000630[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 313
	ld.h 0x00000430[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00000430[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 314
	ld.hu 0x00000330[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000330[r2]
	jmp [r31]
_R_UART4_Start:
	.stack _R_UART4_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 325
	ld23.b 0xFFCE2120[r0], r2
	ori 0x00000003, r2, r2
	st23.b r2, 0xFFCE2120[r0]
	jmp [r31]
_R_UART4_Stop:
	.stack _R_UART4_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 345
	set1 0x00000007, 0xFFFFB1D2[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 347
	set1 0x00000007, 0xFFFFB1D4[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 349
	set1 0x00000007, 0xFFFFB1D6[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 351
	movhi 0x0000FFCE, r0, r2
	ld.bu 0x00002120[r2], r5
	andi 0x000000FC, r5, r5
	st.b r5, 0x00002120[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 353
	ld.bu 0x0000210E[r2], r5
	movhi HIGHW1(#_g_cg_sync_read), r0, r6
	st.w r5, LOWW(#_g_cg_sync_read)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 354
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 356
	clr1 0x00000004, 0xFFFFB1D3[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 358
	clr1 0x00000004, 0xFFFFB1D5[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 360
	clr1 0x00000004, 0xFFFFB1D7[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 362
	ld.bu 0x0000210E[r2], r2
	st.w r2, LOWW(#_g_cg_sync_read)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 363
	syncp
	jmp [r31]
_R_UART4_Receive:
	.stack _R_UART4_Receive = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 375
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 379
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb16_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_else_bb
	movhi 0x0000FFCE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 385
	tst1 0x00000005, 0x00002112[r2]
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_else_bb.if_break_bb16_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	mov 0x00000000, r10
.BB.LABEL.4_4:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 394
	jmp [r31]
.BB.LABEL.4_5:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 387
	movhi HIGHW1(#_g_uart4_rx_count), r0, r2
	st.h r0, LOWW(#_g_uart4_rx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 388
	movhi HIGHW1(#_g_uart4_rx_length), r0, r2
	st.h r7, LOWW(#_g_uart4_rx_length)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 389
	movhi HIGHW1(#_gp_uart4_rx_address), r0, r2
	st.w r6, LOWW(#_gp_uart4_rx_address)[r2]
	br9 .BB.LABEL.4_3
_R_UART4_Send:
	.stack _R_UART4_Send = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 405
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 409
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.5_5
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 415
	movhi HIGHW1(#_gp_uart4_tx_address), r0, r2
	st.w r6, LOWW(#_gp_uart4_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 416
	movhi HIGHW1(#_g_uart4_tx_count), r0, r2
	st.h r7, LOWW(#_g_uart4_tx_count)[r2]
	movhi 0x0000FFCE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 418
	tst1 0x00000004, 0x00002112[r2]
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_else_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 421
	set1 0x00000007, 0xFFFFB1D2[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 422
	clr1 0x00000004, 0xFFFFB1D3[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 423
	movhi HIGHW1(#_gp_uart4_tx_address), r0, r2
	ld.w LOWW(#_gp_uart4_tx_address)[r2], r5
	ld.bu 0x00000000[r5], r5
	st23.h r5, 0xFFCE2124[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 424
	ld.w LOWW(#_gp_uart4_tx_address)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_gp_uart4_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 425
	movhi HIGHW1(#_g_uart4_tx_count), r0, r2
	ld.h LOWW(#_g_uart4_tx_count)[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, LOWW(#_g_uart4_tx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 427
	clr1 0x00000004, 0xFFFFB1D3[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 428
	clr1 0x00000007, 0xFFFFB1D2[r0]
	mov 0x00000000, r10
.BB.LABEL.5_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 436
	jmp [r31]
_R_UART5_Create:
	.stack _R_UART5_Create = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 446
	movhi 0x0000FFCE, r0, r2
	st.b r0, 0x0000214E[r2]
	movea 0x00000052, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 469
	st.b r5, 0x00002141[r2]
	movea 0x0000001C, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 470
	st.h r5, 0x00002142[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 471
	st.b r5, 0x00002148[r2]
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 472
	st.b r6, 0x0000214D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 473
	st.b r0, 0x00002149[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 475
	st.b r5, 0x0000214E[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 477
	ld.bu 0x0000214E[r2], r2
	movhi HIGHW1(#_g_cg_sync_read), r0, r5
	st.w r2, LOWW(#_g_cg_sync_read)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 478
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 480
	movhi 0x0000FFC1, r0, r2
	ld.hu 0x00004004[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0x00004004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 481
	ld.hu 0x00004104[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 482
	ld.h 0x00000304[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 483
	ld.hu 0x00000404[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0x00000404[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 484
	ld.hu 0x00000504[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0x00000504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 485
	ld.h 0x00000604[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0x00000604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 486
	ld.h 0x00000A04[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0x00000A04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 487
	ld.h 0x00000404[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0x00000404[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 489
	ld.hu 0x00004004[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00004004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 490
	ld.hu 0x00004104[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 491
	ld.h 0x00000304[r2], r5
	ori 0x00000020, r5, r5
	st.h r5, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 492
	ld.hu 0x00000404[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00000404[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 493
	ld.hu 0x00000504[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00000504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 494
	ld.h 0x00000404[r2], r5
	ori 0x00000020, r5, r5
	st.h r5, 0x00000404[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 495
	ld.hu 0x00000304[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00000304[r2]
	jmp [r31]
_R_UART5_Start:
	.stack _R_UART5_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 506
	ld23.b 0xFFCE2160[r0], r2
	ori 0x00000003, r2, r2
	st23.b r2, 0xFFCE2160[r0]
	jmp [r31]
_R_UART5_Stop:
	.stack _R_UART5_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 532
	movhi 0x0000FFCE, r0, r2
	ld.bu 0x00002160[r2], r5
	andi 0x000000FC, r5, r5
	st.b r5, 0x00002160[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 534
	ld.bu 0x0000214E[r2], r5
	movhi HIGHW1(#_g_cg_sync_read), r0, r6
	st.w r5, LOWW(#_g_cg_sync_read)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 535
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 543
	ld.bu 0x0000214E[r2], r2
	st.w r2, LOWW(#_g_cg_sync_read)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 544
	syncp
	jmp [r31]
_R_UART5_Receive:
	.stack _R_UART5_Receive = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 556
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 560
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movhi 0x0000FFCE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 566
	tst1 0x00000005, 0x00002152[r2]
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 568
	movhi HIGHW1(#_g_uart5_rx_count), r0, r2
	st.h r0, LOWW(#_g_uart5_rx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 569
	movhi HIGHW1(#_g_uart5_rx_length), r0, r2
	st.h r7, LOWW(#_g_uart5_rx_length)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 570
	movhi HIGHW1(#_gp_uart5_rx_address), r0, r2
	st.w r6, LOWW(#_gp_uart5_rx_address)[r2]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.9_3:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 579
	jmp [r31]
_R_UART5_Send:
	.stack _R_UART5_Send = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 590
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 594
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 600
	movhi HIGHW1(#_gp_uart5_tx_address), r0, r2
	st.w r6, LOWW(#_gp_uart5_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 601
	movhi HIGHW1(#_g_uart5_tx_count), r0, r2
	st.h r7, LOWW(#_g_uart5_tx_count)[r2]
	movhi 0x0000FFCE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 603
	tst1 0x00000004, 0x00002152[r2]
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_else_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 606
	set1 0x00000007, 0xFFFFB1DA[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 607
	clr1 0x00000004, 0xFFFFB1DB[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 608
	movhi HIGHW1(#_gp_uart5_tx_address), r0, r2
	ld.w LOWW(#_gp_uart5_tx_address)[r2], r5
	ld.bu 0x00000000[r5], r5
	st23.h r5, 0xFFCE2164[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 609
	ld.w LOWW(#_gp_uart5_tx_address)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_gp_uart5_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 610
	movhi HIGHW1(#_g_uart5_tx_count), r0, r2
	ld.h LOWW(#_g_uart5_tx_count)[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, LOWW(#_g_uart5_tx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 612
	clr1 0x00000004, 0xFFFFB1DB[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 613
	clr1 0x00000007, 0xFFFFB1DA[r0]
	mov 0x00000000, r10
.BB.LABEL.10_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 621
	jmp [r31]
_R_UART4_SendStatus:
	.stack _R_UART4_SendStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 624
	movhi 0x0000FFCE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 629
	tst1 0x00000004, 0x00002112[r2]
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 635
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 639
	jmp [r31]
_R_UART5_SendStatus:
	.stack _R_UART5_SendStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 641
	movhi 0x0000FFCE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 645
	tst1 0x00000004, 0x00002152[r2]
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 651
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/uart/r_cg_uart.c", 655
	jmp [r31]
	.section .bss, bss
	.align 4
_g_cg_sync_read:
	.ds (4)
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
