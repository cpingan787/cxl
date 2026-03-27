#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BswM\BswM_AvbAction.c -oDefaultBuild\BswM_AvbAction.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5fed662ba3a74073a4b3717ab22883d0qpsqjw3j.2ja
#@	compiled at Fri Mar 27 09:50:49 2026

	.file "..\..\Bsw\SystemServices\BswM\BswM_AvbAction.c"

	$reg_mode 32
	.dbl_size 8

	.extern _BswM_RuntimeStatus
	.public _BswM_DoComMAllowCom
	.extern _ComM_CommunicationAllowed
	.public _BswM_DoComMModeSwitch
	.extern _ComM_RequestComMode
	.public _BswM_DoEcuMGoDownHaltPoll
	.extern _EcuM_GoDownHaltPoll
	.public _BswM_DoEcuMInitBswM
	.extern _EcuM_AL_DriverInitBswM
	.public _BswM_DoEcuMStateSwitch
	.extern _EcuM_SetState
	.public _BswM_DoNMControl
	.extern _Nm_DisableCommunication
	.extern _Nm_EnableCommunication
	.public _BswM_DoDMControl
	.extern _Com_SetIpduGroup
	.extern _Com_ReceptionDMControl
	.public _BswM_DoPduGrpSwitch
	.extern _Com_IpduGroupControl
	.public _BswM_DoPduRouterControl
	.extern _PduR_DisableRouting
	.extern _PduR_EnableRouting
	.public _BswM_DoUserCallout

	.section .text, text
_BswM_DoComMAllowCom:
	.stack _BswM_DoComMAllowCom = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 88
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 93
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 94
	ld.w 0x00000000[r2], r2
	add r7, r7
	add r7, r2
	ld.bu 0x00000000[r2], r7
	ld.bu 0x00000001[r2], r6
	jarl _ComM_CommunicationAllowed, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 98
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DoComMModeSwitch:
	.stack _BswM_DoComMModeSwitch = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 121
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 126
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 127
	ld.w 0x00000004[r2], r2
	add r7, r7
	add r7, r2
	ld.bu 0x00000000[r2], r7
	ld.bu 0x00000001[r2], r6
	jarl _ComM_RequestComMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 132
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DoEcuMGoDownHaltPoll:
	.stack _BswM_DoEcuMGoDownHaltPoll = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 175
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 180
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 181
	ld.w 0x00000014[r2], r2
	add r7, r7
	add r7, r2
	ld.hu 0x00000000[r2], r6
	jarl _EcuM_GoDownHaltPoll, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 183
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DoEcuMInitBswM:
	.stack _BswM_DoEcuMInitBswM = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 190
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 195
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 196
	ld.w 0x00000010[r2], r2
	add r7, r2
	ld.bu 0x00000000[r2], r6
	jarl _EcuM_AL_DriverInitBswM, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 198
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DoEcuMStateSwitch:
	.stack _BswM_DoEcuMStateSwitch = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 220
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 225
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 226
	ld.w 0x00000018[r2], r2
	add r7, r2
	ld.bu 0x00000000[r2], r6
	jarl _EcuM_SetState, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 228
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DoNMControl:
	.stack _BswM_DoNMControl = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 348
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 353
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 354
	ld.w 0x0000001C[r2], r2
	shl 0x00000003, r7
	add r7, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	ld.bu 0x00000004[r2], r6
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 356
	jarl _Nm_DisableCommunication, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 360
	jarl _Nm_EnableCommunication, r31
	dispose 0x00000000, 0x00000001, [r31]
