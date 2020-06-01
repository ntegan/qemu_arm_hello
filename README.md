# Hello World on bare metal, via QEMU emulated ARM machine

![](.a.png?raw=true)

Credit:
* https://balau82.wordpress.com/2010/02/28/hello-world-for-bare-metal-arm-using-qemu/
* Rob Landley's talk at the Embedded Linux Conference


## Requirements
* `qemu-system-arm`
* arm toolchain
    * He mentions [this](https://sourcery.mentor.com/sgpp/lite/arm/portal/subscription?@template=lite)
    * I just `apt install`ed the following ubuntu packages
    ```
    binutils-arm-none-eabi/focal 2.34-4ubuntu1+13ubuntu1 amd64
      GNU assembler, linker and binary utilities for ARM Cortex-R/M processors

    gcc-arm-none-eabi/focal 15:9-2019-q4-0ubuntu1 amd64
      GCC cross compiler for ARM Cortex-R/M processors
    ```
