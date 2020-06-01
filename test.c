

//  Address of UART0 (out of 4 total) for the VersatilePB platform
//      RealView Platform Baseboard for ARM926EJ-S™ User Guide
//      HBI-0117
//
//  The UART0DR is a register (offset 0x0) that transmits the bytes written to
//  it, (also receives bytes when reading)
volatile unsigned int *const UART0DR = (unsigned int *)0x101f1000;

void print_uart0(const char *s) {
  // while not at end of string
  while (*s != '\0') {
    // write char to register
    *UART0DR = (unsigned int)(*s);
    // next char
    s++;
  }
}

void c_entry() { print_uart0("Hello world\n"); }
