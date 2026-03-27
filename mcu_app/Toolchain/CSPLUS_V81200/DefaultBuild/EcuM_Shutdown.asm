#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\EcuM\EcuM_Shutdown.c -oDefaultBuild\EcuM_Shutdown.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5d87fa0d510a4578af6474cab4ae3b561zvgamcx.bmq
#@	compiled at Fri Mar 27 09:50:34 2026

	.file "..\..\Bsw\SystemServices\EcuM\EcuM_Shutdown.c"

	$reg_mode 32
	.dbl_size 8

	.extern _EcuM_UserCfgs
	.extern _EcuMRunData
	.extern _EcuM_ConfigPtr
	.public _EcuM_Shutdown
	.extern _EcuM_OnGoOffTwo
	.extern _EcuM_AL_Reset
	.extern _EcuM_AL_SwitchOff
	.public _EcuM_SelectShutdownTarget
	.public _EcuM_GetShutdownTarget
	.public _EcuM_GetLastShutdownTarget
	.public _EcuM_SelectShutdownCause
	.public _EcuM_GetShutdownCause
	.public _EcuM_DoShutDownPhase
	.public _EcuM_OffPreOS
	.extern _EcuM_SearchUserByCaller
	.extern _EcuM_CancellAlarms
	.extern _EcuM_OnGoOffOne
	.extern _BswM_EcuM_CurrentState
	.extern _BswM_Deinit
	.extern _SchM_Deinit
	.extern _EcuM_GetPendingWakeupEvents
	.extern _ShutdownOS

	.section .text, text
_EcuM_Shutdown:
	.stack _EcuM_Shutdown = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 113
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 133
	jarl _EcuM_OnGoOffTwo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 142
	movhi HIGHW1(#_EcuMRunData+0x0000002C), r0, r2
	ld.bu LOWW(#_EcuMRunData+0x0000002C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 144
	movhi HIGHW1(#_EcuMRunData+0x0000002E), r0, r2
	ld.bu LOWW(#_EcuMRunData+0x0000002E)[r2], r6
	jarl _EcuM_AL_Reset, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 146
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 149
	jarl _EcuM_AL_SwitchOff, r31
.BB.LABEL.1_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 157
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_SelectShutdownTarget:
	.stack _EcuM_SelectShutdownTarget = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 175
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 224
	mov #_EcuMRunData, r6
	mov r2, r7
	jarl _EcuM_SetSdtg.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_GetShutdownTarget:
	.stack _EcuM_GetShutdownTarget = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 249
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 270
	mov #_EcuMRunData, r6
	mov r2, r7
	jarl _EcuM_GetSdtg.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 273
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_GetLastShutdownTarget:
	.stack _EcuM_GetLastShutdownTarget = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 295
	mov #_EcuMRunData, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 316
	ld.b 0x00000030[r2], r5
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 317
	ld.h 0x00000032[r2], r2
	st.h r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 320
	jmp [r31]
_EcuM_SelectShutdownCause:
	.stack _EcuM_SelectShutdownCause = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 334
	movhi HIGHW1(#_EcuMRunData+0x00000034), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 355
	st.b r6, LOWW(#_EcuMRunData+0x00000034)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 359
	jmp [r31]
_EcuM_GetShutdownCause:
	.stack _EcuM_GetShutdownCause = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 374
	movhi HIGHW1(#_EcuMRunData+0x00000034), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 393
	ld.b LOWW(#_EcuMRunData+0x00000034)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 397
	jmp [r31]
_EcuM_DoShutDownPhase:
	.stack _EcuM_DoShutDownPhase = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 401
	prepare 0x00000041, 0x00000004
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 406
	jarl _EcuM_SearchUserByCaller, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 407
	addi 0x00000000, r10, r20
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 409
	ld.bu 0x00000003[r3], r2
	mulh 0x00000003, r2
	mov #_EcuM_UserCfgs, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 411
	jarl _EcuM_OffPreOS, r31
.BB.LABEL.7_3:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 422
	dispose 0x00000004, 0x00000041, [r31]
_EcuM_OffPreOS:
	.stack _EcuM_OffPreOS = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 427
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 439
	jarl _EcuM_CancellAlarms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 442
	jarl _EcuM_OnGoOffOne, r31
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 451
	jarl _BswM_EcuM_CurrentState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 455
	jarl _BswM_Deinit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 457
	jarl _SchM_Deinit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 463
	jarl _EcuM_GetPendingWakeupEvents, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 464
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 466
	movhi HIGHW1(#_EcuM_ConfigPtr), r0, r2
	ld.w LOWW(#_EcuM_ConfigPtr)[r2], r2
	ld.hu 0x00000008[r2], r7
	mov 0x00000001, r6
	jarl _EcuM_SelectShutdownTarget, r31
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 528
	jarl _ShutdownOS, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_SetSdtg.1:
	.stack _EcuM_SetSdtg.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 539
	ld.b 0x0000002C[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 544
	st.b r2, 0x00000030[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 545
	ld.h 0x0000002E[r6], r2
	st.h r2, 0x00000032[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 546
	st.b r7, 0x0000002C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 547
	st.h r8, 0x0000002E[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 548
	jmp [r31]
_EcuM_GetSdtg.1:
	.stack _EcuM_GetSdtg.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 551
	ld.b 0x0000002C[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 556
	st.b r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 557
	ld.h 0x0000002E[r6], r2
	st.h r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Shutdown.c", 558
	jmp [r31]
