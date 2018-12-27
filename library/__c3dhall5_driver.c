/*
    __c3dhall5_driver.c

-----------------------------------------------------------------------------

  This file is part of mikroSDK.

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

#include "__c3dhall5_driver.h"
#include "__c3dhall5_hal.c"

/* ------------------------------------------------------------------- MACROS */

const uint8_t _C3DHALL5_I_AM = 0x40;

/* Axis */
const uint8_t _C3DHALL5_AXIS_X = 0x68;
const uint8_t _C3DHALL5_AXIS_Y = 0x6A;
const uint8_t _C3DHALL5_AXIS_Z = 0x6C;

/* Offset axis */
const uint8_t _C3DHALL5_OFFSET_AXIS_X = 0x45;
const uint8_t _C3DHALL5_OFFSET_AXIS_Y = 0x47;
const uint8_t _C3DHALL5_OFFSET_AXIS_Z = 0x49;

/* Register */
const uint8_t _C3DHALL5_REG_OFFSET_X_LSB = 0x45;
const uint8_t _C3DHALL5_REG_OFFSET_X_MSB = 0x46;
const uint8_t _C3DHALL5_REG_OFFSET_Y_LSB = 0x47;
const uint8_t _C3DHALL5_REG_OFFSET_Y_MSB = 0x48;
const uint8_t _C3DHALL5_REG_OFFSET_Z_LSB = 0x49;
const uint8_t _C3DHALL5_REG_OFFSET_Z_MSB = 0x4A;
const uint8_t _C3DHALL5_REG_WHO_AM_I     = 0x4F;
const uint8_t _C3DHALL5_REG_CONFIG_A     = 0x60;
const uint8_t _C3DHALL5_REG_CONFIG_B     = 0x61;
const uint8_t _C3DHALL5_REG_CONFIG_C     = 0x62;
const uint8_t _C3DHALL5_REG_INT_CTRL     = 0x63;
const uint8_t _C3DHALL5_REG_INT_SOURCE   = 0x64;
const uint8_t _C3DHALL5_REG_INT_THS_LSB  = 0x65;
const uint8_t _C3DHALL5_REG_INT_THS_MSB  = 0x66;
const uint8_t _C3DHALL5_REG_STATUS       = 0x67;
const uint8_t _C3DHALL5_REG_X_AXIS_LSB   = 0x68;
const uint8_t _C3DHALL5_REG_X_AXIS_MSB   = 0x69;
const uint8_t _C3DHALL5_REG_Y_AXIS_LSB   = 0x6A;
const uint8_t _C3DHALL5_REG_Y_AXIS_MSB   = 0x6B;
const uint8_t _C3DHALL5_REG_Z_AXIS_LSB   = 0x6C;
const uint8_t _C3DHALL5_REG_Z_AXIS_MSB   = 0x6D;
const uint8_t _C3DHALL5_REG_TEMP_LSB     = 0x6E;
const uint8_t _C3DHALL5_REG_TEMP_MSB     = 0x6F;

/* Config register A */
const uint8_t _C3DHALL5_CFG_A_COMP_TEMP_ENABLE     = 0x80;
const uint8_t _C3DHALL5_CFG_A_COMP_TEMP_DISABLE    = 0x00;
const uint8_t _C3DHALL5_CFG_A_REBOOT_MEM_CONTENT   = 0x40;
const uint8_t _C3DHALL5_CFG_A_NORMAL_MODE          = 0x00;
const uint8_t _C3DHALL5_CFG_A_SOFTRESET            = 0x20;
const uint8_t _C3DHALL5_CFG_A_HIGH_RESOLUTION_MODE = 0x00;
const uint8_t _C3DHALL5_CFG_A_LOW_POWER_MODE       = 0x10;
const uint8_t _C3DHALL5_CFG_A_ODR_10Hz             = 0x00;
const uint8_t _C3DHALL5_CFG_A_ODR_20Hz             = 0x04;
const uint8_t _C3DHALL5_CFG_A_ODR_50Hz             = 0x08;
const uint8_t _C3DHALL5_CFG_A_ODR_100Hz            = 0x0C;
const uint8_t _C3DHALL5_CFG_A_MODE_CONTINUOUS      = 0x00;
const uint8_t _C3DHALL5_CFG_A_MODE_SINGLE          = 0x01;
const uint8_t _C3DHALL5_CFG_A_MODE_IDLE            = 0x02;

