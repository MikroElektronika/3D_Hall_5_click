_systemInit:
;Click_3DHALL5_TIVA.c,35 :: 		void systemInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3DHALL5_TIVA.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3DHALL5_TIVA.c,38 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3DHALL5_TIVA.c,39 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3DHALL5_TIVA.c,40 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL5_SPI_CFG[0] );
MOVW	R0, #lo_addr(__C3DHALL5_SPI_CFG+0)
MOVT	R0, #hi_addr(__C3DHALL5_SPI_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_spiInit+0
;Click_3DHALL5_TIVA.c,41 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
MOVW	R1, #9600
MOVS	R0, #32
BL	_mikrobus_logInit+0
;Click_3DHALL5_TIVA.c,42 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr1_Click_3DHALL5_TIVA+0)
MOVT	R0, #hi_addr(?lstr1_Click_3DHALL5_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,43 :: 		Delay_ms( 100 );
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_systemInit0:
SUBS	R7, R7, #1
BNE	L_systemInit0
NOP
NOP
NOP
;Click_3DHALL5_TIVA.c,44 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_3DHALL5_TIVA.c,46 :: 		void applicationInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3DHALL5_TIVA.c,48 :: 		c3dhall5_spiDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_SPI );
MOVW	R1, #lo_addr(__MIKROBUS1_SPI+0)
MOVT	R1, #hi_addr(__MIKROBUS1_SPI+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_c3dhall5_spiDriverInit+0
;Click_3DHALL5_TIVA.c,49 :: 		c3dhall5_init();
BL	_c3dhall5_init+0
;Click_3DHALL5_TIVA.c,50 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_3DHALL5_TIVA.c,52 :: 		void applicationTask()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3DHALL5_TIVA.c,54 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
MOVS	R0, __C3DHALL5_AXIS_X
BL	_c3dhall5_getAxis+0
MOVW	R1, #lo_addr(_axis_X+0)
MOVT	R1, #hi_addr(_axis_X+0)
STRH	R0, [R1, #0]
;Click_3DHALL5_TIVA.c,55 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
MOVW	R0, #lo_addr(?lstr2_Click_3DHALL5_TIVA+0)
MOVT	R0, #hi_addr(?lstr2_Click_3DHALL5_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,56 :: 		IntToStr(axis_X, demoText);
MOVW	R0, #lo_addr(_axis_X+0)
MOVT	R0, #hi_addr(_axis_X+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_demoText+0)
MOVT	R1, #hi_addr(_demoText+0)
BL	_IntToStr+0
;Click_3DHALL5_TIVA.c,57 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
MOVS	R1, #2
MOVW	R0, #lo_addr(_demoText+0)
MOVT	R0, #hi_addr(_demoText+0)
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,59 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
MOVS	R0, __C3DHALL5_AXIS_Y
BL	_c3dhall5_getAxis+0
MOVW	R1, #lo_addr(_axis_Y+0)
MOVT	R1, #hi_addr(_axis_Y+0)
STRH	R0, [R1, #0]
;Click_3DHALL5_TIVA.c,60 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
MOVW	R0, #lo_addr(?lstr3_Click_3DHALL5_TIVA+0)
MOVT	R0, #hi_addr(?lstr3_Click_3DHALL5_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,61 :: 		IntToStr(axis_Y, demoText);
MOVW	R0, #lo_addr(_axis_Y+0)
MOVT	R0, #hi_addr(_axis_Y+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_demoText+0)
MOVT	R1, #hi_addr(_demoText+0)
BL	_IntToStr+0
;Click_3DHALL5_TIVA.c,62 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
MOVS	R1, #2
MOVW	R0, #lo_addr(_demoText+0)
MOVT	R0, #hi_addr(_demoText+0)
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,64 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
MOVS	R0, __C3DHALL5_AXIS_Z
BL	_c3dhall5_getAxis+0
MOVW	R1, #lo_addr(_axis_Z+0)
MOVT	R1, #hi_addr(_axis_Z+0)
STRH	R0, [R1, #0]
;Click_3DHALL5_TIVA.c,65 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
MOVW	R0, #lo_addr(?lstr4_Click_3DHALL5_TIVA+0)
MOVT	R0, #hi_addr(?lstr4_Click_3DHALL5_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,66 :: 		IntToStr(axis_Z, demoText);
MOVW	R0, #lo_addr(_axis_Z+0)
MOVT	R0, #hi_addr(_axis_Z+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_demoText+0)
MOVT	R1, #hi_addr(_demoText+0)
BL	_IntToStr+0
;Click_3DHALL5_TIVA.c,67 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
MOVS	R1, #2
MOVW	R0, #lo_addr(_demoText+0)
MOVT	R0, #hi_addr(_demoText+0)
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,69 :: 		mikrobus_logWrite("  ", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr5_Click_3DHALL5_TIVA+0)
MOVT	R0, #hi_addr(?lstr5_Click_3DHALL5_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3DHALL5_TIVA.c,70 :: 		Delay_ms( 1000 );
MOVW	R7, #23038
MOVT	R7, #610
NOP
NOP
L_applicationTask2:
SUBS	R7, R7, #1
BNE	L_applicationTask2
NOP
NOP
NOP
;Click_3DHALL5_TIVA.c,71 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_3DHALL5_TIVA.c,73 :: 		void main()
;Click_3DHALL5_TIVA.c,75 :: 		systemInit();
BL	_systemInit+0
;Click_3DHALL5_TIVA.c,76 :: 		applicationInit();
BL	_applicationInit+0
;Click_3DHALL5_TIVA.c,78 :: 		while (1)
L_main4:
;Click_3DHALL5_TIVA.c,80 :: 		applicationTask();
BL	_applicationTask+0
;Click_3DHALL5_TIVA.c,81 :: 		}
IT	AL
BAL	L_main4
;Click_3DHALL5_TIVA.c,82 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
