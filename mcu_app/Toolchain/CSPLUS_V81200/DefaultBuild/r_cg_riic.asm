#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\iic\r_cg_riic.c -oDefaultBuild\r_cg_riic.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_54f5514412944c2086282c0d87b48eaaq4tb4x1k.0xv
#@	compiled at Fri Mar 27 09:49:56 2026

	.file "..\..\Cpu\iic\r_cg_riic.c"

	$reg_mode 32
	.dbl_size 8

	.public _g_riic0_mode_flag, 1
	.public _g_riic0_state, 1
	.public _g_riic0_slave_address, 2
	.public _gp_riic0_tx_address, 4
	.public _g_riic0_tx_count, 2
	.public _gp_riic0_rx_address, 4
	.public _g_riic0_rx_count, 2
	.public _g_riic0_rx_length, 2
	.public _g_riic0_dummy_read_count, 1
	.public _g_i2cSendEndFlag, 1
	.public _g_i2cReciveEndFlag, 1
	.public _g_i2cReciveErrorFlag, 1
	.public _R_RIIC0_Create
	.public _R_RIIC0_Start
	.public _R_RIIC0_Stop
	.public _R_RIIC0_Master_Send
	.public _R_RIIC0_Master_Receive
	.public _R_RIIC0_StartCondition
	.public _R_RIIC0_StopCondition
	.public _I2cReadRegisterValue
	.public _I2cWriteRegisterValue

	.section .text, text
