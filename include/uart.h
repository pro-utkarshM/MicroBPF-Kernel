#ifndef UART_H
#define UART_H

#include <stdint.h>

// MMIO base for a generic UART (e.g., memory-mapped console)
#define UART0_BASE 0x10000000UL

static inline void uart_putc(char c) {
    volatile uint32_t *tx = (uint32_t *)(UART0_BASE + 0x00);
    *tx = (uint32_t)c;
}

static inline void uart_puts(const char *s) {
    while (*s) {
        uart_putc(*s++);
    }
}

#endif // UART_H