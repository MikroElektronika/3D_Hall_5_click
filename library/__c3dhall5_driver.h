/*
    __c3dhall5_driver.h

-----------------------------------------------------------------------------

  This file is part of mikroSDK.
  
  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

/**
@file   __c3dhall5_driver.h
@brief    3DHALL5 Driver
@mainpage 3DHALL5 Click
@{

@image html libstock_fb_view.jpg

@}

@defgroup   C3DHALL5
@brief      3DHALL5 Click Driver
@{

| Global Library Prefix | **C3DHALL5** |
|:---------------------:|:-----------------:|
| Version               | **1.0.0**    |
| Date                  | **maj 2018.**      |
| Developer             | **Katarina Perendic**     |

*/
/* -------------------------------------------------------------------------- */

#include "stdint.h"

#ifndef _C3DHALL5_H_
#define _C3DHALL5_H_

/** 
 * @macro T_C3DHALL5_P
 * @brief Driver Abstract type 
 */
#define T_C3DHALL5_P    const uint8_t*

/** @defgroup C3DHALL5_COMPILE Compilation Config */              /** @{ */

   #define   __C3DHALL5_DRV_SPI__                            /**<     @macro __C3DHALL5_DRV_SPI__  @brief SPI driver selector */
   #define   __C3DHALL5_DRV_I2C__                            /**<     @macro __C3DHALL5_DRV_I2C__  @brief I2C driver selector */                                          
// #define   __C3DHALL5_DRV_UART__                           /**<     @macro __C3DHALL5_DRV_UART__ @brief UART driver selector */ 

                                                                       /** @} */
/** @defgroup C3DHALL5_VAR Variables */                           /** @{ */

/* Axis */
extern const uint8_t _C3DHALL5_AXIS_X;
extern const uint8_t _C3DHALL5_AXIS_Y;
extern const uint8_t _C3DHALL5_AXIS_Z;

extern const uint8_t _C3DHALL5_I_AM;

/* Offset axis */
extern const uint8_t _C3DHALL5_OFFSET_AXIS_X;
extern const uint8_t _C3DHALL5_OFFSET_AXIS_Y;
extern const uint8_t _C3DHALL5_OFFSET_AXIS_Z;

/* Register */
extern const uint8_t _C3DHALL5_REG_OFFSET_X_LSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_X_MSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Y_LSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Y_MSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Z_LSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Z_MSB;
extern const uint8_t _C3DHALL5_REG_WHO_AM_I    ;
extern const uint8_t _C3DHALL5_REG_CONFIG_A    ;
extern const uint8_t _C3DHALL5_REG_CONFIG_B    ;
extern const uint8_t _C3DHALL5_REG_CONFIG_C    ;
extern const uint8_t _C3DHALL5_REG_INT_CTRL    ;
extern const uint8_t _C3DHALL5_REG_INT_SOURCE  ;
extern const uint8_t _C3DHALL5_REG_INT_THS_LSB ;
extern const uint8_t _C3DHALL5_REG_INT_THS_MSB ;
extern const uint8_t _C3DHALL5_REG_STATUS      ;
extern const uint8_t _C3DHALL5_REG_X_AXIS_LSB  ;
extern const uint8_t _C3DHALL5_REG_X_AXIS_MSB  ;
extern const uint8_t _C3DHALL5_REG_Y_AXIS_LSB  ;
extern const uint8_t _C3DHALL5_REG_Y_AXIS_MSB  ;
extern const uint8_t _C3DHALL5_REG_Z_AXIS_LSB  ;
extern const uint8_t _C3DHALL5_REG_Z_AXIS_MSB  ;
extern const uint8_t _C3DHALL5_REG_TEMP_LSB    ;
extern const uint8_t _C3DHALL5_REG_TEMP_MSB    ;

