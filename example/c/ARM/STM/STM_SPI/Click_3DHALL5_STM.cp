#line 1 "D:/Clicks_git/Number/3D_Hall_5_click/SW/example/c/ARM/STM/STM_SPI/Click_3DHALL5_STM.c"
#line 1 "d:/clicks_git/number/3d_hall_5_click/sw/example/c/arm/stm/stm_spi/click_3dhall5_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





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
#line 1 "d:/clicks_git/number/3d_hall_5_click/sw/example/c/arm/stm/stm_spi/click_3dhall5_config.h"
#line 1 "d:/clicks_git/number/3d_hall_5_click/sw/example/c/arm/stm/stm_spi/click_3dhall5_types.h"
#line 3 "d:/clicks_git/number/3d_hall_5_click/sw/example/c/arm/stm/stm_spi/click_3dhall5_config.h"
const uint32_t _C3DHALL5_SPI_CFG[ 2 ] =
{
 _SPI_FPCLK_DIV16,
 _SPI_SECOND_CLK_EDGE_TRANSITION |
 _SPI_CLK_IDLE_HIGH |
 _SPI_MASTER |
 _SPI_MSB_FIRST |
 _SPI_8_BIT |
 _SPI_SSM_ENABLE |
 _SPI_SS_DISABLE |
 _SPI_SSI_1
};

const uint32_t _C3DHALL5_I2C_CFG[ 1 ] =
{
 100000
};
#line 1 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 58 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
extern const uint8_t _C3DHALL5_AXIS_X;
extern const uint8_t _C3DHALL5_AXIS_Y;
extern const uint8_t _C3DHALL5_AXIS_Z;

extern const uint8_t _C3DHALL5_I_AM;


extern const uint8_t _C3DHALL5_OFFSET_AXIS_X;
extern const uint8_t _C3DHALL5_OFFSET_AXIS_Y;
extern const uint8_t _C3DHALL5_OFFSET_AXIS_Z;


extern const uint8_t _C3DHALL5_REG_OFFSET_X_LSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_X_MSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Y_LSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Y_MSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Z_LSB;
extern const uint8_t _C3DHALL5_REG_OFFSET_Z_MSB;
extern const uint8_t _C3DHALL5_REG_WHO_AM_I ;
extern const uint8_t _C3DHALL5_REG_CONFIG_A ;
extern const uint8_t _C3DHALL5_REG_CONFIG_B ;
extern const uint8_t _C3DHALL5_REG_CONFIG_C ;
extern const uint8_t _C3DHALL5_REG_INT_CTRL ;
extern const uint8_t _C3DHALL5_REG_INT_SOURCE ;
extern const uint8_t _C3DHALL5_REG_INT_THS_LSB ;
extern const uint8_t _C3DHALL5_REG_INT_THS_MSB ;
extern const uint8_t _C3DHALL5_REG_STATUS ;
extern const uint8_t _C3DHALL5_REG_X_AXIS_LSB ;
extern const uint8_t _C3DHALL5_REG_X_AXIS_MSB ;
extern const uint8_t _C3DHALL5_REG_Y_AXIS_LSB ;
extern const uint8_t _C3DHALL5_REG_Y_AXIS_MSB ;
extern const uint8_t _C3DHALL5_REG_Z_AXIS_LSB ;
extern const uint8_t _C3DHALL5_REG_Z_AXIS_MSB ;
extern const uint8_t _C3DHALL5_REG_TEMP_LSB ;
extern const uint8_t _C3DHALL5_REG_TEMP_MSB ;


extern const uint8_t _C3DHALL5_CFG_A_COMP_TEMP_ENABLE ;
extern const uint8_t _C3DHALL5_CFG_A_COMP_TEMP_DISABLE ;
extern const uint8_t _C3DHALL5_CFG_A_REBOOT_MEM_CONTENT ;
extern const uint8_t _C3DHALL5_CFG_A_NORMAL_MODE ;
extern const uint8_t _C3DHALL5_CFG_A_SOFTRESET ;
extern const uint8_t _C3DHALL5_CFG_A_HIGH_RESOLUTION_MODE;
extern const uint8_t _C3DHALL5_CFG_A_LOW_POWER_MODE ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_10Hz ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_20Hz ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_50Hz ;
extern const uint8_t _C3DHALL5_CFG_A_ODR_100Hz ;
extern const uint8_t _C3DHALL5_CFG_A_MODE_CONTINUOUS ;
extern const uint8_t _C3DHALL5_CFG_A_MODE_SINGLE ;
extern const uint8_t _C3DHALL5_CFG_A_MODE_IDLE ;


