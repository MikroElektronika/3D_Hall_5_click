
_systemInit:

;Click_3DHALL5_DSPIC.c,36 :: 		void systemInit()
;Click_3DHALL5_DSPIC.c,38 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	PUSH	W10
	PUSH	W11
	PUSH	W12
	MOV.B	#1, W12
	MOV.B	#7, W11
	CLR	W10
	CALL	_mikrobus_gpioInit
;Click_3DHALL5_DSPIC.c,39 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
	CLR	W12
	MOV.B	#2, W11
	CLR	W10
	CALL	_mikrobus_gpioInit
;Click_3DHALL5_DSPIC.c,40 :: 		mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL5_I2C_CFG[0] );
	MOV	#lo_addr(__C3DHALL5_I2C_CFG), W0
	MOV	W0, W11
	CLR	W10
	CALL	_mikrobus_i2cInit
;Click_3DHALL5_DSPIC.c,41 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
	MOV	#9600, W11
	MOV	#0, W12
	MOV.B	#32, W10
	CALL	_mikrobus_logInit
;Click_3DHALL5_DSPIC.c,42 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
	MOV.B	#2, W11
	MOV	#lo_addr(?lstr1_Click_3DHALL5_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,43 :: 		Delay_ms( 100 );
	MOV	#3, W8
	MOV	#2261, W7
L_systemInit0:
	DEC	W7
	BRA NZ	L_systemInit0
	DEC	W8
	BRA NZ	L_systemInit0
;Click_3DHALL5_DSPIC.c,44 :: 		}
L_end_systemInit:
	POP	W12
	POP	W11
	POP	W10
	RETURN
; end of _systemInit

_applicationInit:

;Click_3DHALL5_DSPIC.c,46 :: 		void applicationInit()
;Click_3DHALL5_DSPIC.c,48 :: 		c3dhall5_i2cDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_I2C, 0x1E );
	PUSH	W10
	PUSH	W11
	PUSH	W12
	MOV.B	#30, W12
	MOV	#lo_addr(__MIKROBUS1_I2C), W11
	MOV	#lo_addr(__MIKROBUS1_GPIO), W10
	CALL	_c3dhall5_i2cDriverInit
;Click_3DHALL5_DSPIC.c,49 :: 		c3dhall5_init();
	CALL	_c3dhall5_init
;Click_3DHALL5_DSPIC.c,50 :: 		}
L_end_applicationInit:
	POP	W12
	POP	W11
	POP	W10
	RETURN
; end of _applicationInit

_applicationTask:

;Click_3DHALL5_DSPIC.c,52 :: 		void applicationTask()
;Click_3DHALL5_DSPIC.c,54 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
	PUSH	W10
	PUSH	W11
	MOV.B	#__C3DHALL5_AXIS_X, W10
	CALL	_c3dhall5_getAxis
	MOV	W0, _axis_X
;Click_3DHALL5_DSPIC.c,55 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr2_Click_3DHALL5_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,56 :: 		IntToStr(axis_X, demoText);
	MOV	#lo_addr(_demoText), W11
	MOV	_axis_X, W10
	CALL	_IntToStr
;Click_3DHALL5_DSPIC.c,57 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOV.B	#2, W11
	MOV	#lo_addr(_demoText), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,59 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
	MOV.B	#__C3DHALL5_AXIS_Y, W10
	CALL	_c3dhall5_getAxis
	MOV	W0, _axis_Y
;Click_3DHALL5_DSPIC.c,60 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr3_Click_3DHALL5_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,61 :: 		IntToStr(axis_Y, demoText);
	MOV	#lo_addr(_demoText), W11
	MOV	_axis_Y, W10
	CALL	_IntToStr
;Click_3DHALL5_DSPIC.c,62 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOV.B	#2, W11
	MOV	#lo_addr(_demoText), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,64 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
	MOV.B	#__C3DHALL5_AXIS_Z, W10
	CALL	_c3dhall5_getAxis
	MOV	W0, _axis_Z
;Click_3DHALL5_DSPIC.c,65 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr4_Click_3DHALL5_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,66 :: 		IntToStr(axis_Z, demoText);
	MOV	#lo_addr(_demoText), W11
	MOV	_axis_Z, W10
	CALL	_IntToStr
;Click_3DHALL5_DSPIC.c,67 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOV.B	#2, W11
	MOV	#lo_addr(_demoText), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,69 :: 		temp = c3dhall5_temperature();
	CALL	_c3dhall5_temperature
	MOV	W0, _temp
	MOV	W1, _temp+2
;Click_3DHALL5_DSPIC.c,70 :: 		mikrobus_logWrite(" Temp : ", _LOG_TEXT);
	MOV.B	#1, W11
	MOV	#lo_addr(?lstr5_Click_3DHALL5_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,71 :: 		IntToStr(temp, demoText);
	MOV	_temp, W0
	MOV	_temp+2, W1
	CALL	__Float2Longint
	MOV	#lo_addr(_demoText), W11
	MOV	W0, W10
	CALL	_IntToStr
;Click_3DHALL5_DSPIC.c,72 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOV.B	#2, W11
	MOV	#lo_addr(_demoText), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,74 :: 		mikrobus_logWrite("  ", _LOG_LINE);
	MOV.B	#2, W11
	MOV	#lo_addr(?lstr6_Click_3DHALL5_DSPIC), W10
	CALL	_mikrobus_logWrite
;Click_3DHALL5_DSPIC.c,75 :: 		Delay_ms( 1000 );
	MOV	#21, W8
	MOV	#22619, W7
L_applicationTask2:
	DEC	W7
	BRA NZ	L_applicationTask2
	DEC	W8
	BRA NZ	L_applicationTask2
;Click_3DHALL5_DSPIC.c,76 :: 		}
L_end_applicationTask:
	POP	W11
	POP	W10
	RETURN
; end of _applicationTask

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68

;Click_3DHALL5_DSPIC.c,78 :: 		void main()
;Click_3DHALL5_DSPIC.c,80 :: 		systemInit();
	CALL	_systemInit
;Click_3DHALL5_DSPIC.c,81 :: 		applicationInit();
	CALL	_applicationInit
;Click_3DHALL5_DSPIC.c,83 :: 		while (1)
L_main4:
;Click_3DHALL5_DSPIC.c,85 :: 		applicationTask();
	CALL	_applicationTask
;Click_3DHALL5_DSPIC.c,86 :: 		}
	GOTO	L_main4
;Click_3DHALL5_DSPIC.c,87 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
