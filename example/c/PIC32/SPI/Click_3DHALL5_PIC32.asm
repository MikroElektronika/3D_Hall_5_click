_systemInit:
;Click_3DHALL5_PIC32.c,35 :: 		void systemInit()
ADDIU	SP, SP, -16
SW	RA, 0(SP)
;Click_3DHALL5_PIC32.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
ORI	R27, R0, 1
ORI	R26, R0, 7
MOVZ	R25, R0, R0
JAL	_mikrobus_gpioInit+0
NOP	
;Click_3DHALL5_PIC32.c,38 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVZ	R27, R0, R0
ORI	R26, R0, 2
MOVZ	R25, R0, R0
JAL	_mikrobus_gpioInit+0
NOP	
;Click_3DHALL5_PIC32.c,39 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_OUTPUT );
MOVZ	R27, R0, R0
MOVZ	R26, R0, R0
MOVZ	R25, R0, R0
JAL	_mikrobus_gpioInit+0
NOP	
;Click_3DHALL5_PIC32.c,40 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL5_SPI_CFG[0] );
LUI	R2, hi_addr(__C3DHALL5_SPI_CFG+0)
ORI	R2, R2, lo_addr(__C3DHALL5_SPI_CFG+0)
MOVZ	R26, R2, R0
MOVZ	R25, R0, R0
JAL	_mikrobus_spiInit+0
NOP	
;Click_3DHALL5_PIC32.c,41 :: 		mikrobus_logInit( _LOG_USBUART_B, 9600 );
ORI	R26, R0, 9600
ORI	R25, R0, 48
JAL	_mikrobus_logInit+0
NOP	
;Click_3DHALL5_PIC32.c,42 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
ORI	R26, R0, 2
LUI	R25, hi_addr(?lstr1_Click_3DHALL5_PIC32+0)
ORI	R25, R25, lo_addr(?lstr1_Click_3DHALL5_PIC32+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,43 :: 		Delay_ms( 100 );
LUI	R24, 40
ORI	R24, R24, 45226
L_systemInit0:
ADDIU	R24, R24, -1
BNE	R24, R0, L_systemInit0
NOP	
;Click_3DHALL5_PIC32.c,44 :: 		}
L_end_systemInit:
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 16
JR	RA
NOP	
; end of _systemInit
_applicationInit:
;Click_3DHALL5_PIC32.c,46 :: 		void applicationInit()
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;Click_3DHALL5_PIC32.c,48 :: 		c3dhall5_spiDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_SPI );
SW	R25, 4(SP)
SW	R26, 8(SP)
LUI	R26, hi_addr(__MIKROBUS1_SPI+0)
ORI	R26, R26, lo_addr(__MIKROBUS1_SPI+0)
LUI	R25, hi_addr(__MIKROBUS1_GPIO+0)
ORI	R25, R25, lo_addr(__MIKROBUS1_GPIO+0)
JAL	_c3dhall5_spiDriverInit+0
NOP	
;Click_3DHALL5_PIC32.c,49 :: 		c3dhall5_init();
JAL	_c3dhall5_init+0
NOP	
;Click_3DHALL5_PIC32.c,50 :: 		}
L_end_applicationInit:
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _applicationInit
_applicationTask:
;Click_3DHALL5_PIC32.c,52 :: 		void applicationTask()
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;Click_3DHALL5_PIC32.c,54 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
SW	R25, 4(SP)
SW	R26, 8(SP)
ORI	R25, R0, __C3DHALL5_AXIS_X
JAL	_c3dhall5_getAxis+0
NOP	
SH	R2, Offset(_axis_X+0)(GP)
;Click_3DHALL5_PIC32.c,55 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
ORI	R26, R0, 1
LUI	R25, hi_addr(?lstr2_Click_3DHALL5_PIC32+0)
ORI	R25, R25, lo_addr(?lstr2_Click_3DHALL5_PIC32+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,56 :: 		IntToStr(axis_X, demoText);
LUI	R26, hi_addr(_demoText+0)
ORI	R26, R26, lo_addr(_demoText+0)
LH	R25, Offset(_axis_X+0)(GP)
JAL	_IntToStr+0
NOP	
;Click_3DHALL5_PIC32.c,57 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
ORI	R26, R0, 2
LUI	R25, hi_addr(_demoText+0)
ORI	R25, R25, lo_addr(_demoText+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,59 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
ORI	R25, R0, __C3DHALL5_AXIS_Y
JAL	_c3dhall5_getAxis+0
NOP	
SH	R2, Offset(_axis_Y+0)(GP)
;Click_3DHALL5_PIC32.c,60 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
ORI	R26, R0, 1
LUI	R25, hi_addr(?lstr3_Click_3DHALL5_PIC32+0)
ORI	R25, R25, lo_addr(?lstr3_Click_3DHALL5_PIC32+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,61 :: 		IntToStr(axis_Y, demoText);
LUI	R26, hi_addr(_demoText+0)
ORI	R26, R26, lo_addr(_demoText+0)
LH	R25, Offset(_axis_Y+0)(GP)
JAL	_IntToStr+0
NOP	
;Click_3DHALL5_PIC32.c,62 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
ORI	R26, R0, 2
LUI	R25, hi_addr(_demoText+0)
ORI	R25, R25, lo_addr(_demoText+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,64 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
ORI	R25, R0, __C3DHALL5_AXIS_Z
JAL	_c3dhall5_getAxis+0
NOP	
SH	R2, Offset(_axis_Z+0)(GP)
;Click_3DHALL5_PIC32.c,65 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
ORI	R26, R0, 1
LUI	R25, hi_addr(?lstr4_Click_3DHALL5_PIC32+0)
ORI	R25, R25, lo_addr(?lstr4_Click_3DHALL5_PIC32+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,66 :: 		IntToStr(axis_Z, demoText);
LUI	R26, hi_addr(_demoText+0)
ORI	R26, R26, lo_addr(_demoText+0)
LH	R25, Offset(_axis_Z+0)(GP)
JAL	_IntToStr+0
NOP	
;Click_3DHALL5_PIC32.c,67 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
ORI	R26, R0, 2
LUI	R25, hi_addr(_demoText+0)
ORI	R25, R25, lo_addr(_demoText+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,69 :: 		mikrobus_logWrite("  ", _LOG_LINE);
ORI	R26, R0, 2
LUI	R25, hi_addr(?lstr5_Click_3DHALL5_PIC32+0)
ORI	R25, R25, lo_addr(?lstr5_Click_3DHALL5_PIC32+0)
JAL	_mikrobus_logWrite+0
NOP	
;Click_3DHALL5_PIC32.c,70 :: 		Delay_ms( 1000 );
LUI	R24, 406
ORI	R24, R24, 59050
L_applicationTask2:
ADDIU	R24, R24, -1
BNE	R24, R0, L_applicationTask2
NOP	
;Click_3DHALL5_PIC32.c,71 :: 		}
L_end_applicationTask:
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _applicationTask
_main:
;Click_3DHALL5_PIC32.c,73 :: 		void main()
;Click_3DHALL5_PIC32.c,75 :: 		systemInit();
JAL	_systemInit+0
NOP	
;Click_3DHALL5_PIC32.c,76 :: 		applicationInit();
JAL	_applicationInit+0
NOP	
;Click_3DHALL5_PIC32.c,78 :: 		while (1)
L_main4:
;Click_3DHALL5_PIC32.c,80 :: 		applicationTask();
JAL	_applicationTask+0
NOP	
;Click_3DHALL5_PIC32.c,81 :: 		}
J	L_main4
NOP	
;Click_3DHALL5_PIC32.c,82 :: 		}
L_end_main:
L__main_end_loop:
J	L__main_end_loop
NOP	
; end of _main
