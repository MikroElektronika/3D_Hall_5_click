![MikroE](http://www.mikroe.com/img/designs/beta/logo_small.png)

---

# 3DHALL5 Click


- **CIC Prefix**  : C3DHALL5
- **Author**      : Katarina Perendic
- **Verison**     : 1.0.0
- **Date**        : maj 2018.

---


### Software Support

We provide a library for the 3DHALL5 Click on our [LibStock](https://libstock.mikroe.com/projects/view/2436/3d-hall-5-click) 
page, as well as a demo application (example), developed using MikroElektronika 
[compilers](http://shop.mikroe.com/compilers). The demo can run on all the main 
MikroElektronika [development boards](http://shop.mikroe.com/development-boards).

**Library Description**

The library initializes and defines the I2C bus or SPI bus driver and drivers that offer a choice for writing data in register.
The library includes function for read magnetics X/Y/Z axis data, set offset, read interrupt state and read temperature.
The user also has the function for initializes chip.
 

Key functions :

- ``` int16_t c3dhall5_getAxis(uint8_t axis) ``` - Functions for read axis data
- ``` uint8_t c3dhall5_init() ``` - Functions for initialize the chip
- ``` void c3dhall5_writeByte(uint8_t reg, uint8_t _data) ``` - Functions for write one byte in register

**Examples Description**

The application is composed of three sections :

- System Initialization - Initializes I2C/SPI module and sets CS pin and RST pin as OUTPUT and INT pin as INPUT
- Application Initialization - Initializes Driver init and chip init
- Application Task - (code snippet) - Reads the magnetics X / Y / Z axis data every 1 seconds.


```.c
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
```

The full application code, and ready to use projects can be found on our 
[LibStock](https://libstock.mikroe.com/projects/view/2436/3d-hall-5-click) page.

Other mikroE Libraries used in the example:

- I2C
- SPI 
- UART

**Additional notes and informations**

Depending on the development board you are using, you may need 
[USB UART click](http://shop.mikroe.com/usb-uart-click), 
[USB UART 2 Click](http://shop.mikroe.com/usb-uart-2-click) or 
[RS232 Click](http://shop.mikroe.com/rs232-click) to connect to your PC, for 
development systems with no UART to USB interface available on the board. The 
terminal available in all Mikroelektronika 
[compilers](http://shop.mikroe.com/compilers), or any other terminal application 
of your choice, can be used to read the message.

---
### Architectures Supported

#### mikroC

| STM | KIN | CEC | MSP | TIVA | PIC | PIC32 | DSPIC | AVR | FT90x |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| x | x | x | x | x | x | x | x | x | x |

#### mikroBasic

| STM | KIN | CEC | MSP | TIVA | PIC | PIC32 | DSPIC | AVR | FT90x |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| x | x | x | x | x | x | x | x | x | x |

#### mikroPascal

| STM | KIN | CEC | MSP | TIVA | PIC | PIC32 | DSPIC | AVR | FT90x |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| x | x | x | x | x | x | x | x | x | x |

---
---
