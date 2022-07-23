echo "Running src/c_assembly" && echo "..."
nasm -f elf32 src/c_assembly/calculator.s -o build/c_assembly/calculator.o
gcc build/c_assembly/calculator.o -m32 -o build/c_assembly/calculator
objdump -dS build/c_assembly/calculator.o > src/c_assembly/dcalculator.s
./build/c_assembly/calculator