/* Config register B */
const uint8_t _C3DHALL5_CFG_B_OFFSET_IN_SINGLE_MODE_ENABLE    = 0x10;
const uint8_t _C3DHALL5_CFG_B_OFFSET_IN_SINGLE_MODE_DISABLE   = 0x00;
const uint8_t _C3DHALL5_CFG_B_INT_ON_DATA_OFF                 = 0x08;
const uint8_t _C3DHALL5_CFG_B_SET_PULSE_63_ODR                = 0x00;
const uint8_t _C3DHALL5_CFG_B_SET_PULSE_PD_CONDITION          = 0x04;
const uint8_t _C3DHALL5_CFG_B_OFFSET_ENABLE                   = 0x02;
const uint8_t _C3DHALL5_CFG_B_OFFSET_DISABLE                  = 0x00;
const uint8_t _C3DHALL5_CFG_B_LPF_DISABLE_ODR_2               = 0x00;
const uint8_t _C3DHALL5_CFG_B_LPF_ENABLE_ODR_4                = 0x01;

/* Config register C */
const uint8_t _C3DHALL5_CFG_C_INT_ON_PIN           = 0x40;
const uint8_t _C3DHALL5_CFG_C_INT_ON_PIN_DISABLE   = 0x00;
const uint8_t _C3DHALL5_CFG_C_I2C_DISABLE          = 0x20;
const uint8_t _C3DHALL5_CFG_C_BLE_ENABLE           = 0x08;
const uint8_t _C3DHALL5_CFG_C_SELF_TEST            = 0x02;
const uint8_t _C3DHALL5_CFG_C_DRDY_ON_PIN          = 0x01;

/* INT control register */
const uint8_t _C3DHALL5_INT_CTRL_X_AXIS_ENABLE         = 0x80;
const uint8_t _C3DHALL5_INT_CTRL_Y_AXIS_ENABLE         = 0x40;
const uint8_t _C3DHALL5_INT_CTRL_Z_AXIS_ENABLE         = 0x20;
const uint8_t _C3DHALL5_INT_CTRL_IEA_0_SIGNALS_AN_INT  = 0x00;
const uint8_t _C3DHALL5_INT_CTRL_IEA_1_SIGNALS_AN_INT  = 0x04;
const uint8_t _C3DHALL5_INT_CTRL_IEL_INT_IS_PILSED     = 0x00;
const uint8_t _C3DHALL5_INT_CTRL_IEL_INT_IS_LATCHED    = 0x02;
const uint8_t _C3DHALL5_INT_CTRL_IEN_INT_ENABLE        = 0x01;
const uint8_t _C3DHALL5_INT_CTRL_IEN_INT_DISABLE       = 0x00;

/* INT source register */
const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_X   = 0x80;
const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_Y   = 0x40;
const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_Z   = 0x20;
const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_X   = 0x10;
const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_Y   = 0x08;
const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_N   = 0x04;

/* Satatus register */
const uint8_t _C3DHALL5_STATUS_XYZ_DATA_OVERRUN   = 0x80;
const uint8_t _C3DHALL5_STATUS_Z_DATA_OVERRUN     = 0x40;
const uint8_t _C3DHALL5_STATUS_Y_DATA_OVERRUN     = 0x20;
const uint8_t _C3DHALL5_STATUS_X_DATA_OVERRUN     = 0x10;
const uint8_t _C3DHALL5_STATUS_XYZ_NEW_DATA       = 0x08;
const uint8_t _C3DHALL5_STATUS_Z_NEW_DATA         = 0x04;
const uint8_t _C3DHALL5_STATUS_Y_NEW_DATA         = 0x02;
const uint8_t _C3DHALL5_STATUS_X_NEW_DATA         = 0x01;

