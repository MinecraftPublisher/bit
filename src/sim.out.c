#include <stdio.h>

#define MEM_SIZE 131072
#define SYS_CODE 16384

#define QUOTE(...) #__VA_ARGS__

typedef unsigned long long uint64_t;
typedef long long          int64_t;

typedef int64_t  i64;
typedef uint64_t u64;

#define reg u64

typedef unsigned char byte;
typedef byte bool;
typedef byte  bit;
typedef char *string;

extern int printf(const char *, ...);

const string err_list = QUOTE(\n\n\n\n

List of error codes:\n
0 = No errors\n
1 = Exit success/Halt\n
2 = Memory write OOB\n
3 = Write to constant\n
4 = What the fuck even happened\n
5 = Register write OOB\n

\n\n\n\n
);

bool MEMORY[ MEM_SIZE ] = { [0 ... MEM_SIZE - 1] = 0 };

reg REGISTERS[ 16 ] = { [0 ... 15] = 0 };
reg LAST            = 0;
reg PC              = 0;

byte ERR = 0;
// 2 = 64-bit
// 1 = 32-bit
// 0 = 16-bit
byte MODE = 2;

#define inst uint64_t

byte get(i64 index) {
    if (index < MEM_SIZE) return MEMORY[ index ];
    return 0;
}

void set(i64 index, byte value) {
    if (index < MEM_SIZE) MEMORY[ index ] = value;
    ERR = 2;
}

struct INSTRUCTION {
    bit instruction : 2;
    bit mode : 2;
    bit a1 : 1;
    i64 left_raw;
    i64 left;
    i64 right;
    bit flags : 3;
};

i64 parsearg(i64 arg) {
    short number = MODE == 2 ? // 64
                       28
                             : MODE == 1 ? // 32
                                   12
                                         : 4;
    i64   type   = (arg & ((u64) 0b11 << number)) >> number;
    i64   x      = (arg & ~((u64) 0b11 << number)) >> number;

    switch (type) {
        case 0b10:; // constant
        case 0b11:; // constant
            return (arg & ~((u64) 0b1 << (number + 1)));
        case 0b01:;               // register
            if (x > 16) return 0; // silent cpu
            return REGISTERS[ x ];
        case 0b00:;               // memory addr
            if (x > 16) return 0; // silent cpu
            i64 memaddr = REGISTERS[ x ];
            if (memaddr > MEM_SIZE) return 0; // silent cpu
            return MEMORY[ memaddr ];
    }

    return 0;
}

void writearg(i64 location, i64 data) {
    short number = MODE == 2 ? // 64
                       28
                             : MODE == 1 ? // 32
                                   12
                                         : 4;
    i64   type   = (location & ((u64) 0b11 << number)) >> number;
    i64   x      = (location & ~((u64) 0b11 << number)) >> number;

    switch (type) {
        case 0b10:; // constant
        case 0b11:; // constant
            ERR = 3;
            return;
        case 01:; // register
            if (x > 16) {
                ERR = 5; // register write OOB
                return;
            }

            REGISTERS[ x ] = data;
            return;
        case 0b00:; // memory
            if (x > 16) {
                ERR = 5; // register write OOB
                return;
            }

            i64 memaddr = REGISTERS[ x ];
            if (memaddr > MEM_SIZE) {
                ERR = 2; // memory write OOB
                return;
            }

            for (int i = 0; i < 8; i++)
                MEMORY[ memaddr + i ] = (data & (0b11111111 << ((7 - i) * 8))) >> ((7 - i) * 8);
    }
}

