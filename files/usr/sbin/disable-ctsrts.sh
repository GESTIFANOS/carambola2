#! /bin/sh

# disble CTS/RTS in UART Register settings
mmio 0x18040030 0x70300