_R_RIIC0_Create:
	.stack _R_RIIC0_Create = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 79
	set1 0x00000007, 0xFFFFB098[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 80
	clr1 0x00000004, 0xFFFFB099[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 82
	set1 0x00000007, 0xFFFFB09E[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 83
	clr1 0x00000004, 0xFFFFB09F[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 85
	set1 0x00000007, 0xFFFFB09C[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 86
	clr1 0x00000004, 0xFFFFB09D[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 88
	set1 0x00000007, 0xFFFFB09A[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 89
	clr1 0x00000004, 0xFFFFB09B[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 103
	movhi 0x0000FFCA, r0, r2
	ld.w 0x00000000[r2], r5
	andi 0x0000000C, r5, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 104
	ld.w 0x00000000[r2], r5
	ori 0x00000040, r5, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 105
	ld.w 0x00000000[r2], r5
	ori 0x000000C0, r5, r5
	st.w r5, 0x00000000[r2]
	movea 0x00000030, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 107
	st.w r5, 0x00000008[r2]
	movea 0x000000FF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 108
	st.w r5, 0x00000034[r2]
	movea 0x000000E7, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 109
	st.w r6, 0x00000038[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 110
	st.w r0, 0x00000010[r2]
	movea 0x00000072, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 111
	st.w r6, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 114
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 119
	ld.w 0x00000000[r2], r5
	andi 0x0000008C, r5, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 121
	ld.w 0x00000008[r2], r2
	movhi HIGHW1(#_g_cg_sync_read.1), r0, r5
	st.w r2, LOWW(#_g_cg_sync_read.1)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 122
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 124
	movhi 0x0000FFC1, r0, r2
	ld.hu 0x00004028[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00004028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 125
	ld.hu 0x00004128[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 126
	ld.h 0x00000328[r2], r5
	ori 0x00000008, r5, r5
	st.h r5, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 127
	ld.hu 0x00000428[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00000428[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 128
	ld.hu 0x00004228[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00004228[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 129
	ld.h 0x00004128[r2], r5
	ori 0x00000008, r5, r5
	st.h r5, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 130
	ld.w 0x00004528[r2], r5
	movea 0x000000A5, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 131
	st.w r6, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 132
	ori 0x00000008, r5, r7
	st.w r7, 0x00004528[r2]
	mov 0xFFFFFFF7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 133
	and r8, r5
	xor r8, r5
	st.w r5, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 134
	st.w r7, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 135
	ld.h 0x00000528[r2], r5
	ori 0x00000008, r5, r5
	st.h r5, 0x00000528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 136
	ld.hu 0x00000628[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00000628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 137
	ld.hu 0x00000A28[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00000A28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 138
	ld.h 0x00000428[r2], r5
	ori 0x00000008, r5, r5
	st.h r5, 0x00000428[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 139
	ld.hu 0x00000328[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 141
	ld.hu 0x00004028[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00004028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 142
	ld.hu 0x00004128[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 143
	ld.h 0x00000328[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 144
	ld.hu 0x00000428[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000428[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 145
	ld.hu 0x00004228[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00004228[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 146
	ld.h 0x00004128[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 147
	ld.w 0x00004528[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 148
	st.w r6, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 149
	ori 0x00000004, r5, r6
	st.w r6, 0x00004528[r2]
	mov 0xFFFFFFFB, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 150
	and r7, r5
	xor r7, r5
	st.w r5, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 151
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 152
	ld.h 0x00000528[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00000528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 153
	ld.hu 0x00000628[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 154
	ld.hu 0x00000A28[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000A28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 155
	ld.h 0x00000428[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00000428[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 156
	ld.hu 0x00000328[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000328[r2]
	jmp [r31]
_R_RIIC0_Start:
	.stack _R_RIIC0_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 167
	clr1 0x00000004, 0xFFFFB099[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 168
	clr1 0x00000004, 0xFFFFB09F[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 169
	clr1 0x00000004, 0xFFFFB09D[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 170
	clr1 0x00000004, 0xFFFFB09B[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 171
	clr1 0x00000007, 0xFFFFB098[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 172
	clr1 0x00000007, 0xFFFFB09E[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 173
	clr1 0x00000007, 0xFFFFB09C[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 174
	clr1 0x00000007, 0xFFFFB09A[r0]
	jmp [r31]
_R_RIIC0_Stop:
	.stack _R_RIIC0_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 194
	ld.hu 0xFFFFB09C[r0], r2
	movhi HIGHW1(#_g_cg_sync_read.1), r0, r5
	st.w r2, LOWW(#_g_cg_sync_read.1)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 195
	syncp
	jmp [r31]
_R_RIIC0_Master_Send:
	.stack _R_RIIC0_Master_Send = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 209
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 213
	ld23.w 0xFFCA0004[r0], r2
	andi 0x00000080, r2, r0
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb26_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x00000082, r0, r10
	br9 .BB.LABEL.4_8
.BB.LABEL.4_2:	; if_else_bb
	movea 0x00000400, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 217
	cmp r2, r6
	bl9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_else_bb.if_break_bb26_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x00000083, r0, r10
	br9 .BB.LABEL.4_8
.BB.LABEL.4_4:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 224
	movhi HIGHW1(#_g_riic0_tx_count), r0, r2
	st.h r8, LOWW(#_g_riic0_tx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 225
	movhi HIGHW1(#_gp_riic0_tx_address), r0, r2
	st.w r7, LOWW(#_gp_riic0_tx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 226
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	st.h r6, LOWW(#_g_riic0_slave_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 227
	movhi HIGHW1(#_g_riic0_mode_flag), r0, r2
	mov 0x0000000D, r5
	st.b r5, LOWW(#_g_riic0_mode_flag)[r2]
	movea 0x0000007F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 229
	cmp r2, r6
	bh9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	mov 0x00000001, r5
	br9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_else_bb24
	mov 0x00000002, r5
.BB.LABEL.4_7:	; if_else_bb24
	movhi HIGHW1(#_g_riic0_state), r0, r2
	st.b r5, LOWW(#_g_riic0_state)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 238
	jarl _R_RIIC0_StartCondition, r31
	mov 0x00000000, r10
.BB.LABEL.4_8:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 242
	dispose 0x00000000, 0x00000001, [r31]
_R_RIIC0_Master_Receive:
	.stack _R_RIIC0_Master_Receive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 255
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 259
	ld23.w 0xFFCA0004[r0], r2
	andi 0x00000080, r2, r0
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb26_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x00000082, r0, r10
	br9 .BB.LABEL.5_8
.BB.LABEL.5_2:	; if_else_bb
	movea 0x00000400, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 263
	cmp r2, r6
	bl9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_else_bb.if_break_bb26_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x00000083, r0, r10
	br9 .BB.LABEL.5_8
.BB.LABEL.5_4:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 270
	movhi HIGHW1(#_g_riic0_rx_length), r0, r2
	st.h r8, LOWW(#_g_riic0_rx_length)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 271
	movhi HIGHW1(#_g_riic0_rx_count), r0, r2
	st.h r0, LOWW(#_g_riic0_rx_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 272
	movhi HIGHW1(#_gp_riic0_rx_address), r0, r2
	st.w r7, LOWW(#_gp_riic0_rx_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 273
	movhi HIGHW1(#_g_riic0_slave_address), r0, r2
	st.h r6, LOWW(#_g_riic0_slave_address)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 274
	movhi HIGHW1(#_g_riic0_dummy_read_count), r0, r2
	st.b r0, LOWW(#_g_riic0_dummy_read_count)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 275
	movhi HIGHW1(#_g_riic0_mode_flag), r0, r2
	mov 0x0000000C, r5
	st.b r5, LOWW(#_g_riic0_mode_flag)[r2]
	movea 0x0000007F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 277
	cmp r2, r6
	movhi HIGHW1(#_g_riic0_state), r0, r2
	bh9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 279
	st.b r0, LOWW(#_g_riic0_state)[r2]
	br9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 283
	st.b r5, LOWW(#_g_riic0_state)[r2]
.BB.LABEL.5_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 286
	jarl _R_RIIC0_StartCondition, r31
	mov 0x00000000, r10
.BB.LABEL.5_8:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 290
	dispose 0x00000000, 0x00000001, [r31]
_R_RIIC0_StartCondition:
	.stack _R_RIIC0_StartCondition = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 300
	ld23.w 0xFFCA0004[r0], r2
	ori 0x00000002, r2, r2
	st23.w r2, 0xFFCA0004[r0]
	jmp [r31]
_R_RIIC0_StopCondition:
	.stack _R_RIIC0_StopCondition = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 311
	ld23.w 0xFFCA0004[r0], r2
	ori 0x00000008, r2, r2
	st23.w r2, 0xFFCA0004[r0]
	jmp [r31]
_delay_us.1:
	.stack _delay_us.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 315
	mov 0x00000000, r2
	br9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 322
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 323
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 324
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 325
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 326
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 327
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 328
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 329
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 330
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 331
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 332
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 333
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
.BB.LABEL.8_2:	; bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 318
	cmp r6, r2
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 336
	jmp [r31]
_I2cReadRegisterValue:
	.stack _I2cReadRegisterValue = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 338
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 342
	jarl _R_RIIC0_Master_Send, r31
	mov 0x00000000, r23
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x000000C8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 346
	jarl _delay_us.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 347
	add 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 344
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	ld.bu LOWW(#_g_i2cSendEndFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	andi 0x000000FF, r23, r2
	addi 0xFFFFFF9D, r2, r0
	ble9 .BB.LABEL.9_1
.BB.LABEL.9_3:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 349
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	ld.bu LOWW(#_g_i2cSendEndFlag)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 353
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	st.b r0, LOWW(#_g_i2cSendEndFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 354
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _R_RIIC0_Master_Receive, r31
	mov 0x00000000, r20
.BB.LABEL.9_5:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x000000C8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 358
	jarl _delay_us.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 359
	add 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 356
	movhi HIGHW1(#_g_i2cReciveEndFlag), r0, r2
	ld.bu LOWW(#_g_i2cReciveEndFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	andi 0x000000FF, r20, r2
	addi 0xFFFFFF9D, r2, r0
	ble9 .BB.LABEL.9_5
.BB.LABEL.9_7:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 361
	movhi HIGHW1(#_g_i2cReciveEndFlag), r0, r2
	ld.bu LOWW(#_g_i2cReciveEndFlag)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 365
	movhi HIGHW1(#_g_i2cReciveEndFlag), r0, r2
	st.b r0, LOWW(#_g_i2cReciveEndFlag)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 367
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.9_9:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 368
	dispose 0x00000000, 0x00000079, [r31]
_I2cWriteRegisterValue:
	.stack _I2cWriteRegisterValue = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 370
	prepare 0x00000041, 0x00000014
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 376
	ld.b 0x00000000[r7], r2
	st.b r2, 0x00000000[r3]
	mov 0x00000000, r2
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 379
	andi 0x0000FFFF, r2, r5
	add r5, r7
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000001[r7]
	add 0x00000001, r2
.BB.LABEL.10_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 377
	andi 0x0000FFFF, r2, r5
	mov r3, r7
	cmp r9, r5
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 383
	add 0x00000001, r9
	andi 0x0000FFFF, r9, r8
	jarl _R_RIIC0_Master_Send, r31
	mov 0x00000000, r20
.BB.LABEL.10_4:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x000000C8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 387
	jarl _delay_us.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 388
	add 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 385
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	ld.bu LOWW(#_g_i2cSendEndFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	andi 0x000000FF, r20, r2
	addi 0xFFFFFF9D, r2, r0
	ble9 .BB.LABEL.10_4
.BB.LABEL.10_6:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 390
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	ld.bu LOWW(#_g_i2cSendEndFlag)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 394
	movhi HIGHW1(#_g_i2cSendEndFlag), r0, r2
	st.b r0, LOWW(#_g_i2cSendEndFlag)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 396
	dispose 0x00000014, 0x00000041, [r31]
.BB.LABEL.10_8:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/iic/r_cg_riic.c", 397
	dispose 0x00000014, 0x00000041, [r31]
	.section .bss, bss
_g_riic0_mode_flag:
	.ds (1)
_g_riic0_state:
	.ds (1)
	.align 2
_g_riic0_slave_address:
	.ds (2)
	.align 4
_gp_riic0_tx_address:
	.ds (4)
	.align 2
_g_riic0_tx_count:
	.ds (2)
	.align 4
_gp_riic0_rx_address:
	.ds (4)
	.align 2
_g_riic0_rx_count:
	.ds (2)
	.align 2
_g_riic0_rx_length:
	.ds (2)
_g_riic0_dummy_read_count:
	.ds (1)
	.align 4
_g_cg_sync_read.1:
	.ds (4)
	.section .data, data
_g_i2cSendEndFlag:
	.ds (1)
_g_i2cReciveEndFlag:
	.ds (1)
_g_i2cReciveErrorFlag:
	.ds (1)
