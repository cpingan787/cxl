#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Com\Com.c -oDefaultBuild\Com.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8132be95bd6c4863ba0ae12204bd591azaboho3n.t0a
#@	compiled at Fri Mar 27 09:50:24 2026

	.file "..\..\Bsw\Communication\Common\Com\Com.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_RxIPduRunTimeState
	.extern _Com_RxIPduInitState
	.extern _Com_TxIPduRunTimeState
	.extern _Com_TxIPduInitState
	.extern _Com_TxIPduRuntimeBuff
	.extern _Com_TxIPduInitValue
	.extern _Com_RxIPduRuntimeBuff
	.extern _Com_RxIPduInitValue
	.extern _Com_SignalBoolRuntimeBuff
	.extern _Com_SignalBoolInitValue
	.extern _Com_Signal8BitRuntimeBuff
	.extern _Com_Signal8BitInitValue
	.extern _Com_Signal16BitRuntimeBuff
	.extern _Com_Signal16BitInitValue
	.extern _Com_Signal32BitRuntimeBuff
	.extern _Com_Signal32BitInitValue
	.extern _Com_Signal64BitRuntimeBuff
	.extern _Com_Signal64BitInitValue
	.extern _Com_RxGroupSignalBoolShadowBuff
	.extern _Com_RxGroupSignal8BitShadowBuff
	.extern _Com_RxGroupSignal16BitShadowBuff
	.extern _Com_RxGroupSignal32BitShadowBuff
	.extern _Com_RxSignalTimeOutCnt
	.extern _Com_RxSignalGroupTimeOutCnt
	.public _Com_ConfigStd, 4
	.public _Com_IpduGroupDMEnable, 2
	.public _Com_IpduGroupEnable, 2
	.public _Com_Init
	.extern _Com_TxSignalTMCStateInit
	.extern _ILib_memset
	.extern _Com_TxSignalGroupTriggerFlagInit
	.public _Com_DeInit
	.public _Com_IpduGroupControl
	.extern _Com_RxIpduController
	.extern _Com_TxIpduController
	.public _Com_ReceptionDMControl
	.extern _Com_RxPduDMCtrHandle
	.public _Com_EnableReceptionDM
	.public _Com_DisableReceptionDM
	.public _Com_GetStatus
	.public _Com_ClearIpduGroupVector
	.public _Com_SetIpduGroup
	.public _Com_SendSignal
	.extern _Com_SendSignalHandle
	.public _Com_SendDynSignal
	.extern _Com_SendDynSignalHandle
	.public _Com_ReceiveSignal
	.extern _Com_ReceiveSignalHandle
	.extern _Com_ReceiveGroupSignalHandle
	.public _Com_ReceiveDynSignal
	.public _Com_SendSignalGroup
	.extern _Com_SendSignalGroupHandle
	.public _Com_ReceiveSignalGroup
	.extern _Com_ReceiveSignalGroupHandle
	.public _Com_InvalidateSignal
	.extern _Com_InvalidateSignalHandle
	.public _Com_InvalidateSignalGroup
	.extern _Com_InvalidateSignalGroupHandle
	.public _Com_TriggerIPDUSend
	.extern _Com_TriggerIPDUSendHandle
	.public _Com_SwitchIpduTxMode
	.public _Com_MainFunctionRx
	.extern _Com_MainFunctionRxHandle
	.public _Com_MainFunctionTx
	.extern _Com_MainFunctionTxHandle
	.public _Com_MainFunctionRouteSignals
	.public _Com_TriggerTransmit
	.extern _Com_TriggerTransmitHandle
	.public _Com_RxIndication
	.extern _Com_RxIndicationHandle
	.public _Com_TpRxIndication
	.public _Com_TxConfirmation
	.extern _Com_TxConfirmationHandle
	.public _Com_TpTxConfirmation
	.public _Com_StartOfReception
	.public _Com_CopyRxData
	.public _Com_CopyTxData
	.extern _ILib_memcpy

	.section .text, text
