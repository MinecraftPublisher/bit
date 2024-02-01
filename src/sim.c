#include <stdio.h>
#include "bit.h"

int main() {
    QUOTE(
        MOV 01
            PADDING 0
            VALUE IN REGISTER rA
                01 0000000000000000000000000000
            CONSTANT VALUE
                1 00000000000000000000000000001
            PADDING 0
    );
    
    MEMORY[ 0 ] = 0b01001000;
    MEMORY[ 1 ] = 0b00000000;
    MEMORY[ 2 ] = 0b00000000;
    MEMORY[ 3 ] = 0b00000000;
    MEMORY[ 4 ] = 0b01000000;
    MEMORY[ 5 ] = 0b00000000;
    MEMORY[ 6 ] = 0b00000111;
    MEMORY[ 7 ] = 0b11111110;
    run_inst(); // 1 cycle
    printf("rA: %lli", REGISTERS[0]);
}