extern const uint8_t _C3DHALL5_CFG_B_OFFSET_IN_SINGLE_MODE_ENABLE ;
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_IN_SINGLE_MODE_DISABLE;
extern const uint8_t _C3DHALL5_CFG_B_INT_ON_DATA_OFF ;
extern const uint8_t _C3DHALL5_CFG_B_SET_PULSE_63_ODR ;
extern const uint8_t _C3DHALL5_CFG_B_SET_PULSE_PD_CONDITION ;
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_ENABLE ;
extern const uint8_t _C3DHALL5_CFG_B_OFFSET_DISABLE ;
extern const uint8_t _C3DHALL5_CFG_B_LPF_DISABLE_ODR_2 ;
extern const uint8_t _C3DHALL5_CFG_B_LPF_ENABLE_ODR_4 ;


extern const uint8_t _C3DHALL5_CFG_C_INT_ON_PIN ;
extern const uint8_t _C3DHALL5_CFG_C_INT_ON_PIN_DISABLE;
extern const uint8_t _C3DHALL5_CFG_C_I2C_DISABLE ;
extern const uint8_t _C3DHALL5_CFG_C_BLE_ENABLE ;
extern const uint8_t _C3DHALL5_CFG_C_SELF_TEST ;
extern const uint8_t _C3DHALL5_CFG_C_DRDY_ON_PIN ;


extern const uint8_t _C3DHALL5_INT_CTRL_X_AXIS_ENABLE ;
extern const uint8_t _C3DHALL5_INT_CTRL_Y_AXIS_ENABLE ;
extern const uint8_t _C3DHALL5_INT_CTRL_Z_AXIS_ENABLE ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEA_0_SIGNALS_AN_INT;
extern const uint8_t _C3DHALL5_INT_CTRL_IEA_1_SIGNALS_AN_INT;
extern const uint8_t _C3DHALL5_INT_CTRL_IEL_INT_IS_PILSED ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEL_INT_IS_LATCHED ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEN_INT_ENABLE ;
extern const uint8_t _C3DHALL5_INT_CTRL_IEN_INT_DISABLE ;


extern const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_X;
extern const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_Y;
extern const uint8_t _C3DHALL5_INT_SOURCE_POS_TH_Z;
extern const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_X;
extern const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_Y;
extern const uint8_t _C3DHALL5_INT_SOURCE_NEG_TH_N;


extern const uint8_t _C3DHALL5_STATUS_XYZ_DATA_OVERRUN;
extern const uint8_t _C3DHALL5_STATUS_Z_DATA_OVERRUN ;
extern const uint8_t _C3DHALL5_STATUS_Y_DATA_OVERRUN ;
extern const uint8_t _C3DHALL5_STATUS_X_DATA_OVERRUN ;
extern const uint8_t _C3DHALL5_STATUS_XYZ_NEW_DATA ;
extern const uint8_t _C3DHALL5_STATUS_Z_NEW_DATA ;
extern const uint8_t _C3DHALL5_STATUS_Y_NEW_DATA ;
extern const uint8_t _C3DHALL5_STATUS_X_NEW_DATA ;
#line 171 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
void c3dhall5_spiDriverInit( const uint8_t*  gpioObj,  const uint8_t*  spiObj);


void c3dhall5_i2cDriverInit( const uint8_t*  gpioObj,  const uint8_t*  i2cObj, uint8_t slave);
#line 181 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
void c3dhall5_gpioDriverInit( const uint8_t*  gpioObj);
#line 191 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
void c3dhall5_writeByte(uint8_t reg, uint8_t _data);
#line 199 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
uint8_t c3dhall5_readByte(uint8_t reg);
#line 207 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
int16_t c3dhall5_readData(uint8_t reg);
#line 215 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
uint8_t c3dhall5_init();
#line 222 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
float c3dhall5_temperature();
#line 229 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
uint8_t c3dhall5_getInterrupt();
#line 237 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
int16_t c3dhall5_getAxis(uint8_t axis);
#line 245 "d:/clicks_git/number/3d_hall_5_click/sw/library/__c3dhall5_driver.h"
void c3dhall5_setOffset(uint8_t offset_axis, int16_t offset);
#line 30 "D:/Clicks_git/Number/3D_Hall_5_click/SW/example/c/ARM/STM/STM_SPI/Click_3DHALL5_STM.c"
int16_t axis_X;
int16_t axis_Y;
int16_t axis_Z;
char demoText[ 50 ] = {0};

void systemInit()
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
 mikrobus_spiInit( _MIKROBUS1, &_C3DHALL5_SPI_CFG[0] );
 mikrobus_logInit( _LOG_USBUART_A, 115200 );
 mikrobus_logWrite(" --- System init --- ", _LOG_LINE);
 Delay_ms( 100 );
}

void applicationInit()
{
 c3dhall5_spiDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_SPI );
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
