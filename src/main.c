#include <stdint.h>
#include "uart.h"

// Entry point defined in linker script
void _start(void) {
    // Call C entry
    extern int main(void);
    int ret = main();
    (void)ret;
    // Hang
    while (1) {
        // Optionally signal via UART
        uart_puts(".");
    }
}

// Application entry point
int main(void) {
    // uart_init();  // Initialize UART
    uart_puts("Hello, MicroBPF-Kernel!\n");
    return 0;
}