_Com_Init:
	.stack _Com_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 127
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 150
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	st.w r6, LOWW(#_Com_ConfigStd)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 151
	jarl _Com_PduRTAndBufferInit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 152
	jarl _Com_SignalBufferInit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 153
	jarl _Com_TxSignalTMCStateInit, r31
	mov 0x00000002, r20
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 156
	mov #_Com_IpduGroupEnable, r6
	mov r21, r7
	mov r20, r8
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 157
	mov #_Com_IpduGroupDMEnable, r6
	mov r21, r7
	mov r20, r8
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 161
	jarl _Com_TxSignalGroupTriggerFlagInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 165
	jarl _Com_RxTimeOutInit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 181
	movhi HIGHW1(#_Com_Status.1), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Com_Status.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 183
	dispose 0x00000000, 0x00000061, [r31]
_Com_DeInit:
	.stack _Com_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 200
	prepare 0x00000001, 0x00000000
	mov 0x00000002, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 212
	mov #_Com_IpduGroupEnable, r6
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 215
	jarl _Com_SetAllPduRToDisableState.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 218
	movhi HIGHW1(#_Com_Status.1), r0, r2
	st.w r0, LOWW(#_Com_Status.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 220
	dispose 0x00000000, 0x00000001, [r31]
_Com_IpduGroupControl:
	.stack _Com_IpduGroupControl = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 239
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r7, r20
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 254
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 255
	mov #_Com_IpduGroupEnable, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 254
	shr 0x00000003, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	andi 0x00000007, r2, r8
	shr r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 255
	andi 0x00000001, r5, r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.3_2:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 252
	andi 0x0000FFFF, r2, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 260
	mov r20, r6
	jarl _Com_RxIpduController, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 265
	mov r20, r6
	jarl _Com_TxIpduController, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 268
	dispose 0x00000000, 0x00000041, [r31]
_Com_ReceptionDMControl:
	.stack _Com_ReceptionDMControl = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 288
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 303
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 304
	mov #_Com_IpduGroupDMEnable, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 303
	shr 0x00000003, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	andi 0x00000007, r2, r8
	shr r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 304
	andi 0x00000001, r5, r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.4_2:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 301
	andi 0x0000FFFF, r2, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 308
	jarl _Com_RxPduDMCtrHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 311
	dispose 0x00000000, 0x00000001, [r31]
_Com_EnableReceptionDM:
	.stack _Com_EnableReceptionDM = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 328
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 339
	mov #_Com_IpduGroupDMEnable, r2
	add r6, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 341
	jarl _Com_RxPduDMCtrHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 344
	dispose 0x00000000, 0x00000001, [r31]
_Com_DisableReceptionDM:
	.stack _Com_DisableReceptionDM = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 361
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 372
	mov #_Com_IpduGroupDMEnable, r2
	add r6, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 374
	jarl _Com_RxPduDMCtrHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 377
	dispose 0x00000000, 0x00000001, [r31]
_Com_GetStatus:
	.stack _Com_GetStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 397
	movhi HIGHW1(#_Com_Status.1), r0, r2
	ld.w LOWW(#_Com_Status.1)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 398
	jmp [r31]
_Com_ClearIpduGroupVector:
	.stack _Com_ClearIpduGroupVector = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 414
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 425
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 427
	dispose 0x00000000, 0x00000001, [r31]
_Com_SetIpduGroup:
	.stack _Com_SetIpduGroup = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 444
	andi 0x00000007, r7, r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 465
	shl r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 467
	shr 0x00000003, r7
	add r7, r6
	ld.b 0x00000000[r6], r2
	cmp 0x00000000, r8
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 469
	or r5, r2
	st.b r2, 0x00000000[r6]
	jmp [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 473
	not r5, r5
	and r5, r2
	st.b r2, 0x00000000[r6]
	jmp [r31]
_Com_SendSignal:
	.stack _Com_SendSignal = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 501
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 536
	jarl _Com_SendSignalHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 543
	dispose 0x00000000, 0x00000001, [r31]
_Com_SendDynSignal:
	.stack _Com_SendDynSignal = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 564
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 598
	jarl _Com_SendDynSignalHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 606
	dispose 0x00000000, 0x00000001, [r31]
_Com_ReceiveSignal:
	.stack _Com_ReceiveSignal = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 621
	prepare 0x00000001, 0x00000000
	movea 0x000001BA, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 656
	cmp r2, r6
	bh9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 659
	jarl _Com_ReceiveSignalHandle, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 666
	jarl _Com_ReceiveGroupSignalHandle, r31
	dispose 0x00000000, 0x00000001, [r31]
_Com_ReceiveDynSignal:
	.stack _Com_ReceiveDynSignal = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 697
	movea 0x00000080, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 758
	jmp [r31]
_Com_SendSignalGroup:
	.stack _Com_SendSignalGroup = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 777
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 801
	jarl _Com_SendSignalGroupHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 806
	dispose 0x00000000, 0x00000001, [r31]
_Com_ReceiveSignalGroup:
	.stack _Com_ReceiveSignalGroup = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 824
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 828
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r2
	mov r6, r5
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 829
	ld.hu 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 852
	mov r2, r5
	shl 0x00000003, r5
	mov #_Com_RxIPduRunTimeState, r7
	add r5, r7
	addi 0x00000006, r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 854
	tst1 0x00000002, 0x00000006[r7]
	mov r6, r7
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.15_5
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 860
	mov r2, r6
	jarl _Com_ReceiveSignalGroupHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 862
	tst1 0x00000000, 0x00000000[r20]
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_else_bb.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_then_bb40
	mov 0x00000000, r10
.BB.LABEL.15_5:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 871
	dispose 0x00000000, 0x00000041, [r31]
_Com_InvalidateSignal:
	.stack _Com_InvalidateSignal = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1006
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1034
	jarl _Com_InvalidateSignalHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1040
	dispose 0x00000000, 0x00000001, [r31]
_Com_InvalidateSignalGroup:
	.stack _Com_InvalidateSignalGroup = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1060
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1085
	jarl _Com_InvalidateSignalGroupHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1090
	dispose 0x00000000, 0x00000001, [r31]
_Com_TriggerIPDUSend:
	.stack _Com_TriggerIPDUSend = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1106
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1131
	jarl _Com_TriggerIPDUSendHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1136
	dispose 0x00000000, 0x00000001, [r31]
_Com_SwitchIpduTxMode:
	.stack _Com_SwitchIpduTxMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1213
	jmp [r31]
_Com_MainFunctionRx:
	.stack _Com_MainFunctionRx = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1258
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1260
	movhi HIGHW1(#_Com_Status.1), r0, r2
	ld.w LOWW(#_Com_Status.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1273
	jarl _Com_MainFunctionRxHandle, r31
.BB.LABEL.20_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1277
	dispose 0x00000000, 0x00000001, [r31]
_Com_MainFunctionTx:
	.stack _Com_MainFunctionTx = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1287
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1289
	movhi HIGHW1(#_Com_Status.1), r0, r2
	ld.w LOWW(#_Com_Status.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1302
	jarl _Com_MainFunctionTxHandle, r31
.BB.LABEL.21_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1306
	dispose 0x00000000, 0x00000001, [r31]
_Com_MainFunctionRouteSignals:
	.stack _Com_MainFunctionRouteSignals = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1320
	jmp [r31]
_Com_TriggerTransmit:
	.stack _Com_TriggerTransmit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1372
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1400
	jarl _Com_TriggerTransmitHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1406
	dispose 0x00000000, 0x00000001, [r31]
_Com_RxIndication:
	.stack _Com_RxIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1426
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1453
	jarl _Com_RxIndicationHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1458
	dispose 0x00000000, 0x00000001, [r31]
_Com_TpRxIndication:
	.stack _Com_TpRxIndication = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1479
	jmp [r31]
_Com_TxConfirmation:
	.stack _Com_TxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1522
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1543
	jarl _Com_TxConfirmationHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1547
	dispose 0x00000000, 0x00000001, [r31]
_Com_TpTxConfirmation:
	.stack _Com_TpTxConfirmation = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1568
	jmp [r31]
_Com_StartOfReception:
	.stack _Com_StartOfReception = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1629
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1664
	jmp [r31]
_Com_CopyRxData:
	.stack _Com_CopyRxData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1683
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1721
	jmp [r31]
_Com_CopyTxData:
	.stack _Com_CopyTxData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1747
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1787
	jmp [r31]
_Com_SetAllPduRToDisableState.1:
	.stack _Com_SetAllPduRToDisableState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1808
	mov 0x00000000, r2
	br9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1817
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1818
	shl 0x00000003, r5
	mov #_Com_RxIPduRunTimeState, r6
	add r5, r6
	clr1 0x00000000, 0x00000006[r6]
	add 0x00000001, r2
.BB.LABEL.31_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1815
	andi 0x0000FFFF, r2, r5
	movea 0x00000076, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.31_1
.BB.LABEL.31_3:	; bb14.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.31_5
.BB.LABEL.31_4:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1826
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1827
	mul 0x00000014, r5, r0
	mov #_Com_TxIPduRunTimeState, r6
	add r5, r6
	clr1 0x00000000, 0x0000000C[r6]
	add 0x00000001, r2
.BB.LABEL.31_5:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1824
	andi 0x0000FFFF, r2, r5
	movea 0x0000002C, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.31_4
.BB.LABEL.31_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1830
	jmp [r31]
_Com_PduRTAndBufferInit.1:
	.stack _Com_PduRTAndBufferInit.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1844
	prepare 0x00000001, 0x00000000
	movea 0x000003B0, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1848
	mov #_Com_RxIPduInitState, r7
	mov #_Com_RxIPduRunTimeState, r6
	jarl _ILib_memcpy, r31
	movea 0x00000370, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1852
	mov #_Com_TxIPduInitState, r7
	mov #_Com_TxIPduRunTimeState, r6
	jarl _ILib_memcpy, r31
	movea 0x0000021E, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1856
	mov #_Com_TxIPduInitValue, r7
	mov #_Com_TxIPduRuntimeBuff, r6
	jarl _ILib_memcpy, r31
	movea 0x00000555, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1860
	mov #_Com_RxIPduInitValue, r7
	mov #_Com_RxIPduRuntimeBuff, r6
	jarl _ILib_memcpy, r31
	dispose 0x00000000, 0x00000001, [r31]
_Com_SignalBufferInit.1:
	.stack _Com_SignalBufferInit.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1866
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1872
	mov #_Com_SignalBoolInitValue, r20
	movea 0x000000BB, r0, r8
	mov #_Com_RxGroupSignalBoolShadowBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	movea 0x00000150, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1877
	mov #_Com_SignalBoolRuntimeBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1883
	mov #_Com_Signal8BitInitValue, r20
	movea 0x0000017A, r0, r8
	mov #_Com_RxGroupSignal8BitShadowBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	movea 0x00000331, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1886
	mov #_Com_Signal8BitRuntimeBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1892
	mov #_Com_Signal16BitInitValue, r20
	movea 0x0000002E, r0, r8
	mov #_Com_RxGroupSignal16BitShadowBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	movea 0x000000CC, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1897
	mov #_Com_Signal16BitRuntimeBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1903
	mov #_Com_Signal32BitInitValue, r20
	mov 0x00000008, r8
	mov #_Com_RxGroupSignal32BitShadowBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	movea 0x000000C4, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1908
	mov #_Com_Signal32BitRuntimeBuff, r6
	mov r20, r7
	jarl _ILib_memcpy, r31
	movea 0x000000D0, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1919
	mov #_Com_Signal64BitInitValue, r7
	mov #_Com_Signal64BitRuntimeBuff, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1921
	dispose 0x00000000, 0x00000041, [r31]
_Com_RxTimeOutInit.1:
	.stack _Com_RxTimeOutInit.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1955
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	mov 0x0000000C, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1959
	mov #_Com_RxSignalTimeOutCnt, r6
	mov r20, r7
	jarl _ILib_memset, r31
	mov 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com.c", 1962
	mov #_Com_RxSignalGroupTimeOutCnt, r6
	mov r20, r7
	jarl _ILib_memset, r31
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
	.align 4
_Com_Status.1:
	.ds (4)
	.align 4
_Com_ConfigStd:
	.ds (4)
	.section .bss, bss
_Com_IpduGroupDMEnable:
	.ds (2)
_Com_IpduGroupEnable:
	.ds (2)