void run_inst() {
    if (ERR != 0) return; // halt if non-zero error code

    struct INSTRUCTION instruction = {};

    // BEGIN get mode
    switch (MODE) {
        case 2: { // 64-bit mode
            inst code
                = ((u64) get(LAST) << (64 - 8 * 1)) | ((u64) get(LAST + 1) << (64 - 8 * 2))
                  | ((u64) get(LAST + 2) << (64 - 8 * 3)) | ((u64) get(LAST + 3) << (64 - 8 * 4))
                  | ((u64) get(LAST + 4) << (64 - 8 * 5)) | ((u64) get(LAST + 5) << (64 - 8 * 6))
                  | ((u64) get(LAST + 6) << (64 - 8 * 7)) | ((u64) get(LAST + 7) << (64 - 8 * 8));

            // 0b1111111111111111111111111111111111111111111111111111111111111111 base
            // 0b1100000000000000000000000000000000000000000000000000000000000000 instruction ls62
            // 0b0011000000000000000000000000000000000000000000000000000000000000 mode ls60
            // 0b0010000000000000000000000000000000000000000000000000000000000000 a1 ls61
            // 0b0001111111111111111111111111111110000000000000000000000000000000 left ls31
            // 0b0000000000000000000000000000000001111111111111111111111111111110 right ls1
            // 0b0000000000000000000000000000000001110000000000000000000000000000 flags ls28
            instruction.instruction
                = (code & 0b1100000000000000000000000000000000000000000000000000000000000000) >> 62;
            instruction.mode
                = (code & 0b0011000000000000000000000000000000000000000000000000000000000000) >> 60;
            instruction.a1
                = (code & 0b0010000000000000000000000000000000000000000000000000000000000000) >> 61;
            instruction.left_raw
                = (code & 0b0001111111111111111111111111111110000000000000000000000000000000) >> 31;
            instruction.left  = parsearg(instruction.left_raw);
            instruction.right = parsearg(
                (code & 0b0000000000000000000000000000000001111111111111111111111111111110) >> 1);
            instruction.flags
                = (code & 0b0000000000000000000000000000000001110000000000000000000000000000) >> 28;

            break;
        }
        case 1: { // 32-bit mode
            inst code = ((u64) get(LAST) << (32 - 8 * 1)) | ((u64) get(LAST + 1) << (32 - 8 * 2))
                        | ((u64) get(LAST + 2) << (32 - 8 * 3))
                        | ((u64) get(LAST + 3) << (32 - 8 * 4));

            // 0b11111111111111111111111111111111 base
            // 0b11000000000000000000000000000000 instruction ls30
            // 0b00110000000000000000000000000000 mode ls28
            // 0b00100000000000000000000000000000 a1 ls29
            // 0b00011111111111111000000000000000 left ls15
            // 0b00000000000000000111111111111110 right ls1
            // 0b00000000000000000111000000000000 flags ls12

            instruction.instruction = (code & 0b11000000000000000000000000000000) >> 30;
            instruction.mode        = (code & 0b00110000000000000000000000000000) >> 28;
            instruction.a1          = (code & 0b00100000000000000000000000000000) >> 29;
            instruction.left_raw    = (code & 0b00011111111111111000000000000000) >> 15;
            instruction.left        = parsearg(instruction.left_raw);
            instruction.right       = parsearg((code & 0b00000000000000000111111111111110) >> 1);
            instruction.flags       = (code & 0b00000000000000000111000000000000) >> 12;

            break;
        }
        case 0: { // 16-bit mode
            inst code = ((u64) get(LAST) << (16 - 8 * 1)) | ((u64) get(LAST + 1) << (16 - 8 * 2));

            instruction.instruction
                = ((code & ((u64) 0b1 << 15)) >> 14) | ((code & ((u64) 0b1 << 14)) >> 14);
            instruction.mode
                = ((code & ((u64) 0b1 << 13)) >> 12) | ((code & ((u64) 0b1 << 12)) >> 12);
            instruction.a1       = (code & ((u64) 0b1 << 13)) >> 13;
            instruction.left_raw = (code & ((u64) 0b111111 << 7) >> 7) & 0b111111;
            instruction.left     = parsearg(instruction.left_raw);
            instruction.right    = parsearg(((code & ((u64) 0b111111 << 1)) >> 1) & 0b111111);
            instruction.flags    = (code & ((u64) 0b111 << 4)) >> 4;

            break;
        }
        default: { // What
            ERR = 4;
            return;
        }
    } // END get mode

    switch (instruction.instruction) {
        case 0b00:; // MNG
            switch (instruction.mode) {
                case 00:; // HALT
                    ERR = 1;
                    return;
                case 01: // MODE16
                    MODE = 0;
                    return;
                case 10: // MODE32
                    MODE = 1;
                    return;
                case 11: // MODE64
                    MODE = 2;
                    return;
            }
        case 0b01:; // MOV
            LAST = instruction.right;
            writearg(instruction.left_raw, instruction.right);
            return;
        case 0b10:; // PC
            switch (instruction.a1) {
                case 0:; writearg(instruction.left_raw, PC + 1); return;
                case 1:;
                    bit flags = (!!(instruction.flags & 0b100) && LAST == 0)
                                || (!!(instruction.flags & 0b10) && LAST < 0)
                                || (!!(instruction.flags & 0b1) && LAST > 0);

                    if (flags) PC = instruction.left;
                    return;
            }
        case 0b11: // MTH
            switch (instruction.a1) {
                case 0:; // add
                    LAST = instruction.left + instruction.right;
                    writearg(instruction.left_raw, LAST);
                    return;
                case 1:; // nand
                    LAST = ~(instruction.left & instruction.right);
                    writearg(instruction.left_raw, LAST);
                    return;
            }
    }
}

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
        MOV 01\n PADDING 0\n VALUE IN REGISTER rA\n 01 0000000000000000000000000000\n CONSTANT
            VALUE\n 1 00000000000000000000000000001\n PADDING 0);
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