/* Config register A */
extern const uint8_t _C3DHALL5_CFG_A_COMP_TEMP_ENABLE    ;
extern const uint8_t _C3DHALL5_CFG_A_COMP_TEMP_DISABLE   ;
extern const uint8_t _C3DHALL5_CFG_A_REBOOT_MEM_CONTENT  ;
extern const uint8_t _C3DHALL5_CFG_A_NORMAL_MODE         ;
extern const uint8_t _C3DHALL5_CFG_A_SOFTRESET           ;
extern const uint8_t _C3DHALL5_CFG_A_HIGH_RESOLUTION_MODE;
extern const uint8_t _C3DHALL5_CFG_A_LOW_POWER_MODE      ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_10Hz            ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_20Hz            ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_50Hz            ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_100Hz           ;
extern const uint8_t _C3DHALL5_CFG_A_MODE_CONTINUOUS     ;
extern const uint8_t _C3DHALL5_CFG_A_MODE_SINGLE         ;
extern const uint8_t _C3DHALL5_CFG_A_MODE_IDLE           ;

/* Config register B */
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_IN_SINGLE_MODE_ENABLE ;
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_IN_SINGLE_MODE_DISABLE;
extern const uint8_t _C3DHALL5_CFG_B_INT_ON_DATA_OFF              ;
extern const uint8_t _C3DHALL5_CFG_B_SET_PULSE_63_ODR             ;
extern const uint8_t _C3DHALL5_CFG_B_SET_PULSE_PD_CONDITION       ;
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_ENABLE                ;
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_DISABLE               ;
extern const uint8_t _C3DHALL5_CFG_B_LPF_DISABLE_ODR_2            ;
extern const uint8_t _C3DHALL5_CFG_B_LPF_ENABLE_ODR_4             ;

/* Config register C */
extern const uint8_t _C3DHALL5_CFG_C_INT_ON_PIN        ;
extern const uint8_t _C3DHALL5_CFG_C_INT_ON_PIN_DISABLE;
extern const uint8_t _C3DHALL5_CFG_C_I2C_DISABLE       ;
extern const uint8_t _C3DHALL5_CFG_C_BLE_ENABLE        ;
extern const uint8_t _C3DHALL5_CFG_C_SELF_TEST         ;
extern const uint8_t _C3DHALL5_CFG_C_DRDY_ON_PIN       ;

/* INT control register */
extern const uint8_t _C3DHALL5_INT_CTRL_X_AXIS_ENABLE       ;
extern const uint8_t _C3DHALL5_INT_CTRL_Y_AXIS_ENABLE       ;
extern const uint8_t _C3DHALL5_INT_CTRL_Z_AXIS_ENABLE       ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEA_0_SIGNALS_AN_INT;
extern const uint8_t _C3DHALL5_INT_CTRL_IEA_1_SIGNALS_AN_INT;
extern const uint8_t _C3DHALL5_INT_CTRL_IEL_INT_IS_PILSED   ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEL_INT_IS_LATCHED  ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEN_INT_ENABLE      ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEN_INT_DISABLE     ;

/* INT source register */
extern const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_X;
extern const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_Y;
extern const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_Z;
extern const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_X;
extern const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_Y;
extern const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_N;

/* Satatus register */
extern const uint8_t _C3DHALL5_STATUS_XYZ_DATA_OVERRUN;
extern const uint8_t _C3DHALL5_STATUS_Z_DATA_OVERRUN  ;
extern const uint8_t _C3DHALL5_STATUS_Y_DATA_OVERRUN  ;
extern const uint8_t _C3DHALL5_STATUS_X_DATA_OVERRUN  ;
extern const uint8_t _C3DHALL5_STATUS_XYZ_NEW_DATA    ;
extern const uint8_t _C3DHALL5_STATUS_Z_NEW_DATA      ;
extern const uint8_t _C3DHALL5_STATUS_Y_NEW_DATA      ;
extern const uint8_t _C3DHALL5_STATUS_X_NEW_DATA      ;

                                                                       /** @} */
/** @defgroup C3DHALL5_TYPES Types */                             /** @{ */



                                                                       /** @} */
