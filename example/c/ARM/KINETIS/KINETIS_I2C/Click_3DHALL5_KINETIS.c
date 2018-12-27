/*
Example for 3DHALL5 Click

    Date          : maj 2018.
    Author        : Katarina Perendic

Test configuration KINETIS :
    
    MCU              : MK64
    Dev. Board       : HEXIWEAR
    ARM Compiler ver : v6.0.0.0

---

Description :

The application is composed of three sections :

- System Initialization - Initializes I2C module and sets CS pin and RST pin as OUTPUT and INT pin as INPUT
- Application Initialization - Initializes Driver init and chip init
- Application Task - (code snippet) - Reads the magnetics X / Y / Z axis data every 1 seconds.

*/

#include "Click_3DHALL5_types.h"
#include "Click_3DHALL5_config.h"

int16_t axis_X;
int16_t axis_Y;
int16_t axis_Z;
char demoText[ 50 ] = {0};

void systemInit()
{
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
    mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL5_I2C_CFG[0] );
    mikrobus_logInit( _LOG_USBUART, 9600 );
    mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
    Delay_ms( 100 );
}

void applicationInit()
{
    c3dhall5_i2cDriverInit( (T_C3DHALL5_P)&_MIKROBUS1_GPIO, (T_C3DHALL5_P)&_MIKROBUS1_I2C, 0x1E );
    c3dhall5_init();
}

void applicationTask()
{
    axis_X = c3dhall5_getAxis(_C3DHALL5_AXIS_X);
    mikrobus_logWrite(" X axis : ", _LOG_TEXT);
    IntToStr(axis_X, demoText);
    mikrobus_logWrite(demoText, _LOG_LINE);

    axis_Y = c3dhall5_getAxis(_C3DHALL5_AXIS_Y);
    mikrobus_logWrite(" Y axis : ", _LOG_TEXT);
    IntToStr(axis_Y, demoText);
    mikrobus_logWrite(demoText, _LOG_LINE);
    
    axis_Z = c3dhall5_getAxis(_C3DHALL5_AXIS_Z);
    mikrobus_logWrite(" Z axis : ", _LOG_TEXT);
    IntToStr(axis_Z, demoText);
    mikrobus_logWrite(demoText, _LOG_LINE);
    
    mikrobus_logWrite("  ", _LOG_LINE);
    Delay_ms( 1000 );
}

void main()
{
    systemInit();
    applicationInit();

    while (1)
    {
            applicationTask();
    }
}