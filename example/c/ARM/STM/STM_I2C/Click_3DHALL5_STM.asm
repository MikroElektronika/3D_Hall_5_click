_systemInit:
;Click_3DHALL5_STM.c,36 :: 		void systemInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3DHALL5_STM.c,38 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3DHALL5_STM.c,39 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3DHALL5_STM.c,40 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_3DHALL5_STM.c,41 :: 		mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL5_I2C_CFG[0] );
MOVW	R0, #lo_addr(__C3DHALL5_I2C_CFG+0)
MOVT	R0, #hi_addr(__C3DHALL5_I2C_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_i2cInit+0
;Click_3DHALL5_STM.c,42 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
MOVW	R1, #9600
MOVS	R0, #32
BL	_mikrobus_logInit+0
;Click_3DHALL5_STM.c,43 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr1_Click_3DHALL5_STM+0)
MOVT	R0, #hi_addr(?lstr1_Click_3DHALL5_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,44 :: 		Delay_ms( 100 );
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_systemInit0:
SUBS	R7, R7, #1
BNE	L_systemInit0
NOP
NOP
NOP
;Click_3DHALL5_STM.c,45 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_3DHALL5_STM.c,47 :: 		void applicationInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3DHALL5_STM.c,49 :: 		c3dhall5_i2cDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_I2C, 0x1E );
MOVS	R2, #30
MOVW	R1, #lo_addr(__MIKROBUS1_I2C+0)
MOVT	R1, #hi_addr(__MIKROBUS1_I2C+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_c3dhall5_i2cDriverInit+0
;Click_3DHALL5_STM.c,50 :: 		c3dhall5_init();
BL	_c3dhall5_init+0
;Click_3DHALL5_STM.c,51 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_3DHALL5_STM.c,53 :: 		void applicationTask()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_3DHALL5_STM.c,55 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
MOVS	R0, __C3DHALL5_AXIS_X
BL	_c3dhall5_getAxis+0
MOVW	R1, #lo_addr(_axis_X+0)
MOVT	R1, #hi_addr(_axis_X+0)
STRH	R0, [R1, #0]
;Click_3DHALL5_STM.c,56 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
MOVW	R0, #lo_addr(?lstr2_Click_3DHALL5_STM+0)
MOVT	R0, #hi_addr(?lstr2_Click_3DHALL5_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,57 :: 		IntToStr(axis_X, demoText);
MOVW	R0, #lo_addr(_axis_X+0)
MOVT	R0, #hi_addr(_axis_X+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_demoText+0)
MOVT	R1, #hi_addr(_demoText+0)
BL	_IntToStr+0
;Click_3DHALL5_STM.c,58 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
MOVS	R1, #2
MOVW	R0, #lo_addr(_demoText+0)
MOVT	R0, #hi_addr(_demoText+0)
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,60 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
MOVS	R0, __C3DHALL5_AXIS_Y
BL	_c3dhall5_getAxis+0
MOVW	R1, #lo_addr(_axis_Y+0)
MOVT	R1, #hi_addr(_axis_Y+0)
STRH	R0, [R1, #0]
;Click_3DHALL5_STM.c,61 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
MOVW	R0, #lo_addr(?lstr3_Click_3DHALL5_STM+0)
MOVT	R0, #hi_addr(?lstr3_Click_3DHALL5_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,62 :: 		IntToStr(axis_Y, demoText);
MOVW	R0, #lo_addr(_axis_Y+0)
MOVT	R0, #hi_addr(_axis_Y+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_demoText+0)
MOVT	R1, #hi_addr(_demoText+0)
BL	_IntToStr+0
;Click_3DHALL5_STM.c,63 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
MOVS	R1, #2
MOVW	R0, #lo_addr(_demoText+0)
MOVT	R0, #hi_addr(_demoText+0)
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,65 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
MOVS	R0, __C3DHALL5_AXIS_Z
BL	_c3dhall5_getAxis+0
MOVW	R1, #lo_addr(_axis_Z+0)
MOVT	R1, #hi_addr(_axis_Z+0)
STRH	R0, [R1, #0]
;Click_3DHALL5_STM.c,66 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
MOVW	R0, #lo_addr(?lstr4_Click_3DHALL5_STM+0)
MOVT	R0, #hi_addr(?lstr4_Click_3DHALL5_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,67 :: 		IntToStr(axis_Z, demoText);
MOVW	R0, #lo_addr(_axis_Z+0)
MOVT	R0, #hi_addr(_axis_Z+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_demoText+0)
MOVT	R1, #hi_addr(_demoText+0)
BL	_IntToStr+0
;Click_3DHALL5_STM.c,68 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
MOVS	R1, #2
MOVW	R0, #lo_addr(_demoText+0)
MOVT	R0, #hi_addr(_demoText+0)
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,70 :: 		mikrobus_logWrite("  ", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr5_Click_3DHALL5_STM+0)
MOVT	R0, #hi_addr(?lstr5_Click_3DHALL5_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_3DHALL5_STM.c,71 :: 		Delay_ms( 1000 );
MOVW	R7, #6911
MOVT	R7, #183
NOP
NOP
L_applicationTask2:
SUBS	R7, R7, #1
BNE	L_applicationTask2
NOP
NOP
NOP
;Click_3DHALL5_STM.c,72 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_3DHALL5_STM.c,74 :: 		void main()
;Click_3DHALL5_STM.c,76 :: 		systemInit();
BL	_systemInit+0
;Click_3DHALL5_STM.c,77 :: 		applicationInit();
BL	_applicationInit+0
;Click_3DHALL5_STM.c,79 :: 		while (1)
L_main4:
;Click_3DHALL5_STM.c,81 :: 		applicationTask();
BL	_applicationTask+0
;Click_3DHALL5_STM.c,82 :: 		}
IT	AL
BAL	L_main4
;Click_3DHALL5_STM.c,83 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
