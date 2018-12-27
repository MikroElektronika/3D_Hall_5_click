#include "Click_3DHALL5_types.h"

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
