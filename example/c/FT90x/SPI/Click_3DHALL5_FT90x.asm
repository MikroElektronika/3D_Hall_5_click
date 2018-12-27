_systemInit:
;Click_3DHALL5_FT90x.c,34 :: 		void systemInit()
;Click_3DHALL5_FT90x.c,36 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
LDK.L	R2, #1
LDK.L	R1, #7
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_3DHALL5_FT90x.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
LDK.L	R2, #0
LDK.L	R1, #2
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_3DHALL5_FT90x.c,38 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL5_SPI_CFG[0] );
LDK.L	R0, #__C3DHALL5_SPI_CFG+0
MOVE.L	R1, R0
LDK.L	R0, #0
CALL	_mikrobus_spiInit+0
;Click_3DHALL5_FT90x.c,39 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
LDK.L	R1, #9600
LDK.L	R0, #16
CALL	_mikrobus_logInit+0
;Click_3DHALL5_FT90x.c,40 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
LDK.L	R0, #?lstr1_Click_3DHALL5_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,41 :: 		Delay_ms( 100 );
LPM.L	R28, #3333331
NOP	
L_systemInit0:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_systemInit0
JMP	$+8
	#3333331
NOP	
NOP	
;Click_3DHALL5_FT90x.c,42 :: 		}
L_end_systemInit:
RETURN	
; end of _systemInit
_applicationInit:
;Click_3DHALL5_FT90x.c,44 :: 		void applicationInit()
;Click_3DHALL5_FT90x.c,46 :: 		c3dhall5_spiDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_SPI );
LDK.L	R1, #__MIKROBUS1_SPI+0
LDK.L	R0, #__MIKROBUS1_GPIO+0
CALL	_c3dhall5_spiDriverInit+0
;Click_3DHALL5_FT90x.c,47 :: 		c3dhall5_init();
CALL	_c3dhall5_init+0
;Click_3DHALL5_FT90x.c,48 :: 		}
L_end_applicationInit:
RETURN	
; end of _applicationInit
_applicationTask:
;Click_3DHALL5_FT90x.c,50 :: 		void applicationTask()
;Click_3DHALL5_FT90x.c,52 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
LDK.L	R0, __C3DHALL5_AXIS_X
CALL	_c3dhall5_getAxis+0
STA.S	_axis_X+0, R0
;Click_3DHALL5_FT90x.c,53 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
LDK.L	R0, #?lstr2_Click_3DHALL5_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,54 :: 		IntToStr(axis_X, demoText);
LDA.S	R0, _axis_X+0
BEXTS.L	R0, R0, #0
LDK.L	R1, #_demoText+0
CALL	_IntToStr+0
;Click_3DHALL5_FT90x.c,55 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
LDK.L	R1, #2
LDK.L	R0, #_demoText+0
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,57 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
LDK.L	R0, __C3DHALL5_AXIS_Y
CALL	_c3dhall5_getAxis+0
STA.S	_axis_Y+0, R0
;Click_3DHALL5_FT90x.c,58 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
LDK.L	R0, #?lstr3_Click_3DHALL5_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,59 :: 		IntToStr(axis_Y, demoText);
LDA.S	R0, _axis_Y+0
BEXTS.L	R0, R0, #0
LDK.L	R1, #_demoText+0
CALL	_IntToStr+0
;Click_3DHALL5_FT90x.c,60 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
LDK.L	R1, #2
LDK.L	R0, #_demoText+0
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,62 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
LDK.L	R0, __C3DHALL5_AXIS_Z
CALL	_c3dhall5_getAxis+0
STA.S	_axis_Z+0, R0
;Click_3DHALL5_FT90x.c,63 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
LDK.L	R0, #?lstr4_Click_3DHALL5_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,64 :: 		IntToStr(axis_Z, demoText);
LDA.S	R0, _axis_Z+0
BEXTS.L	R0, R0, #0
LDK.L	R1, #_demoText+0
CALL	_IntToStr+0
;Click_3DHALL5_FT90x.c,65 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
LDK.L	R1, #2
LDK.L	R0, #_demoText+0
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,67 :: 		mikrobus_logWrite("  ", _LOG_LINE);
LDK.L	R0, #?lstr5_Click_3DHALL5_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_3DHALL5_FT90x.c,68 :: 		Delay_ms( 1000 );
LPM.L	R28, #33333331
NOP	
L_applicationTask2:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_applicationTask2
JMP	$+8
	#33333331
NOP	
NOP	
;Click_3DHALL5_FT90x.c,69 :: 		}
L_end_applicationTask:
RETURN	
; end of _applicationTask
_main:
;Click_3DHALL5_FT90x.c,71 :: 		void main()
LDK.L	SP, #43605
;Click_3DHALL5_FT90x.c,73 :: 		systemInit();
CALL	_systemInit+0
;Click_3DHALL5_FT90x.c,74 :: 		applicationInit();
CALL	_applicationInit+0
;Click_3DHALL5_FT90x.c,76 :: 		while (1)
L_main4:
;Click_3DHALL5_FT90x.c,78 :: 		applicationTask();
CALL	_applicationTask+0
;Click_3DHALL5_FT90x.c,79 :: 		}
JMP	L_main4
;Click_3DHALL5_FT90x.c,80 :: 		}
L_end_main:
L__main_end_loop:
JMP	L__main_end_loop
; end of _main
