
_systemInit:

;Click_3DHALL5_PIC.c,35 :: 		void systemInit()
;Click_3DHALL5_PIC.c,37 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       7
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	MOVLW       1
	MOVWF       FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_3DHALL5_PIC.c,38 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       2
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	CLRF        FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_3DHALL5_PIC.c,39 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_OUTPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	CLRF        FARG_mikrobus_gpioInit_pin+0 
	CLRF        FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_3DHALL5_PIC.c,40 :: 		mikrobus_spiInit( _MIKROBUS1, &_C3DHALL5_SPI_CFG[0] );
	CLRF        FARG_mikrobus_spiInit_bus+0 
	MOVLW       __C3DHALL5_SPI_CFG+0
	MOVWF       FARG_mikrobus_spiInit_cfg+0 
	MOVLW       hi_addr(__C3DHALL5_SPI_CFG+0)
	MOVWF       FARG_mikrobus_spiInit_cfg+1 
	MOVLW       higher_addr(__C3DHALL5_SPI_CFG+0)
	MOVWF       FARG_mikrobus_spiInit_cfg+2 
	CALL        _mikrobus_spiInit+0, 0
;Click_3DHALL5_PIC.c,41 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
	MOVLW       16
	MOVWF       FARG_mikrobus_logInit_port+0 
	MOVLW       128
	MOVWF       FARG_mikrobus_logInit_baud+0 
	MOVLW       37
	MOVWF       FARG_mikrobus_logInit_baud+1 
	MOVLW       0
	MOVWF       FARG_mikrobus_logInit_baud+2 
	MOVWF       FARG_mikrobus_logInit_baud+3 
	CALL        _mikrobus_logInit+0, 0
;Click_3DHALL5_PIC.c,42 :: 		mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
	MOVLW       ?lstr1_Click_3DHALL5_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr1_Click_3DHALL5_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,43 :: 		Delay_ms( 100 );
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_systemInit0:
	DECFSZ      R13, 1, 1
	BRA         L_systemInit0
	DECFSZ      R12, 1, 1
	BRA         L_systemInit0
	DECFSZ      R11, 1, 1
	BRA         L_systemInit0
	NOP
;Click_3DHALL5_PIC.c,44 :: 		}
L_end_systemInit:
	RETURN      0
; end of _systemInit

_applicationInit:

;Click_3DHALL5_PIC.c,46 :: 		void applicationInit()
;Click_3DHALL5_PIC.c,48 :: 		c3dhall5_spiDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_SPI );
	MOVLW       __MIKROBUS1_GPIO+0
	MOVWF       FARG_c3dhall5_spiDriverInit_gpioObj+0 
	MOVLW       hi_addr(__MIKROBUS1_GPIO+0)
	MOVWF       FARG_c3dhall5_spiDriverInit_gpioObj+1 
	MOVLW       higher_addr(__MIKROBUS1_GPIO+0)
	MOVWF       FARG_c3dhall5_spiDriverInit_gpioObj+2 
	MOVLW       __MIKROBUS1_SPI+0
	MOVWF       FARG_c3dhall5_spiDriverInit_spiObj+0 
	MOVLW       hi_addr(__MIKROBUS1_SPI+0)
	MOVWF       FARG_c3dhall5_spiDriverInit_spiObj+1 
	MOVLW       higher_addr(__MIKROBUS1_SPI+0)
	MOVWF       FARG_c3dhall5_spiDriverInit_spiObj+2 
	CALL        _c3dhall5_spiDriverInit+0, 0
;Click_3DHALL5_PIC.c,49 :: 		c3dhall5_init();
	CALL        _c3dhall5_init+0, 0
;Click_3DHALL5_PIC.c,50 :: 		}
L_end_applicationInit:
	RETURN      0
; end of _applicationInit

_applicationTask:

