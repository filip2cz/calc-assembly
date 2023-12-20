nasm -f elf32 calc.s -o calc.o
gcc -o calc calc.o -nostdlib -static