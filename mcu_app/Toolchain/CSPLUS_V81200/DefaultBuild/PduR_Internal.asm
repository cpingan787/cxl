#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\PDUR\PduR_Internal.c -oDefaultBuild\PduR_Internal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d6d6e1b6987c494481c99a961bd4eeb2dftgwfzi.txp
#@	compiled at Fri Mar 27 09:50:21 2026

	.file "..\..\Bsw\Communication\Common\PDUR\PduR_Internal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _PduR_ConfigStd
	.public _PduR_RoutingPathEnabled, 255
	.public _PduR_DestinationRouteStatus, 692
	.public _PduR_SourceRouteStatus, 692
	.public _PduR_RoutingPathGroupInit

	.section .text, text
_PduR_RoutingPathGroupInit:
	.stack _PduR_RoutingPathGroupInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 66
	mov 0x00000000, r2
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 73
	andi 0x0000FFFF, r2, r5
	mov #_PduR_RoutingPathEnabled, r6
	add r5, r6
	mov 0x00000001, r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.1_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 71
	andi 0x0000FFFF, r2, r5
	movea 0x000000FF, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb9.bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_4:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 77
	andi 0x0000FFFF, r2, r6
	mul 0x0000000C, r6, r0
	ld.w 0x00000008[r5], r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 79
	andi 0x0000FFFF, r2, r6
	mul 0x0000000C, r6, r0
	ld.w 0x00000008[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 80
	ld.hu 0x00000004[r5], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 82
	movhi HIGHW1(#_PduR_ConfigStd), r0, r7
	ld.w LOWW(#_PduR_ConfigStd)[r7], r7
	ld.w 0x00000008[r7], r7
	andi 0x0000FFFF, r2, r8
	mul 0x0000000C, r8, r0
	add r8, r7
	ld.w 0x00000008[r7], r7
	andi 0x0000FFFF, r6, r8
	add r8, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 83
	ld.hu 0x00000000[r7], r7
	mov #_PduR_RoutingPathEnabled, r8
	add r7, r8
	st.b r0, 0x00000000[r8]
	add 0x00000001, r6
.BB.LABEL.1_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 80
	andi 0x0000FFFF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.1_6
.BB.LABEL.1_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 0
	add 0x00000001, r2
.BB.LABEL.1_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 75
	movhi HIGHW1(#_PduR_ConfigStd), r0, r5
	ld.w LOWW(#_PduR_ConfigStd)[r5], r5
	ld.hu 0x00000002[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.1_4
.BB.LABEL.1_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.c", 87
	jmp [r31]
	.section .bss, bss
_PduR_RoutingPathEnabled:
	.ds (255)
	.align 4
_PduR_DestinationRouteStatus:
	.ds (692)
	.align 4
_PduR_SourceRouteStatus:
	.ds (692)
