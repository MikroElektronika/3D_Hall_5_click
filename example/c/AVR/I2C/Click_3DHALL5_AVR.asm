
_systemInit:

;Click_3DHALL5_AVR.c,36 :: 		void systemInit()
;Click_3DHALL5_AVR.c,38 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	CLR        R4
	LDI        R27, 7
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_3DHALL5_AVR.c,39 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, 2
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_3DHALL5_AVR.c,40 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_3DHALL5_AVR.c,41 :: 		mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL5_I2C_CFG[0] );
	LDI        R16, #lo_addr(__C3DHALL5_I2C_CFG+0)
	LDI        R17, hi_addr(__C3DHALL5_I2C_CFG+0)
	MOV        R3, R16
	MOV        R4, R17
	CLR        R2
	CALL       _mikrobus_i2cInit+0
;Click_3DHALL5_AVR.c,42 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
	LDI        R27, 128
	MOV        R3, R27
	LDI        R27, 37
	MOV        R4, R27
	LDI        R27, 0
	MOV        R5, R27
	MOV        R6, R27
	LDI        R27, 16
	MOV        R2, R27
	CALL       _mikrobus_logInit+0
;Click_3DHALL5_AVR.c,43 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr1_Click_3DHALL5_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr1_Click_3DHALL5_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,44 :: 		Delay_ms( 100 );
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_systemInit0:
	DEC        R16
	BRNE       L_systemInit0
	DEC        R17
	BRNE       L_systemInit0
	DEC        R18
	BRNE       L_systemInit0
;Click_3DHALL5_AVR.c,45 :: 		}
L_end_systemInit:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _systemInit

_applicationInit:

;Click_3DHALL5_AVR.c,47 :: 		void applicationInit()
;Click_3DHALL5_AVR.c,49 :: 		c3dhall5_i2cDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_I2C, 0x1E );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	LDI        R27, 30
	MOV        R6, R27
	LDI        R27, #lo_addr(__MIKROBUS1_I2C+0)
	MOV        R4, R27
	LDI        R27, hi_addr(__MIKROBUS1_I2C+0)
	MOV        R5, R27
	LDI        R27, #lo_addr(__MIKROBUS1_GPIO+0)
	MOV        R2, R27
	LDI        R27, hi_addr(__MIKROBUS1_GPIO+0)
	MOV        R3, R27
	CALL       _c3dhall5_i2cDriverInit+0
;Click_3DHALL5_AVR.c,50 :: 		c3dhall5_init();
	CALL       _c3dhall5_init+0
;Click_3DHALL5_AVR.c,51 :: 		}
L_end_applicationInit:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _applicationInit

_applicationTask:

;Click_3DHALL5_AVR.c,53 :: 		void applicationTask()
;Click_3DHALL5_AVR.c,55 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	LDI        R27, __C3DHALL5_AXIS_X
	MOV        R2, R27
	CALL       _c3dhall5_getAxis+0
	STS        _axis_X+0, R16
	STS        _axis_X+1, R17
;Click_3DHALL5_AVR.c,56 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr2_Click_3DHALL5_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr2_Click_3DHALL5_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,57 :: 		IntToStr(axis_X, demoText);
	LDI        R27, #lo_addr(_demoText+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_demoText+0)
	MOV        R5, R27
	LDS        R2, _axis_X+0
	LDS        R3, _axis_X+1
	CALL       _IntToStr+0
;Click_3DHALL5_AVR.c,58 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(_demoText+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_demoText+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,60 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
	LDI        R27, __C3DHALL5_AXIS_Y
	MOV        R2, R27
	CALL       _c3dhall5_getAxis+0
	STS        _axis_Y+0, R16
	STS        _axis_Y+1, R17
;Click_3DHALL5_AVR.c,61 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr3_Click_3DHALL5_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr3_Click_3DHALL5_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,62 :: 		IntToStr(axis_Y, demoText);
	LDI        R27, #lo_addr(_demoText+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_demoText+0)
	MOV        R5, R27
	LDS        R2, _axis_Y+0
	LDS        R3, _axis_Y+1
	CALL       _IntToStr+0
;Click_3DHALL5_AVR.c,63 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(_demoText+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_demoText+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,65 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
	LDI        R27, __C3DHALL5_AXIS_Z
	MOV        R2, R27
	CALL       _c3dhall5_getAxis+0
	STS        _axis_Z+0, R16
	STS        _axis_Z+1, R17
;Click_3DHALL5_AVR.c,66 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr4_Click_3DHALL5_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr4_Click_3DHALL5_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,67 :: 		IntToStr(axis_Z, demoText);
	LDI        R27, #lo_addr(_demoText+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_demoText+0)
	MOV        R5, R27
	LDS        R2, _axis_Z+0
	LDS        R3, _axis_Z+1
	CALL       _IntToStr+0
;Click_3DHALL5_AVR.c,68 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(_demoText+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_demoText+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,70 :: 		mikrobus_logWrite("  ", _LOG_LINE);
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr5_Click_3DHALL5_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr5_Click_3DHALL5_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_3DHALL5_AVR.c,71 :: 		Delay_ms( 1000 );
	LDI        R18, 41
	LDI        R17, 150
	LDI        R16, 128
L_applicationTask2:
	DEC        R16
	BRNE       L_applicationTask2
	DEC        R17
	BRNE       L_applicationTask2
	DEC        R18
	BRNE       L_applicationTask2
;Click_3DHALL5_AVR.c,72 :: 		}
L_end_applicationTask:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _applicationTask

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Click_3DHALL5_AVR.c,74 :: 		void main()
;Click_3DHALL5_AVR.c,76 :: 		systemInit();
	CALL       _systemInit+0
;Click_3DHALL5_AVR.c,77 :: 		applicationInit();
	CALL       _applicationInit+0
;Click_3DHALL5_AVR.c,79 :: 		while (1)
L_main4:
;Click_3DHALL5_AVR.c,81 :: 		applicationTask();
	CALL       _applicationTask+0
;Click_3DHALL5_AVR.c,82 :: 		}
	JMP        L_main4
;Click_3DHALL5_AVR.c,83 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
