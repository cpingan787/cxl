#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\iic\r_cg_riic_user.c -oDefaultBuild\r_cg_riic_user.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b18f2c6681d8466da06dab50e2e8261exqmiry2x.udu
#@	compiled at Fri Mar 27 09:49:57 2026

	.file "..\..\Cpu\iic\r_cg_riic_user.c"

	$reg_mode 32
	.dbl_size 8

	.extern _g_riic0_mode_flag
	.extern _g_riic0_state
	.extern _g_riic0_slave_address
	.extern _gp_riic0_tx_address
	.extern _g_riic0_tx_count
	.extern _gp_riic0_rx_address
	.extern _g_riic0_rx_count
	.extern _g_riic0_rx_length
	.extern _g_i2cSendEndFlag
	.extern _g_i2cReciveEndFlag
	.extern _g_i2cReciveErrorFlag
	.public _r_riic0_transmit_interrupt
	.public _r_riic0_transmitend_interrupt
	.public _r_riic0_receive_interrupt
	.public _r_riic0_error_interrupt

	.section .text, text
_r_riic0_transmit_interrupt:
	.stack _r_riic0_transmit_interrupt = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 75
	movhi HIGHW1(#_g_riic0_mode_flag), r0, r2
	ld.bu LOWW(#_g_riic0_mode_flag)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 77
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 79
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	ld.h LOWW(#_g_riic0_slave_address)[r2], r2
	add r2, r2
	br9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 82
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_4:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 87
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 89
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	ld.hu LOWW(#_g_riic0_slave_address)[r2], r2
.BB.LABEL.1_6:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	zxb r2
	movhi 0x0000FFCA, r0, r5
	st.w r2, 0x0000003C[r5]
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000005, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 135
	jmp [r31]
.BB.LABEL.1_7:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 92
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000005, r2
	bnz17 .BB.LABEL.1_23
.BB.LABEL.1_8:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 94
	movhi HIGHW1(#_g_riic0_tx_count), r0, r2
	ld.hu LOWW(#_g_riic0_tx_count)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 96
	movhi HIGHW1(#_gp_riic0_tx_address), r0, r2
	ld.w LOWW(#_gp_riic0_tx_address)[r2], r5
	ld.bu 0x00000000[r5], r5
	movhi 0x0000FFCA, r0, r6
	st.w r5, 0x0000003C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 97
	ld.w LOWW(#_gp_riic0_tx_address)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_gp_riic0_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 98
	movhi HIGHW1(#_g_riic0_tx_count), r0, r2
	ld.h LOWW(#_g_riic0_tx_count)[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, LOWW(#_g_riic0_tx_count)[r2]
	jmp [r31]
.BB.LABEL.1_10:	; if_else_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 102
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000006, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	jmp [r31]
.BB.LABEL.1_11:	; if_else_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 106
	movhi HIGHW1(#_g_riic0_mode_flag), r0, r2
	ld.bu LOWW(#_g_riic0_mode_flag)[r2], r2
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.1_23
.BB.LABEL.1_12:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 108
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 110
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	ld.h LOWW(#_g_riic0_slave_address)[r2], r2
	add r2, r2
	ori 0x00000001, r2, r2
	zxb r2
.BB.LABEL.1_14:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi 0x0000FFCA, r0, r5
	st.w r2, 0x0000003C[r5]
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000008, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 135
	jmp [r31]
.BB.LABEL.1_15:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 113
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	ld.hu LOWW(#_g_riic0_slave_address)[r2], r2
	shr 0x00000007, r2
	ori 0x000000F0, r2, r2
	andi 0x000000F6, r2, r2
	movhi 0x0000FFCA, r0, r5
	st.w r2, 0x0000003C[r5]
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000004, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 135
	jmp [r31]
.BB.LABEL.1_17:	; if_else_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 118
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 120
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	ld.hu LOWW(#_g_riic0_slave_address)[r2], r2
	zxb r2
	movhi 0x0000FFCA, r0, r5
	st.w r2, 0x0000003C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 121
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x0000000E, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	jmp [r31]
.BB.LABEL.1_19:	; if_else_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 123
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 125
	movhi 0x0000FFCA, r0, r2
	ld.w 0x0000001C[r2], r5
	ori 0x00000004, r5, r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 127
	ld.w 0x00000004[r2], r5
	ori 0x00000004, r5, r5
	st.w r5, 0x00000004[r2]
	jmp [r31]
.BB.LABEL.1_21:	; if_else_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 129
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 131
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	ld.hu LOWW(#_g_riic0_slave_address)[r2], r2
	shr 0x00000007, r2
	ori 0x000000F1, r2, r2
	andi 0x000000F7, r2, r2
	br9 .BB.LABEL.1_14
.BB.LABEL.1_23:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 135
	jmp [r31]
_r_riic0_transmitend_interrupt:
	.stack _r_riic0_transmitend_interrupt = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 145
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 147
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r5
	mov 0xFFFFFFF7, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 148
	ld.w 0x00000004[r2], r5
	ori 0x00000008, r5, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 149
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000007, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 151
	jmp [r31]
_r_riic0_receive_interrupt:
	.stack _r_riic0_receive_interrupt = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 159
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 164
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 166
	movhi HIGHW1(#_g_riic0_rx_length), r0, r2
	ld.hu LOWW(#_g_riic0_rx_length)[r2], r2
	cmp 0x00000002, r2
	bh9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 168
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000010[r2], r5
	ori 0x00000040, r5, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 169
	movhi HIGHW1(#_g_riic0_rx_length), r0, r2
	ld.hu LOWW(#_g_riic0_rx_length)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 171
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000010[r2], r5
	ori 0x00000010, r5, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 172
	ld.w 0x00000010[r2], r5
	ori 0x00000008, r5, r5
	st.w r5, 0x00000010[r2]
.BB.LABEL.3_4:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 175
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000040[r2], r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 177
	movhi HIGHW1(#_g_riic0_rx_length), r0, r2
	ld.hu LOWW(#_g_riic0_rx_length)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x0000000A, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 226
	dispose 0x00000004, 0x00000000, [r31]
.BB.LABEL.3_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 183
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000009, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	dispose 0x00000004, 0x00000000, [r31]
.BB.LABEL.3_7:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 186
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_8:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 188
	movhi HIGHW1(#_g_riic0_rx_length), r0, r2
	ld.hu LOWW(#_g_riic0_rx_length)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 189
	movhi HIGHW1(#_g_riic0_rx_count), r0, r5
	ld.hu LOWW(#_g_riic0_rx_count)[r5], r5
	cmp r2, r5
	bnc17 .BB.LABEL.3_17
.BB.LABEL.3_9:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 191
	movhi HIGHW1(#_g_riic0_rx_length), r0, r2
	ld.hu LOWW(#_g_riic0_rx_length)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 192
	movhi HIGHW1(#_g_riic0_rx_count), r0, r5
	ld.hu LOWW(#_g_riic0_rx_count)[r5], r5
	addi 0xFFFFFFFD, r2, r6
	cmp r6, r5
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 194
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000010[r2], r5
	ori 0x00000040, r5, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 195
	movhi HIGHW1(#_gp_riic0_rx_address), r0, r5
	ld.w LOWW(#_gp_riic0_rx_address)[r5], r6
	ld.w 0x00000040[r2], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 196
	ld.w LOWW(#_gp_riic0_rx_address)[r5], r2
	add 0x00000001, r2
	st.w r2, LOWW(#_gp_riic0_rx_address)[r5]
	br9 .BB.LABEL.3_14
.BB.LABEL.3_11:	; if_else_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 199
	movhi HIGHW1(#_g_riic0_rx_count), r0, r5
	ld.hu LOWW(#_g_riic0_rx_count)[r5], r5
	add 0xFFFFFFFE, r2
	cmp r2, r5
	bnz9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 201
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000010[r2], r5
	ori 0x00000010, r5, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 202
	ld.w 0x00000010[r2], r5
	ori 0x00000008, r5, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 203
	movhi HIGHW1(#_gp_riic0_rx_address), r0, r5
	ld.w LOWW(#_gp_riic0_rx_address)[r5], r6
	ld.w 0x00000040[r2], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 204
	ld.w LOWW(#_gp_riic0_rx_address)[r5], r2
	add 0x00000001, r2
	st.w r2, LOWW(#_gp_riic0_rx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 205
	movhi HIGHW1(#_g_riic0_rx_count), r0, r2
	ld.h LOWW(#_g_riic0_rx_count)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_riic0_rx_count)[r2]
	br9 .BB.LABEL.3_5
.BB.LABEL.3_13:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 210
	movhi HIGHW1(#_gp_riic0_rx_address), r0, r2
	ld.w LOWW(#_gp_riic0_rx_address)[r2], r5
	movhi 0x0000FFCA, r0, r6
	ld.w 0x00000040[r6], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 211
	ld.w LOWW(#_gp_riic0_rx_address)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_gp_riic0_rx_address)[r2]
.BB.LABEL.3_14:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi HIGHW1(#_g_riic0_rx_count), r0, r2
	ld.h LOWW(#_g_riic0_rx_count)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_riic0_rx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 226
	dispose 0x00000004, 0x00000000, [r31]
.BB.LABEL.3_15:	; if_else_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 216
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.3_17
.BB.LABEL.3_16:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 218
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r5
	mov 0xFFFFFFF7, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 219
	ld.w 0x00000004[r2], r5
	ori 0x00000008, r5, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 220
	movhi HIGHW1(#_gp_riic0_rx_address), r0, r5
	ld.w LOWW(#_gp_riic0_rx_address)[r5], r6
	ld.w 0x00000040[r2], r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 221
	ld.w LOWW(#_gp_riic0_rx_address)[r5], r6
	add 0x00000001, r6
	st.w r6, LOWW(#_gp_riic0_rx_address)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 222
	movhi HIGHW1(#_g_riic0_rx_count), r0, r5
	ld.h LOWW(#_g_riic0_rx_count)[r5], r6
	add 0x00000001, r6
	st.h r6, LOWW(#_g_riic0_rx_count)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 223
	ld.w 0x00000010[r2], r5
	movea 0xFFFFFFBF, r0, r6
	and r6, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 224
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x0000000B, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
.BB.LABEL.3_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 226
	dispose 0x00000004, 0x00000000, [r31]
_r_riic0_error_interrupt:
	.stack _r_riic0_error_interrupt = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 234
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 238
	movhi 0x0000FFCA, r0, r2
	ld.w 0x0000001C[r2], r2
	andi 0x00000002, r2, r0
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r2
	andi 0x00000002, r2, r0
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	movea 0x00000082, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 240
	jarl _r_riic0_callback_receiveerror.1, r31
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 242
	movhi 0x0000FFCA, r0, r2
	ld.w 0x0000001C[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb32
	movea 0x00000083, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 244
	jarl _r_riic0_callback_receiveerror.1, r31
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.4_6:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 246
	movhi 0x0000FFCA, r0, r2
	ld.w 0x0000001C[r2], r2
	andi 0x00000010, r2, r0
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r2
	andi 0x00000010, r2, r0
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 249
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000040[r2], r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 250
	ld.w 0x00000024[r2], r5
	movea 0xFFFFFFEF, r0, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	movea 0x00000084, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 251
	jarl _r_riic0_callback_receiveerror.1, r31
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.4_9:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 253
	movhi HIGHW1(#_g_riic0_mode_flag), r0, r2
	ld.bu LOWW(#_g_riic0_mode_flag)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.4_14
.BB.LABEL.4_10:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 255
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_11:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_12:	; if_else_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 260
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.4_22
.BB.LABEL.4_13:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 262
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r5
	movea 0xFFFFFFEF, r0, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 263
	ld.w 0x00000024[r2], r5
	mov 0xFFFFFFF7, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 265
	jarl _r_riic0_callback_transmitend.1, r31
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.4_14:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 268
	movhi HIGHW1(#_g_riic0_mode_flag), r0, r2
	ld.bu LOWW(#_g_riic0_mode_flag)[r2], r2
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.4_22
.BB.LABEL.4_15:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 270
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 0
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.4_18
.BB.LABEL.4_17:	; if_then_bb121
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r5
	mov 0xFFFFFFFB, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	ld.w 0x0000001C[r2], r5
	and r6, r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 289
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.4_18:	; if_else_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 275
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.4_20
.BB.LABEL.4_19:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 277
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r5
	mov 0xFFFFFFFB, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 278
	ld.w 0x0000001C[r2], r5
	and r6, r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 279
	movhi HIGHW1(#_g_riic0_state), r0, r2
	mov 0x00000003, r5
	st.b r5, LOWW(#_g_riic0_state)[r2]
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.4_20:	; if_else_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 281
	movhi HIGHW1(#_g_riic0_state), r0, r2
	ld.bu LOWW(#_g_riic0_state)[r2], r2
	cmp 0x0000000B, r2
	bnz9 .BB.LABEL.4_22
.BB.LABEL.4_21:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 283
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000024[r2], r5
	movea 0xFFFFFFEF, r0, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 284
	ld.w 0x00000024[r2], r5
	mov 0xFFFFFFF7, r6
	and r6, r5
	st.w r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 286
	jarl _r_riic0_callback_receiveend.1, r31
.BB.LABEL.4_22:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 289
	dispose 0x00000004, 0x00000001, [r31]
_r_riic0_callback_transmitend.1:
	.stack _r_riic0_callback_transmitend.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 299
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_i2cSendEndFlag)[r2]
	jmp [r31]
_r_riic0_callback_receiveend.1:
	.stack _r_riic0_callback_receiveend.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 311
	movhi HIGHW1(#_g_i2cReciveEndFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_i2cReciveEndFlag)[r2]
	jmp [r31]
_r_riic0_callback_receiveerror.1:
	.stack _r_riic0_callback_receiveerror.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 320
	movhi HIGHW1(#_g_i2cReciveErrorFlag), r0, r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic_user.c", 323
	st.b r5, LOWW(#_g_i2cReciveErrorFlag)[r2]
	jmp [r31]
