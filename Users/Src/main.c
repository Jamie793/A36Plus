#include "main.h"

int main(void)
{
    SystemInit();
    systick_config();
    gpio_config();
    // spi_config();
    usart_config();
    //    ST7735S_Init();
    uint8_t i;

    printf("Running...\n");
    while (1)
    {
        printf("Testing...\n");
        /* code */
        //        LCD_LIGHT_LOW;
        //        delay_1us(100);
        //        LCD_LIGHT_HIGH;
        delay_1ms(1000);
    }
}