usage() {
    echo "Usage: "
    echo "  bash make.sh {make,clean,run}"
    exit 1
}
make_it() {
    arm-none-eabi-as -mcpu=arm926ej-s -g startup.S -o startup.o
    arm-none-eabi-gcc -c -mcpu=arm926ej-s -g test.c -o test.o
    arm-none-eabi-ld -T test.ld test.o startup.o -o test.elf
    arm-none-eabi-objcopy -O binary test.elf test.bin
    exit 0
}
clean_it() {
    rm -f startup.o test.elf test.bin test.o
    exit 0
}
run_it() {
    QEMU_AUDIO_DRV=none qemu-system-arm \
        -M versatilepb \
        -m 128M \
        -nographic  \
        -kernel test.bin
    exit 0
}


[ "$1" == "" ] && usage
[ "$1" == "make" ] && make_it
[ "$1" == "clean" ] && clean_it
[ "$1" == "run" ] && run_it

usage