/* Flags */
static uint8_t DEVICE_ERROR = 0x02;
static uint8_t DEVICE_OK    = 0x00;

static const uint8_t _I2C_COMUNICATION = 2;
static const uint8_t _SPI_COMUNICATION = 1;

/* ---------------------------------------------------------------- VARIABLES */

#ifdef   __C3DHALL5_DRV_I2C__
static uint8_t _slaveAddress;
#endif

static uint8_t _comunication;

/* -------------------------------------------- PRIVATE FUNCTION DECLARATIONS */

static uint8_t _waitStatus(uint8_t status);

/* --------------------------------------------- PRIVATE FUNCTION DEFINITIONS */

static uint8_t _waitStatus(uint8_t status)
{
    uint8_t readData;
    uint8_t cnt = 0;
    
    for(cnt = 0; cnt < 10; cnt++ )
    {
       readData = c3dhall5_readByte( _C3DHALL5_REG_STATUS );
       
       if ((readData & status) != 0)
       {
           return 0;
       }
    }
    return 1;
}

/* --------------------------------------------------------- PUBLIC FUNCTIONS */

#ifdef   __C3DHALL5_DRV_SPI__

void c3dhall5_spiDriverInit(T_C3DHALL5_P gpioObj, T_C3DHALL5_P spiObj)
{
    _comunication = _SPI_COMUNICATION;
    hal_spiMap( (T_HAL_P)spiObj );
    hal_gpioMap( (T_HAL_P)gpioObj );
    
    hal_gpio_csSet( 1 );
}

#endif
#ifdef   __C3DHALL5_DRV_I2C__

void c3dhall5_i2cDriverInit(T_C3DHALL5_P gpioObj, T_C3DHALL5_P i2cObj, uint8_t slave)
{
    _slaveAddress = slave;
    _comunication = _I2C_COMUNICATION;
    hal_i2cMap( (T_HAL_P)i2cObj );
    hal_gpioMap( (T_HAL_P)gpioObj );
    
    hal_gpio_csSet( 1 );
}

#endif
#ifdef   __C3DHALL5_DRV_UART__

void c3dhall5_uartDriverInit(T_C3DHALL5_P gpioObj, T_C3DHALL5_P uartObj)
{
    hal_uartMap( (T_HAL_P)uartObj );
    hal_gpioMap( (T_HAL_P)gpioObj );
}

#endif

/* ----------------------------------------------------------- IMPLEMENTATION */

void c3dhall5_writeByte(uint8_t reg, uint8_t _data)
{
    uint8_t writeReg[ 2 ];
    
    writeReg[ 0 ] = reg;
    writeReg[ 1 ] = _data;
    
    if (_comunication == _I2C_COMUNICATION)
    {
        hal_i2cStart();
        hal_i2cWrite(_slaveAddress, writeReg, 2, END_MODE_STOP);
    }
    else
    {
        hal_gpio_rstSet(1);
        hal_gpio_csSet(0);
        hal_spiWrite(writeReg, 2);
        hal_gpio_csSet(1);
    }
}

uint8_t c3dhall5_readByte(uint8_t reg)
{
    uint8_t writeReg[ 1 ];
    uint8_t readReg[ 1 ];
    
    writeReg[ 0 ] = reg;
    
    if (_comunication == _I2C_COMUNICATION)
    {
        hal_i2cStart();
        hal_i2cWrite(_slaveAddress, writeReg, 1, END_MODE_RESTART);
        hal_i2cRead(_slaveAddress, readReg, 1, END_MODE_STOP);
    }
    else
    {
        writeReg[ 0 ] = reg | 0x80;
        hal_gpio_csSet(0);
        hal_gpio_rstSet(1);
        hal_spiWrite(writeReg, 1);
        hal_gpio_rstSet(0);
        hal_spiRead(readReg, 1);
        hal_gpio_csSet(1);
    }
    
    return readReg[ 0 ];
}

