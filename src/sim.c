#include "bit.h"
#include <stdio.h>

const char hexchars[] = "0123456789abcdef";

byte findIndex(char l) {
    switch (l) {
        case '0' ... '9': return l - '0';
        case 'a' ... 'z': return l - 'a' + 10;
        case 'A' ... 'Z': return l - 'A' + 10;
        default: return -1;
    }
}

byte hex2int(char left, char right) {
    bool imuseless = 0;
    return (findIndex(left) << 4) | findIndex(right);
}

bool isHex(char x) { return findIndex(x) != (byte) -1; }

int main() {
    const string g = QUOTE(
        MOV 01\n
            PADDING 0\n
            VALUE IN REGISTER rA\n
                01 0000000000000000000000000000\n
            CONSTANT VALUE\n
                1 00000000000000000000000000001\n
            PADDING 0);
    (void) g;

    byte c[ 3 ] = { 11, 11, 254 / 2 };
    int  index  = 3;
    while (c[ index ] > (byte) 10) {
        if (index == 3) index = 0;
        char temp   = getchar();
        bool _ishex = isHex(temp);

        if (_ishex) {
            if (index == 1) {
                c[ 1 ]         = temp;
                MEMORY[ PC++ ] = hex2int(c[ 0 ], c[ 1 ]);
                index++;
            } else if (index == 0) {
                c[ 0 ] = temp;
                index++;
            }

            index %= 2;
        } else if (temp <= 10)
            c[ index ] = 0;
    }

    PC = 0;

    while (!ERR) {
        run_inst();
        PC += 8;
    }

    // mov $3, rA
    // 48 00 00 00 40 00 00 06

    printf("rA: %llu\ncycles: %llu", REGISTERS[ 0 ], (PC / 8) + 1);
}