#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\SrcCode\logHal.c -oDefaultBuild\logHal.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bae7e99b16d047358ff1109f202c6041bhyz0iq2.yhy
#@	compiled at Thu Jul 16 13:41:55 2026

	.file "..\..\SrcCode\logHal.c"

	$reg_mode 22
	.dbl_size 4

	.public _g_debugPrintEndFlag, 1
	.public _g_debugUartReciveData, 100
	.public _g_debugUartReciveCount, 2
	.public _g_debugUartErrorType, 1
	.public _g_debugUartErrorFlag, 1
	.public _LogHalInit
	.extern _R_UART4_Create
	.extern _R_UART4_Start
	.extern _R_UART4_Receive
	.public _LogHalPrint
	.extern _vsprintf
	.extern _R_UART4_Send
	.extern _strlen

	.section .text, text
_delay_us.1:
	.stack _delay_us.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 41
	mov 0x00000000, r5
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 48
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 49
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 50
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 51
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 52
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 53
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 54
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 55
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 56
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 57
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 58
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 59
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 44
	cmp r6, r5
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 62
	jmp [r31]
_LogHalInit:
	.stack _LogHalInit = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 127
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 129
	cmp 0x00000001, r6
	mov r6, r25
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 0
	cmp 0x00000003, r25
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 131
	jarl32 _R_UART4_Create, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 132
	jarl32 _R_UART4_Start, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 133
	movhi HIGHW1(#_g_debugUartReciveCount), r0, r5
	st.h r0, LOWW(#_g_debugUartReciveCount)[r5]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 134
	mov #_g_debugUartReciveData, r6
	jarl32 _R_UART4_Receive, r31
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 139
	movhi HIGHW1(#_g_debugMode.2), r0, r5
	st.b r25, LOWW(#_g_debugMode.2)[r5]
	dispose 0x00000000, 0x00000201, [r31]
_LogHalPrint:
	.stack _LogHalPrint = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 150
	add 0xFFFFFFF4, r3
	st.w r7, 0x00000000[r3]
	st23.dw r8, 0x00000004[r3]
	prepare 0x00000201, 0x00000000
	mov r6, r7
	movea 0x00000008, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 155
	mov #_g_debugBuffer.1, r6
	jarl32 _vsprintf, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 157
	movhi HIGHW1(#_g_debugMode.2), r0, r5
	ld.bu LOWW(#_g_debugMode.2)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 0
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 159
	mov #_g_debugBuffer.1, r25
	mov r25, r6
	jarl32 _strlen, r31
	andi 0x0000FFFF, r10, r7
	mov r25, r6
	jarl32 _R_UART4_Send, r31
	mov 0x00000000, r25
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 162
	jarl _delay_us.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 163
	add 0x00000001, r25
.BB.LABEL.3_4:	; bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 160
	movhi HIGHW1(#_g_debugPrintEndFlag), r0, r5
	ld.bu LOWW(#_g_debugPrintEndFlag)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 0
	andi 0x0000FFFF, r25, r5
	addi 0xFFFFFA24, r5, r0
	blt9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 165
	movhi HIGHW1(#_g_debugPrintEndFlag), r0, r5
	st.b r0, LOWW(#_g_debugPrintEndFlag)[r5]
.BB.LABEL.3_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 0
	dispose 0x00000000, 0x00000201
	add 0x0000000C, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/logHal.c", 167
	jmp [r31]
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
