#include "Click_3DHALL5_types.h"

const uint32_t _C3DHALL5_SPI_CFG[ 7 ] = 
{ 
	_SPI_MASTER, 
	64, 
	_SPI_CLOCKSOURCE_SMCLK, 
	_SPI_MSB_FIRST, 
	_SPI_PHASE_DATA_CHANGE_FIRST_CAPTURE_NEXT, 
	_SPI_CLK_IDLE_HIGH, 
	_SPI_3PIN 
};

const uint32_t _C3DHALL5_I2C_CFG[ 1 ] = 
{
	100000
};
