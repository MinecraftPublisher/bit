#include "bit.h"
#include <stdio.h>

int main() {
    QUOTE(
        MOV 01\n
            PADDING 0\n
            VALUE IN REGISTER rA\n
                01 0000000000000000000000000000\n
            CONSTANT VALUE\n
                1 00000000000000000000000000001\n
            PADDING 0
    );
    
    MEMORY[ 0 ] = 0b01001000; // fill memory with `mov $1, rA`
    MEMORY[ 1 ] = 0b00000000;
    MEMORY[ 2 ] = 0b00000000;
    MEMORY[ 3 ] = 0b00000000;
    MEMORY[ 4 ] = 0b01000000;
    MEMORY[ 5 ] = 0b00000000;
    MEMORY[ 6 ] = 0b00000000;
    MEMORY[ 7 ] = 0b00000010;
    run_inst(); // 1 cycle
    printf("rA: %lli", REGISTERS[0]);
}