#ifdef __cplusplus
extern "C"{
#endif

/** @defgroup C3DHALL5_INIT Driver Initialization */              /** @{ */

#ifdef   __C3DHALL5_DRV_SPI__
void c3dhall5_spiDriverInit(T_C3DHALL5_P gpioObj, T_C3DHALL5_P spiObj);
#endif
#ifdef   __C3DHALL5_DRV_I2C__
void c3dhall5_i2cDriverInit(T_C3DHALL5_P gpioObj, T_C3DHALL5_P i2cObj, uint8_t slave);
#endif
#ifdef   __C3DHALL5_DRV_UART__
void c3dhall5_uartDriverInit(T_C3DHALL5_P gpioObj, T_C3DHALL5_P uartObj);
#endif

// GPIO Only Drivers - remove in other cases
void c3dhall5_gpioDriverInit(T_C3DHALL5_P gpioObj);
                                                                       /** @} */
/** @defgroup C3DHALL5_FUNC Driver Functions */                   /** @{ */

/**
 * @brief Functions for write one byte in register
 *
 * @param[in] reg    Register in which the data will be written
 * @param[in] _data  Data which be written in the register
 */
void c3dhall5_writeByte(uint8_t reg, uint8_t _data);

/**
 * @brief Functions for read byte from register
 *
 * @param[in] reg    Register which will be read
 * @retval one byte data which is read from the register
 */
uint8_t c3dhall5_readByte(uint8_t reg);

/**
 * @brief Functions for read data from register
 *
 * @param[in] reg     Register which will be read
 * @retval two byte data which is read from the register
 */
int16_t c3dhall5_readData(uint8_t reg);


/**
 * @brief Functions for initialize the chip
 *
 * @retval Information whether the chip is successfully initialized or not.
 */
uint8_t c3dhall5_init();

/**
 * @brief Functions for read temperature
 *
 * @retval Temperature data in C
 */
float c3dhall5_temperature();

/**
 * @brief Functions for read int pin
 *
 * @retval state int pin
 */
uint8_t c3dhall5_getInterrupt();

/**
 * @brief Functions for read axis data
 *
 * @param[ in ] axis    Axis data which will be read
 * @retval Axis data 
 */
int16_t c3dhall5_getAxis(uint8_t axis);

/**
 * @brief Functions for set offset
 *
 * @param[ in ] offset_axis      Axis which offset be set
 * @param[ in ] offset           Offset which be set
 */
void c3dhall5_setOffset(uint8_t offset_axis, int16_t offset);


                                                                       /** @} */
#ifdef __cplusplus
} // extern "C"
#endif
#endif

/**
    @example Click_3DHALL5_STM.c
    @example Click_3DHALL5_TIVA.c
    @example Click_3DHALL5_CEC.c
    @example Click_3DHALL5_KINETIS.c
    @example Click_3DHALL5_MSP.c
    @example Click_3DHALL5_PIC.c
    @example Click_3DHALL5_PIC32.c
    @example Click_3DHALL5_DSPIC.c
    @example Click_3DHALL5_AVR.c
    @example Click_3DHALL5_FT90x.c
    @example Click_3DHALL5_STM.mbas
    @example Click_3DHALL5_TIVA.mbas
    @example Click_3DHALL5_CEC.mbas
    @example Click_3DHALL5_KINETIS.mbas
    @example Click_3DHALL5_MSP.mbas
    @example Click_3DHALL5_PIC.mbas
    @example Click_3DHALL5_PIC32.mbas
    @example Click_3DHALL5_DSPIC.mbas
    @example Click_3DHALL5_AVR.mbas
    @example Click_3DHALL5_FT90x.mbas
    @example Click_3DHALL5_STM.mpas
    @example Click_3DHALL5_TIVA.mpas
    @example Click_3DHALL5_CEC.mpas
    @example Click_3DHALL5_KINETIS.mpas
    @example Click_3DHALL5_MSP.mpas
    @example Click_3DHALL5_PIC.mpas
    @example Click_3DHALL5_PIC32.mpas
    @example Click_3DHALL5_DSPIC.mpas
    @example Click_3DHALL5_AVR.mpas
    @example Click_3DHALL5_FT90x.mpas
*/                                                                     /** @} */
/* -------------------------------------------------------------------------- */
/*
  __c3dhall5_driver.h

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by the MikroElektonika.

4. Neither the name of the MikroElektonika nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY MIKROELEKTRONIKA ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL MIKROELEKTRONIKA BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------- */