int16_t c3dhall5_readData(uint8_t reg)
{
    uint8_t writeReg[ 1 ];
    uint8_t readReg[ 2 ];
    int16_t readData;
    
    writeReg[ 0 ] = reg;
    
    if (_comunication == _I2C_COMUNICATION)
    {
        hal_i2cStart();
        hal_i2cWrite(_slaveAddress, writeReg, 1, END_MODE_RESTART);
        hal_i2cRead(_slaveAddress, readReg, 2, END_MODE_STOP);
    }
    else
    {
        writeReg[ 0 ] = reg | 0x80;
        hal_gpio_csSet(0);
        hal_gpio_rstSet(1);
        hal_spiWrite(writeReg, 1);
        hal_gpio_rstSet(0);
        hal_spiRead(&readReg[0], 1);
        hal_gpio_csSet(1);
        
        writeReg[ 0 ] = (reg + 1) | 0x80;
        hal_gpio_csSet(0);
        hal_gpio_rstSet(1);
        hal_spiWrite(writeReg, 1);
        hal_gpio_rstSet(0);
        hal_spiRead(&readReg[1], 1);
        hal_gpio_csSet(1);
    }
    
    readData = readReg[ 1 ];
    readData = readData << 8;
    readData = readData | readReg[ 0 ];
    
    return readData;
}

uint8_t c3dhall5_init()
{
    uint8_t deviceID;
    
    deviceID =  c3dhall5_readByte(_C3DHALL5_REG_WHO_AM_I);
    if (deviceID != _C3DHALL5_I_AM)
    {
        return DEVICE_ERROR;
    }

    c3dhall5_writeByte(_C3DHALL5_REG_CONFIG_A, _C3DHALL5_CFG_A_COMP_TEMP_ENABLE);
    c3dhall5_writeByte(_C3DHALL5_REG_CONFIG_C, _C3DHALL5_CFG_C_DRDY_ON_PIN);

    return DEVICE_OK;
}

float c3dhall5_temperature()
{
    int16_t tempData;
    float temperature;
    
    tempData = c3dhall5_readData( _C3DHALL5_REG_TEMP_LSB );
    
    temperature = (tempData * 0.5) + 23.0;

    return temperature;
}

uint8_t c3dhall5_getInterrupt()
{
    return hal_gpio_intGet();
}

void c3dhall5_setOffset(uint8_t offset_axis, int16_t offset)
{
    uint8_t writeReg[ 3 ];
    
    writeReg[ 0 ] = offset_axis;
    writeReg[ 1 ] = (offset & 0x00FF);
    writeReg[ 2 ] = (offset >> 8) & 0x00FF;
    
    hal_i2cStart();
    hal_i2cWrite(_slaveAddress, writeReg, 3, END_MODE_STOP);
}

int16_t c3dhall5_getAxis(uint8_t axis)
{
    int16_t axisData;
    uint8_t status;

    if( axis == _C3DHALL5_AXIS_X)
    {
       status = _waitStatus(_C3DHALL5_STATUS_X_NEW_DATA);
    }
    else if ( axis == _C3DHALL5_AXIS_Y)
    {
        status = _waitStatus(_C3DHALL5_STATUS_Y_NEW_DATA);
    }
    else if ( axis == _C3DHALL5_AXIS_Z)
    {
        status = _waitStatus(_C3DHALL5_STATUS_Z_NEW_DATA);
    }
    
    if (status == 0)
    {
        axisData = c3dhall5_readData( axis );
        
        return axisData;
    }
    else
    {
        return 1;
    }
}

/* -------------------------------------------------------------------------- */
/*
  __c3dhall5_driver.c

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