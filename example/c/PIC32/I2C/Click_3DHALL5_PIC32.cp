#line 1 "D:/Clicks_git/3D_Hall_5_click/SW/example/c/PIC32/I2C/Click_3DHALL5_PIC32.c"
#line 1 "d:/clicks_git/3d_hall_5_click/sw/example/c/pic32/i2c/click_3dhall5_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/include/stdint.h"




typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "d:/clicks_git/3d_hall_5_click/sw/example/c/pic32/i2c/click_3dhall5_config.h"
#line 1 "d:/clicks_git/3d_hall_5_click/sw/example/c/pic32/i2c/click_3dhall5_types.h"
#line 4 "d:/clicks_git/3d_hall_5_click/sw/example/c/pic32/i2c/click_3dhall5_config.h"
const uint32_t _C3DHALL5_SPI_CFG[ 7 ] =
{
 _SPI_MASTER,
 _SPI_8_BIT,
 80,
 _SPI_SS_DISABLE,
 _SPI_DATA_SAMPLE_MIDDLE,
 _SPI_CLK_IDLE_LOW,
 _SPI_IDLE_2_ACTIVE
};



const uint32_t _C3DHALL5_I2C_CFG[ 1 ] =
{
 100000
};
#line 1 "d:/clicks_git/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/include/stdint.h"
#line 58 "d:/clicks_git/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
extern const uint8_t _C3DHALL5_AXIS_X;
extern const uint8_t _C3DHALL5_AXIS_Y;
extern const uint8_t _C3DHALL5_AXIS_Z;
#line 75 "d:/clicks_git/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
void c3dhall5_spiDriverInit( const uint8_t*  gpioObj,  const uint8_t*  spiObj);


void c3dhall5_i2cDriverInit( const uint8_t*  gpioObj,  const uint8_t*  i2cObj, uint8_t slave);
#line 85 "d:/clicks_git/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
void c3dhall5_gpioDriverInit( const uint8_t*  gpioObj);




void c3dhall5_writeByte(uint8_t reg, uint8_t _data);

uint8_t c3dhall5_readByte(uint8_t reg);

int16_t c3dhall5_readData(uint8_t reg);

uint8_t c3dhall5_init();

float c3dhall5_temperature();

uint8_t c3dhall5_getInterrupt();

int16_t c3dhall5_getAxis(uint8_t axis);
#line 30 "D:/Clicks_git/3D_Hall_5_click/SW/example/c/PIC32/I2C/Click_3DHALL5_PIC32.c"
int16_t axis_X;
int16_t axis_Y;
int16_t axis_Z;
float temp;
char demoText[ 50 ] = {0};

void systemInit()
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
 mikrobus_i2cInit( _MIKROBUS1, &_C3DHALL5_I2C_CFG[0] );
 mikrobus_logInit( _LOG_USBUART_B, 9600 );
 mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
 Delay_ms( 100 );
}

void applicationInit()
{
 c3dhall5_i2cDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_I2C, 0x1E );
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

 temp = c3dhall5_temperature();
 mikrobus_logWrite(" Temp : ", _LOG_TEXT);
 IntToStr(temp, demoText);
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