_BswM_DoDMControl:
	.stack _BswM_DoDMControl = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 369
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 377
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mov r6, r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x00000020[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 378
	ld.w 0x00000008[r20], r2
	mov r7, r5
	shl 0x00000004, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 379
	ld.bu 0x00000004[r2], r21
	mov 0x00000000, r22
	mov r7, r23
	mov r6, r24
	br9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 382
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	mov r24, r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000014[r2], r6
	mov r23, r2
	shl 0x00000004, r2
	ld.w 0x00000008[r20], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	andi 0x000000FF, r22, r5
	add r5, r2
	ld.bu 0x00000000[r2], r7
	mov 0x00000001, r8
	jarl _Com_SetIpduGroup, r31
	add 0x00000001, r22
.BB.LABEL.7_2:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 379
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 388
	ld.w 0x00000008[r20], r2
	mov r23, r5
	shl 0x00000004, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 389
	ld.bu 0x0000000C[r2], r21
	mov 0x00000000, r22
	br9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 392
	mov r24, r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000014[r2], r6
	mov r23, r2
	shl 0x00000004, r2
	ld.w 0x00000008[r20], r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	andi 0x000000FF, r22, r5
	add r5, r2
	ld.bu 0x00000000[r2], r7
	mov 0x00000000, r8
	jarl _Com_SetIpduGroup, r31
	add 0x00000001, r22
.BB.LABEL.7_5:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 389
	andi 0x000000FF, r22, r2
	cmp r21, r2
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	bl9 .BB.LABEL.7_4
.BB.LABEL.7_6:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 399
	shl 0x00000005, r24
	add r24, r2
	ld.w 0x00000014[r2], r6
	jarl _Com_ReceptionDMControl, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 403
	dispose 0x00000000, 0x00000479, [r31]
_BswM_DoPduGrpSwitch:
	.stack _BswM_DoPduGrpSwitch = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 409
	prepare 0x000007FF, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 418
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mov r6, r5
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x00000020[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 419
	ld.w 0x0000000C[r20], r2
	mulhi 0x00000014, r7, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 420
	ld.bu 0x00000008[r2], r21
	mov 0x00000000, r22
	mov r7, r23
	mov r6, r24
	br9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 423
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	mov r24, r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x0000001C[r2], r6
	mulhi 0x00000014, r23, r25
	ld.w 0x0000000C[r20], r2
	add r25, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r22, r5
	add r2, r5
	ld.bu 0x00000000[r5], r7
	mov 0x00000001, r8
	jarl _Com_SetIpduGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 428
	ld.w 0x0000000C[r20], r2
	add r2, r25
	ld.bu 0x00000000[r25], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 431
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r5
	mov r24, r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000018[r5], r6
	mulhi 0x00000014, r23, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r22, r5
	add r2, r5
	ld.bu 0x00000000[r5], r7
	mov 0x00000001, r8
	jarl _Com_SetIpduGroup, r31
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 0
	add 0x00000001, r22
.BB.LABEL.8_4:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 420
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_5:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 438
	ld.w 0x0000000C[r20], r2
	mulhi 0x00000014, r23, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 439
	ld.bu 0x00000010[r2], r21
	mov 0x00000000, r22
	br9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 442
	mov r24, r25
	shl 0x00000005, r25
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r26
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r26], r2
	add r25, r2
	ld.w 0x0000001C[r2], r6
	mulhi 0x00000014, r23, r27
	ld.w 0x0000000C[r20], r2
	add r27, r2
	ld.w 0x0000000C[r2], r2
	andi 0x000000FF, r22, r28
	add r28, r2
	ld.bu 0x00000000[r2], r7
	mov 0x00000000, r29
	mov r29, r8
	jarl _Com_SetIpduGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 447
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r26], r2
	add r25, r2
	ld.w 0x00000018[r2], r6
	ld.w 0x0000000C[r20], r2
	add r27, r2
	ld.w 0x0000000C[r2], r2
	add r2, r28
	ld.bu 0x00000000[r28], r7
	mov r29, r8
	jarl _Com_SetIpduGroup, r31
	add 0x00000001, r22
.BB.LABEL.8_7:	; bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 439
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.8_6
.BB.LABEL.8_8:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 455
	mov r24, r20
	shl 0x00000005, r20
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r21
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r21], r2
	add r20, r2
	ld.w 0x00000018[r2], r6
	mov 0x00000001, r7
	jarl _Com_IpduGroupControl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 457
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r21], r2
	add r20, r2
	ld.w 0x0000001C[r2], r6
	mov 0x00000000, r20
	mov r20, r7
	jarl _Com_IpduGroupControl, r31
	br9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 462
	mov r24, r2
	shl 0x00000005, r2
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r6
	add r2, r6
	ld.w 0x00000018[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 464
	add r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 463
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 464
	add r20, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r6]
	add 0x00000001, r20
.BB.LABEL.8_10:	; bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 460
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_9
.BB.LABEL.8_11:	; bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 467
	dispose 0x00000000, 0x000007FF, [r31]
_BswM_DoPduRouterControl:
	.stack _BswM_DoPduRouterControl = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 533
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 541
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 542
	ld.w 0x00000020[r20], r2
	mov r7, r5
	shl 0x00000004, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 544
	ld.w 0x00000004[r5], r6
	cmp 0x00000000, r6
	ld.bu 0x00000008[r5], r21
	mov r7, r22
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 546
	mov r22, r23
	shl 0x00000004, r23
	add r23, r2
	ld.w 0x00000004[r2], r23
	ld.bu 0x00000000[r23], r23
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 0
	mov 0x00000000, r24
	br9 .BB.LABEL.9_8
.BB.LABEL.9_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 550
	ld.w 0x00000020[r20], r2
	mov r22, r5
	shl 0x00000004, r5
	add r5, r2
	ld.w 0x0000000C[r2], r5
	andi 0x000000FF, r24, r6
	add r6, r6
	add r6, r5
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	ld.hu 0x00000000[r5], r6
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 552
	mov r23, r7
	jarl _PduR_DisableRouting, r31
	br9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 556
	jarl _PduR_EnableRouting, r31
.BB.LABEL.9_7:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 0
	add 0x00000001, r24
.BB.LABEL.9_8:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 548
	andi 0x000000FF, r24, r2
	cmp r21, r2
	bl9 .BB.LABEL.9_4
.BB.LABEL.9_9:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 560
	dispose 0x00000000, 0x00000479, [r31]
_BswM_DoUserCallout:
	.stack _BswM_DoUserCallout = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 588
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 593
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 594
	ld.w 0x00000024[r2], r2
	shl 0x00000002, r7
	add r7, r2
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_AvbAction.c", 596
	dispose 0x00000000, 0x00000001, [r31]
