#include "basm_helper.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char byte;
typedef byte bool;
typedef uint64_t u64;

#define QUOTE(...) #__VA_ARGS__

#define SYSTEM_CODE 16384
#define MEMORY_SIZE SYSTEM_CODE + 114688
#define MEMORY_LAST MEMORY_SIZE - 1

byte memory[ MEMORY_SIZE ] = { [0 ... MEMORY_LAST] = 0 };

#include "manual.h"

typedef uint32_t addr;     // 1.6 mode, 28.3 value
typedef u64      instruct; // 2 instruct + 62 data

// define registers
#define rA REGISTERS[ 0 ]
#define rB REGISTERS[ 1 ]
#define rC REGISTERS[ 2 ]
#define rD REGISTERS[ 3 ]
#define rE REGISTERS[ 4 ]
#define rF REGISTERS[ 5 ]
#define rG REGISTERS[ 6 ]
#define rH REGISTERS[ 7 ]
#define rI REGISTERS[ 8 ]
#define rJ REGISTERS[ 9 ]
#define rK REGISTERS[ 10 ]
#define rL REGISTERS[ 11 ]
#define rM REGISTERS[ 12 ]
#define rN REGISTERS[ 13 ]
#define rO REGISTERS[ 14 ]
#define rP REGISTERS[ 15 ]

uint32_t REGISTERS[ 16 ];
uint64_t PC   = 0;
uint64_t LAST = 0;

void printBits(size_t const size, void const *const ptr, bool nonewline) {
    unsigned char *b = (unsigned char *) ptr;
    unsigned char  byte;
    int            i, j;

    for (i = size - 1; i >= 0; i--) {
        for (j = 7; j >= 0; j--) {
            byte = (b[ i ] >> j) & 1;
            printf("%u", byte);
        }
    }

    if (!nonewline) printf("\n");
}

// get address mode
enum ADDR_MODE { A_CONSTANT = 2, A_CONSTANT_2 = 3, A_REGISTER = 1, A_MEMORY = 0 };
enum ADDR_MODE getmode(addr add) {
    byte left  = (add & 0b100000000000000000000000000000) >> 29;
    byte right = (add & 0b010000000000000000000000000000) >> 28;

    return left + left + right;
}

// parses address argument
uint16_t parse_arg(addr address) {
    enum ADDR_MODE mode = getmode(address);
    switch (mode) {
        case A_CONSTANT:   // 10 - 2
        case A_CONSTANT_2: // 11 - 3
            return address & 0b011111111111111111111111111111;
        case A_REGISTER: // 01 - 1
            return REGISTERS[ address & 0b001111111111111111111111111111 ];
        case A_MEMORY: // 00 - 0
            return memory[ REGISTERS[ address & 0b001111111111111111111111111111 ] ];
    }
}

// get instruction mode
enum INST_MODE { I_HLT, I_MOV, I_JMP, I_MATH };
enum INST_MODE getinst(instruct add) {
    byte left  = (add & ((uint64_t) 1 << 63)) >> 63;
    byte right = (add & ((uint64_t) 1 << 62)) >> 62;

    return left + left + right;
}

FILE *nullfd;

#define __DEBUG_ENABLED
#ifdef __DEBUG_ENABLED
    #define debug(...)                                                                             \
        ({                                                                                         \
            printf("" __VA_ARGS__);                                                                \
            printf("\n");                                                                          \
        })
#else
    #define debug(...) fprintf(nullfd, "" __VA_ARGS__)
#endif

