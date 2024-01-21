#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char byte;
typedef byte bool;
typedef char    *string;
typedef uint64_t u64;

#define QUOTE(...) #__VA_ARGS__

#define SYSTEM_CODE 2048 + 1024
#define MEMORY_SIZE SYSTEM_CODE + 13312
#define MEMORY_LAST MEMORY_SIZE - 1

byte memory[ MEMORY_SIZE ] = { [0 ... MEMORY_LAST] = 0 };

const string MANUAL = QUOTE(\n\n\n\n\n\n\n\n\n
--------------------------------------------------------------------------------------------------------------------------------------------\n
|`DEVICE`MANUAL````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`REGISTERS:```````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`rA,`rB,`rC,`...`rO,`rP``````````````````````````````````````16`registers`provided,`each`a`16-bit`unsigned`int,```````````````````````````|\n
|`all`initialized`to`zero.`````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`MEMORY:``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`16384kb`of`memory```````````````````````````````````````````0-based`indexing,`the`first`3072`kilobytes`are`dedicated`to`system`code.`````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`ADDRESSING`MODES:````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`00`ZERO`````````````````````````````````````````````````````Constant`value`zero``````````````````````````````````````````````````````````|\n
|`01`CONSTANT`<constant>``````````````````````````````````````Constant`number.`````````````````````````````````````````````````````````````|\n
|`10`REGISTER`<register>``````````````````````````````````````Value`taken`from`said`register.``````````````````````````````````````````````|\n
|`11`MEMORY```<register>``````````````````````````````````````Value`from`memory`address`in`register.```````````````````````````````````````|\n
|`data`is`just`addr`without`consts`or`zeros````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`INSTRUCTIONS:````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`00`HLT``````````````````````````````````````````````````````Stops`the`program`execution.`````````````````````````````````````````````````|\n
|`01`MOV`<from:data>`<to:addr>````````````````````````````````Moves`data`between`regsiters,`Memory`addresses`and`constants.````````````````|\n
|`10`JUMP`<on:`zero/less/more>`<to:adrr>``````````````````````Jumps`on`said`conditions`(or`gate)`to`said`address.``````````````````````````|\n
|`11`MATH`<op:`+/N>`<left:data>`<right:data>`<dest:addr>``````Performs`math`on`two`numbers`and`puts`the`result`in`the`destination.`````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`ENCODING:````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`Addressing`mode:`[2]`````````````````[14]````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````^`address`mode``````^`value`{0`..`16384}````````````````````````````````````````````````````````````````````````````````|\n
|``=`2`bytes```````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`Instruction:`[2]`+``````````````[62]`````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````^`instruction``````^`data```````````````````````````````````````````````````````````````````````````````````````````````````|\n
--------------------------------------------------------------------------------------------------------------------------------------------\n
\n\n\n\n\n\n\n\n\n
);

typedef uint16_t addr;     // 2 mode, 14 value
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

uint16_t REGISTERS[ 16 ];
uint16_t PC   = 0;
uint16_t LAST = 0;

void printBits(size_t const size, void const *const ptr) {
    unsigned char *b = (unsigned char *) ptr;
    unsigned char  byte;
    int            i, j;

    for (i = size - 1; i >= 0; i--) {
        for (j = 7; j >= 0; j--) {
            byte = (b[ i ] >> j) & 1;
            printf("%u", byte);
        }
    }
    puts("");
}

// get address mode
enum ADDR_MODE { A_ZERO, A_CONSTANT, A_REGISTER, A_MEMORY };
enum ADDR_MODE getmode(addr add) {
    byte left  = (add & 0b1000000000000000) >> 15;
    byte right = (add & 0b0100000000000000) >> 14;
    return left + left + right;
}

// parses address argument
uint16_t parse_arg(addr address) {
    enum ADDR_MODE mode = getmode(address);
    switch (mode) {
        case A_ZERO: return 0;
        case A_CONSTANT: return address & 0b0011111111111111;
        case A_REGISTER: return REGISTERS[ address & 0b0011111111111111 ];
        case A_MEMORY: return memory[ REGISTERS[ address & 0b0011111111111111 ] ];
    }
}

// get instruction mode
enum INST_MODE { I_HLT, I_MOV, I_JMP, I_MATH };
enum INST_MODE getinst(instruct add) {
    byte left  = (add & 0b1000000000000000000000000000000000000000000000000000000000000000) >> 63;
    byte right = (add & 0b0100000000000000000000000000000000000000000000000000000000000000) >> 62;
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
            uint16_t left = parse_arg(
                (inst & 0b0001111111111111111000000000000000000000000000000000000000000000) >> 45);
            uint16_t right = parse_arg(
                (inst & 0b0000000000000000000111111111111111100000000000000000000000000000) >> 29);

            switch (op) {
                case 0:
                    // add
                    output = left + right;
                    output &= 0b0011111111111111;
                    break;
                case 1:
                    // nand
                    output = ~(left & right);
                    output &= 0b0011111111111111;
                    break;
            }

            uint16_t dest
                = (inst & 0b0000000000000000000000000000000000011111111111111110000000000000) >> 13;

            enum ADDR_MODE mode = getmode(dest);
            switch (mode) {
                case A_CONSTANT:
                case A_ZERO:
                    printf("Cannot assign math destination to constant or zero on instruction:\n");
                    // printBits(8, &inst);
                    printf("%02llx\n", inst);
                    printf("Program counter: %hu\n", PC);
                    exit(EXIT_FAILURE);
                case A_MEMORY: memory[ REGISTERS[ dest & 0b0011111111111111 ] ] = output; break;
                case A_REGISTER: REGISTERS[ dest & 0b0011111111111111 ] = output; break;
            }
            break;
        }
        case I_JMP: {
            short    zero = (inst & ((u64) 1 << 61)) >> 61;
            short    less = (inst & ((u64) 1 << 60)) >> 60;
            short    more = (inst & ((u64) 1 << 59)) >> 59;
            uint16_t dest
                = (inst & 0b0000011111111111111110000000000000000000000000000000000000000000) >> 43;

            if (zero && LAST == 0) PC = dest;
            else if (less && (int16_t) LAST < 0)
                PC = dest;
            else if (more && (int16_t) LAST > 0)
                PC = dest;

            break;
        }
        case I_MOV: {
            uint16_t from
                = parse_arg(
                      (inst & 0b0011111111111111110000000000000000000000000000000000000000000000)
                      >> 46)
                  & 0b0011111111111111;
            u64 to
                = (inst & 0b0000000000000000001111111111111111000000000000000000000000000000) >> 30;
            enum ADDR_MODE mode = getmode(to);
            switch (mode) {
                case A_CONSTANT:
                case A_ZERO:
                    printf("Cannot assign mov target to constant or zero on instruction:\n");
                    printBits(8, &inst);
                    printf("Program counter: %hu\n", PC);
                    exit(EXIT_FAILURE);
                case A_MEMORY: memory[ REGISTERS[ to & 0b0011111111111111 ] ] = from; break;
                case A_REGISTER: REGISTERS[ to & 0b0011111111111111 ] = from; break;
            }
            break;
        }
    }

    return 1;
}

void memoryfailure(string __FILE, int __LINE) {
    printf("Memory failure %s %i\n", __FILE, __LINE);
    exit(EXIT_FAILURE);
}

#define sanity(x)                                                                                  \
    if (x == NULL) memoryfailure(__FILE__, __LINE__)

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
        printBits(2, &REGISTERS[ i ]);
    }
}
