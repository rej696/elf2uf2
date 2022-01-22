# Raspberry Pi Pico elf2uf2 Utility

__DISCLAIMER__: The code files in this repository are not my work, and have been
produced by the [Raspberry Pi Foundation](https://github.com/raspberrypi)

This repository copies code from the [Raspberry Pi Pico
SDK](https://github.com/raspberrypi/pico-sdk) for building the elf2uf2 utility.

This utility allows elf files compiled for the pico, either using the pico-sdk
or using the [pico_bsp](https://github.com/JeremyGrosser/pico_bsp) on
[alire](https://alire.ada.dev/), to be converted to uf2 files. uf2 firmware can
then be loaded onto the pico via. holding the bootselect button when plugging in
the usb cable, and copying the firmware into the mass storage device that
appears.

## Installation and Use

To build this tool, you will need a git and a c++ compiler.

Clone the repo, (assuming you are using g++) compile the tool, and use it on
your elf binary.

```bash
git clone https://github.com/rej696/elf2uf2.git
make build # or run your native compiler command
./elf2uf2 <input ELF file> <output UF2 file>
```

Then copy the output uf2 onto your pico.

For a more detailed guide to using Alire and compiling Ada for see my
[pico-with-ada](https://github.com/rej696/pico-with-ada) repository.

Alternatively to using the elf2uf2 utility, you may wish to use
[pico-debug](https://github.com/majbthrd/pico-debug), which allows gdb debugging
and uploading of an elf file over USB, rather than Serial Wire Debug (SWD).
