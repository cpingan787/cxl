#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\hal\source\logHal.c -oDefaultBuild\logHal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6ff863b7e5584ba582530d22a1aed0d8sdntaee0.ruv
#@	compiled at Fri Mar 27 09:51:03 2026

	.file "..\..\Srcode\hal\source\logHal.c"

	$reg_mode 32
	.dbl_size 8

	.public _g_debugPrintEndFlag, 1
	.public _g_debugUartReciveData, 100
	.public _g_debugUartReciveCount, 2
	.public _g_debugUartErrorType, 1
	.public _g_debugUartErrorFlag, 1
	.public _LogHalInit
	.extern _R_UART4_Create
	.extern _R_UART4_Start
	.public _LogHalPrint
	.extern _vsprintf
	.extern _R_UART4_Send
	.extern _strlen
	.public _LogHalSetMode
	.extern _R_UART4_Stop
	.public _LogHalTestMain
	.extern _memset

	.section .text, text
_delay_us.1:
	.stack _delay_us.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 22
	mov 0x00000000, r2
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 29
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 30
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 31
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 32
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 33
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 34
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 35
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 36
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 37
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 38
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 39
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 40
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
.BB.LABEL.1_2:	; bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 25
	cmp r6, r2
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 43
	jmp [r31]
_LogHalInit:
	.stack _LogHalInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 53
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 55
	cmp 0x00000001, r6
	mov r6, r20
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 57
	jarl _R_UART4_Create, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 58
	jarl _R_UART4_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 59
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	st.h r0, LOWW(#_g_debugUartReciveCount)[r2]
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 66
	movhi HIGHW1(#_g_debugMode.2), r0, r2
	st.b r20, LOWW(#_g_debugMode.2)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_LogHalPrint:
	.stack _LogHalPrint = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 82
	add 0xFFFFFFF4, r3
	st.w r7, 0x00000000[r3]
	st23.dw r8, 0x00000004[r3]
	prepare 0x00000041, 0x00000000
	mov r6, r7
	movea 0x00000008, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 87
	mov #_g_debugBuffer.1, r6
	jarl _vsprintf, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 89
	movhi HIGHW1(#_g_debugMode.2), r0, r2
	ld.bu LOWW(#_g_debugMode.2)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 91
	mov #_g_debugBuffer.1, r20
	mov r20, r6
	jarl _strlen, r31
	andi 0x0000FFFF, r10, r7
	mov r20, r6
	jarl _R_UART4_Send, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 94
	jarl _delay_us.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 95
	add 0x00000001, r20
.BB.LABEL.3_4:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 92
	movhi HIGHW1(#_g_debugPrintEndFlag), r0, r2
	ld.bu LOWW(#_g_debugPrintEndFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	andi 0x0000FFFF, r20, r2
	addi 0xFFFFFA24, r2, r0
	blt9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 97
	movhi HIGHW1(#_g_debugPrintEndFlag), r0, r2
	st.b r0, LOWW(#_g_debugPrintEndFlag)[r2]
.BB.LABEL.3_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	dispose 0x00000000, 0x00000041
	add 0x0000000C, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 105
	jmp [r31]
_LogHalSetMode:
	.stack _LogHalSetMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 107
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 109
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 111
	movhi HIGHW1(#_g_debugMode.2), r0, r2
	ld.bu LOWW(#_g_debugMode.2)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 113
	jarl _R_UART4_Stop, r31
.BB.LABEL.4_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 134
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 121
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 123
	movhi HIGHW1(#_g_debugMode.2), r0, r2
	ld.bu LOWW(#_g_debugMode.2)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 125
	jarl _R_UART4_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 126
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	st.h r0, LOWW(#_g_debugUartReciveCount)[r2]
.BB.LABEL.4_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 134
	dispose 0x00000000, 0x00000001, [r31]
_LogHalTestMain:
	.stack _LogHalTestMain = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 136
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 140
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	ld.hu LOWW(#_g_debugUartReciveCount)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 142
	mov #_g_debugUartReciveData, r21
	mov #.STR.1, r6
	mov r21, r7
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 143
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	st.h r0, LOWW(#_g_debugUartReciveCount)[r2]
	movea 0x00000064, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 144
	mov r21, r6
	jarl _memset, r31
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 154
	movhi HIGHW1(#_count.3.LogHalTestMain), r0, r2
	ld.hu LOWW(#_count.3.LogHalTestMain)[r2], r5
	addi 0x00000001, r5, r6
	st.h r6, LOWW(#_count.3.LogHalTestMain)[r2]
	movea 0x000003E8, r0, r2
	divhu r20, r2, r0
	cmp r2, r5
	blt9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 158
	movhi HIGHW1(#_count.3.LogHalTestMain), r0, r2
	st.h r0, LOWW(#_count.3.LogHalTestMain)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 164
	movhi HIGHW1(#_g_debugUartErrorFlag), r0, r2
	ld.bu LOWW(#_g_debugUartErrorFlag)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 166
	movhi HIGHW1(#_g_debugUartErrorType), r0, r2
	ld.bu LOWW(#_g_debugUartErrorType)[r2], r7
	mov #.STR.1124, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 167
	movhi HIGHW1(#_g_debugUartErrorFlag), r0, r2
	st.b r0, LOWW(#_g_debugUartErrorFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 168
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r2
	st.h r0, LOWW(#_g_debugUartReciveCount)[r2]
	movea 0x00000064, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 169
	mov #_g_debugUartReciveData, r6
	jarl _memset, r31
.BB.LABEL.5_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/logHal.c", 172
	dispose 0x00000000, 0x00000061, [r31]
	.section .bss, bss
_g_debugBuffer.1:
	.ds (200)
_g_debugMode.2:
	.ds (1)
	.section .data, data
_g_debugPrintEndFlag:
	.ds (1)
_g_debugUartReciveData:
	.ds (100)
	.align 2
_g_debugUartReciveCount:
	.ds (2)
_g_debugUartErrorType:
	.ds (1)
_g_debugUartErrorFlag:
	.ds (1)
	.align 2
_count.3.LogHalTestMain:
	.ds (2)
	.section .const, const
.STR.1:
	.db 0x25,0x73,0x20,0x0D,0x0A
	.ds (1)
.STR.1124:
	.db 0x64,0x65,0x62,0x75,0x67,0x20,0x75,0x61,0x72,0x74,0x20,0x65,0x72,0x72,0x6F,0x72
	.db 0x20,0x74,0x79,0x70,0x65,0x3A,0x20,0x25,0x64,0x20,0x0D,0x0A
	.ds (1)
