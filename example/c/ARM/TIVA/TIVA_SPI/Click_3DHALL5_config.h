#include "Click_3DHALL5_types.h"

const uint32_t _C3DHALL5_SPI_CFG[ 3 ] = 
{ 
	1000000, 
	_SPI_MASTER, 
	_SPI_8_BIT | 
	_SPI_CLK_IDLE_HIGH |
	_SPI_SECOND_CLK_EDGE_TRANSITION 
};

const uint32_t _C3DHALL5_I2C_CFG[ 1 ] = 
{ 
	_I2C_BITRATE_STANDARD_MODE 
};

