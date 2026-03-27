#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\remoteControlSdk.c -oDefaultBuild\remoteControlSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_56ab67b50717445ca12613744b952096te3c3ql5.2vx
#@	compiled at Fri Mar 27 09:50:53 2026

	.file "..\..\Srcode\sdk\source\remoteControlSdk.c"

	$reg_mode 32
	.dbl_size 8

	.public _RemoteControlSdkInit
	.public _RemoteControlSendAck
	.extern _MpuHalTransmit
	.extern _LogHalPrint
	.public _RemoteControlSendResult

	.section .text, text
_RemoteControlSdkInit:
	.stack _RemoteControlSdkInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 22
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 24
	bn9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 29
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	st.h r6, LOWW(#_g_mpuHandle.1)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 33
	jmp [r31]
.BB.LABEL.1_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 34
	jmp [r31]
_RemoteControlSendAck:
	.stack _RemoteControlSendAck = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 36
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 38
	mov #_g_mpuRespPack.3, r7
	movea 0x00000031, r0, r2
	st.b r2, 0x00000000[r7]
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 39
	st.b r2, 0x00000001[r7]
	movea 0x0000006E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 41
	st.b r2, 0x00000002[r7]
	movea 0x00000040, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 43
	st.h r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 44
	mov #_g_mpuDataBuffer.2, r2
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 45
	st.w r2, 0x00000008[r7]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 46
	st.h r2, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 48
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 49
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 52
	movhi HIGHW1(#_g_mpuRespPack.3+0x00000008), r0, r2
	ld.w LOWW(#_g_mpuRespPack.3+0x00000008)[r2], r2
	andi 0x000000FF, r20, r5
	add r5, r2
	ld.bu 0x00000000[r2], r7
	mov #.STR.184, r6
	jarl _LogHalPrint, r31
	add 0x00000001, r20
.BB.LABEL.2_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 50
	movhi HIGHW1(#_g_mpuRespPack.3+0x00000006), r0, r2
	ld.hu LOWW(#_g_mpuRespPack.3+0x00000006)[r2], r2
	andi 0x000000FF, r20, r5
	cmp r2, r5
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 54
	mov #.STR.185, r6
	jarl _LogHalPrint, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 56
	dispose 0x00000000, 0x00000041, [r31]
_RemoteControlSendResult:
	.stack _RemoteControlSendResult = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 58
	prepare 0x00000041, 0x00000000
	ld.w 0x00000008[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 62
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 64
	mov #_g_mpuRespPack.3, r7
	movea 0x00000031, r0, r2
	st.b r2, 0x00000000[r7]
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 65
	st.b r2, 0x00000001[r7]
	movea 0x0000006F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 67
	st.b r2, 0x00000002[r7]
	movea 0x00000040, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 69
	st.h r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 70
	mov #_g_mpuDataBuffer.2, r2
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 71
	mov r8, r5
	shr 0x00000008, r5
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 72
	st.b r8, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 73
	st.b r9, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 81
	st.w r2, 0x00000008[r7]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 82
	st.h r2, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 84
	movhi HIGHW1(#_g_mpuHandle.1), r0, r2
	ld.h LOWW(#_g_mpuHandle.1)[r2], r6
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 86
	mov #.STR.1111, r6
	jarl _LogHalPrint, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 89
	movhi HIGHW1(#_g_mpuRespPack.3+0x00000008), r0, r2
	ld.w LOWW(#_g_mpuRespPack.3+0x00000008)[r2], r2
	andi 0x000000FF, r20, r5
	add r5, r2
	ld.bu 0x00000000[r2], r7
	mov #.STR.1112, r6
	jarl _LogHalPrint, r31
	add 0x00000001, r20
.BB.LABEL.3_3:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 87
	movhi HIGHW1(#_g_mpuRespPack.3+0x00000006), r0, r2
	ld.hu LOWW(#_g_mpuRespPack.3+0x00000006)[r2], r2
	andi 0x000000FF, r20, r5
	cmp r2, r5
	blt9 .BB.LABEL.3_2
.BB.LABEL.3_4:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 91
	mov #.STR.1113, r6
	jarl _LogHalPrint, r31
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/remoteControlSdk.c", 100
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
	.align 2
_g_mpuHandle.1:
	.ds (2)
_g_mpuDataBuffer.2:
	.ds (64)
	.section .bss, bss
	.align 4
_g_mpuRespPack.3:
	.ds (12)
	.section .const, const
.STR.1:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x52,0x65,0x6D,0x6F,0x74,0x65,0x43,0x6F
	.db 0x6E,0x74,0x72,0x6F,0x6C,0x53,0x65,0x6E,0x64,0x41,0x63,0x6B,0x20,0x2D,0x20
	.ds (1)
.STR.184:
	.db 0x20,0x25,0x30,0x32,0x58
	.ds (1)
.STR.185:
	.db 0x0D,0x0A
	.ds (1)
.STR.1111:
	.db 0x72,0x65,0x6D,0x6F,0x74,0x65,0x3A,0x20,0x52,0x65,0x6D,0x6F,0x74,0x65,0x43,0x6F
	.db 0x6E,0x74,0x72,0x6F,0x6C,0x53,0x65,0x6E,0x64,0x52,0x65,0x73,0x75,0x6C,0x74,0x20
	.db 0x2D,0x20
	.ds (1)
.STR.1112:
	.db 0x20,0x25,0x30,0x32,0x58
	.ds (1)
.STR.1113:
	.db 0x0D,0x0A
	.ds (1)