bool parse_inst(instruct inst) {
    enum INST_MODE mode = getinst(inst);
    switch (mode) {
        case I_HLT: {
            return 0;
            break;
        }
        case I_MATH: {
            short op = (inst & ((u64) 1 << 61)) >> 61;

            uint16_t output;
            uint32_t left_raw
                = (inst & 0b0001111111111111111111111111111110000000000000000000000000000000) >> 31;
            uint16_t left  = parse_arg(left_raw);
            uint16_t right = parse_arg(
                (inst & 0b0000000000000000000000000000000001111111111111111111111111111110) >> 1);

            switch (op) {
                case 0:
                    // add
                    output = left + right;
                    break;
                case 1:
                    // nand
                    output = ~(left & right);
                    // output &= 0b0011111111111111;
                    break;
            }

            LAST = output;

            enum ADDR_MODE mode = getmode(left_raw);
            switch (mode) {
                case A_CONSTANT:
                case A_CONSTANT_2:
                    printf("Cannot assign math destination to constant on instruction:\n");
                    printBits(8, &inst, 0);
                    printf("%02llx\n", inst);
                    printf("Program counter: %llu\n", PC);
                    exit(EXIT_FAILURE);
                case A_MEMORY:
                    memory[ REGISTERS[ left_raw & 0b001111111111111111111111111111 ] ] = output;
                    break;
                case A_REGISTER:
                    REGISTERS[ left_raw & 0b001111111111111111111111111111 ] = output;
                    break;
            }
            break;
        }
        case I_JMP: {
            short    zero = (inst & ((u64) 1 << 61)) >> 61;
            short    less = (inst & ((u64) 1 << 60)) >> 60;
            short    more = (inst & ((u64) 1 << 59)) >> 59;
            uint16_t dest
                = (inst & 0b0000011111111111111111111111111111100000000000000000000000000000) >> 29;

            if (zero && LAST == 0) PC = dest;
            else if (less && (int16_t) LAST < 0)
                PC = dest;
            else if (more && (int16_t) LAST > 0)
                PC = dest;

            break;
        }
        case I_MOV: {
            uint16_t from = parse_arg(
                (inst & 0b0011111111111111111111111111111100000000000000000000000000000000) >> 32);
            u64 to
                = (inst & 0b0000000000000000000000000000000011111111111111111111111111111100) >> 2;

            LAST = from;

            enum ADDR_MODE mode = getmode(to);
            switch (mode) {
                case A_CONSTANT:
                case A_CONSTANT_2:
                    printf("Cannot assign mov target to constant on instruction:\n");
                    printBits(8, &inst, 0);
                    printf("Program counter: %llu\n", PC);
                    exit(EXIT_FAILURE);
                case A_MEMORY: memory[ REGISTERS[ to & 0b0011111111111111 ] ] = from; break;
                case A_REGISTER: REGISTERS[ to & 0b0011111111111111 ] = from; break;
            }
            break;
        }
    }

    return 1;
}

union convert_byte8_to_u64 {
    byte bytes[ 8 ];
    u64  num;
};

typedef struct _string {
    string text;
    u64    length;
} _string;

_string *binary_to_char(u64 len, string str) {
    char   binary[ 9 ];
    string text = malloc((len + 1) * sizeof(char));
    sanity(text);

    char c;
    u64  pos        = 0;
    u64  letter_pos = 0;

    for (u64 j = 0; j < len / 8; j++) {
        for (u64 i = 0; i < 8; i++) {
            binary[ i ] = str[ pos ];
            pos++;
        }
        c                  = strtol(binary, 0, 2);
        text[ letter_pos ] = c;
        letter_pos++;
    }

    _string *new = malloc(sizeof(_string));
    sanity(new);
    new->length = len / 8;
    new->text   = text;

    return new;
}

_string *unjunk(u64 len, string input) {
    _string *new = malloc(sizeof(_string));
    sanity(new);
    string out = malloc(sizeof(char) * len);
    sanity(out);

    u64 real = 0;
    for (u64 i = 0; i < len; i++) {
        if (input[ i ] == '0' || input[ i ] == '1') out[ real++ ] = input[ i ];
    }

    new->text   = out;
    new->length = real;
    return new;
}

instruct byte2instruct(char *bytes) {
    instruct output = 0;
    for (int i = 0; i < 8; i++) {
        u64 t = (((u64) bytes[ i ])) & 0b11111111;
        u64 y = (t) << ((7 - i) * 8);
        output |= y;
    }

    return output;
}

int main() {
    nullfd = fopen("/dev/null", "w");

    string input = malloc(sizeof(char) * 256);
    sanity(input);

    u64 length = 256;
    u64 spot   = 0;

    char got = getchar();
    while (got != EOF) {
        input[ spot ] = got;
        if (spot == length - 1) {
            length += 256;
            input = realloc(input, sizeof(char) * length);
            sanity(input);
        }

        got = getchar();
        spot++;
    }

    input[ spot ]    = 0;
    _string *no_junk = unjunk(spot, input); // remove non-binary characters ;3

    _string *normalized_input
        = binary_to_char(no_junk->length, no_junk->text); // convert to byte array
    u64 final_length = normalized_input->length;

    if (final_length % 8 != 0) {
        printf("Error: System code not aligned to 8\n");
        exit(EXIT_FAILURE);
    }

    if (final_length > SYSTEM_CODE) {
        printf("Error: System code too long\n");
        exit(EXIT_FAILURE);
    }

    // set registers
    for (short i = 0; i < 16; i++) REGISTERS[ i ] = 0;

    // fill memory locations
    for (u64 i = 0; i < final_length; i++)
        memory[ i ] = (unsigned char) normalized_input->text[ i ];

    PC = 0; // program counter starts at memory address zero
    while (1) {
        // construct instruction
        instruct inst = byte2instruct(&memory[ PC ]);
        PC += 8;
        // read and parse
        bool return_value = parse_inst(inst);
        if (!return_value) break;
    }

end:;
    string regs = "ABCDEFGHIJKLMNOP";
    for (int i = 0; i < 16; i++) {
        printf("r%c: ", regs[ i ]);
        printBits(2, &REGISTERS[ i ], 1);
        printf(", %i\n", REGISTERS[ i ]);
    }
}