;Click_3DHALL5_PIC.c,52 :: 		void applicationTask()
;Click_3DHALL5_PIC.c,54 :: 		axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
	MOVLW       __C3DHALL5_AXIS_X
	MOVWF       FARG_c3dhall5_getAxis_axis+0 
	CALL        _c3dhall5_getAxis+0, 0
	MOVF        R0, 0 
	MOVWF       _axis_X+0 
	MOVF        R1, 0 
	MOVWF       _axis_X+1 
;Click_3DHALL5_PIC.c,55 :: 		mikrobus_logWrite(" X axis : ", _LOG_TEXT);
	MOVLW       ?lstr2_Click_3DHALL5_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr2_Click_3DHALL5_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,56 :: 		IntToStr(axis_X, demoText);
	MOVF        _axis_X+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _axis_X+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _demoText+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_demoText+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Click_3DHALL5_PIC.c,57 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOVLW       _demoText+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_demoText+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,59 :: 		axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
	MOVLW       __C3DHALL5_AXIS_Y
	MOVWF       FARG_c3dhall5_getAxis_axis+0 
	CALL        _c3dhall5_getAxis+0, 0
	MOVF        R0, 0 
	MOVWF       _axis_Y+0 
	MOVF        R1, 0 
	MOVWF       _axis_Y+1 
;Click_3DHALL5_PIC.c,60 :: 		mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
	MOVLW       ?lstr3_Click_3DHALL5_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr3_Click_3DHALL5_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,61 :: 		IntToStr(axis_Y, demoText);
	MOVF        _axis_Y+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _axis_Y+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _demoText+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_demoText+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Click_3DHALL5_PIC.c,62 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOVLW       _demoText+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_demoText+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,64 :: 		axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
	MOVLW       __C3DHALL5_AXIS_Z
	MOVWF       FARG_c3dhall5_getAxis_axis+0 
	CALL        _c3dhall5_getAxis+0, 0
	MOVF        R0, 0 
	MOVWF       _axis_Z+0 
	MOVF        R1, 0 
	MOVWF       _axis_Z+1 
;Click_3DHALL5_PIC.c,65 :: 		mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
	MOVLW       ?lstr4_Click_3DHALL5_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr4_Click_3DHALL5_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,66 :: 		IntToStr(axis_Z, demoText);
	MOVF        _axis_Z+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _axis_Z+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _demoText+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_demoText+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Click_3DHALL5_PIC.c,67 :: 		mikrobus_logWrite(demoText, _LOG_LINE);
	MOVLW       _demoText+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_demoText+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,69 :: 		mikrobus_logWrite("  ", _LOG_LINE);
	MOVLW       ?lstr5_Click_3DHALL5_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr5_Click_3DHALL5_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_3DHALL5_PIC.c,70 :: 		Delay_ms( 1000 );
	MOVLW       82
	MOVWF       R11, 0
	MOVLW       43
	MOVWF       R12, 0
	MOVLW       0
	MOVWF       R13, 0
L_applicationTask1:
	DECFSZ      R13, 1, 1
	BRA         L_applicationTask1
	DECFSZ      R12, 1, 1
	BRA         L_applicationTask1
	DECFSZ      R11, 1, 1
	BRA         L_applicationTask1
	NOP
;Click_3DHALL5_PIC.c,71 :: 		}
L_end_applicationTask:
	RETURN      0
; end of _applicationTask

_main:

;Click_3DHALL5_PIC.c,73 :: 		void main()
;Click_3DHALL5_PIC.c,75 :: 		systemInit();
	CALL        _systemInit+0, 0
;Click_3DHALL5_PIC.c,76 :: 		applicationInit();
	CALL        _applicationInit+0, 0
;Click_3DHALL5_PIC.c,78 :: 		while (1)
L_main2:
;Click_3DHALL5_PIC.c,80 :: 		applicationTask();
	CALL        _applicationTask+0, 0
;Click_3DHALL5_PIC.c,81 :: 		}
	GOTO        L_main2
;Click_3DHALL5_PIC.c,82 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
