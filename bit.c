#include "datatype.h"
#include "file.h"
#include "list.h"
#include "printer.h"
#include <stdio.h>
#include <string.h>
#include <sys/fcntl.h>

// ----------------------- MEMORY LIMITS -----------------------
// -------------------------------------------------------------
#define MAX_MEMORY_SIZE  4294967296
#define BASE_MEMORY_SIZE 1024
#define FAST_MEMORY_SIZE 512

#define SYSCALL_CODE_INDEX            0
#define OVERLOAD_OPERATOR_START_INDEX 1
#define OVERLOAD_OPERATOR_END_INDEX   246
#define EXIT_CODE_INDEX               247
#define FAST_MEMORY_BLOCK_START       248
#define FAST_MEMORY_BLOCK_END         512
// -------------------------------------------------------------
// ----------------------- MEMORY LIMITS -----------------------

#define string char *

ListType(char);

typedef charList Memory;
typedef char    *memoryData;
typedef char     byte;
#define createMemory createcharList
#define expandMemory expandcharList

Memory *forgeMemory() {
    Memory *mem = createMemory();                // initialize memory block
    expandMemory(mem, 512);                      // should become 513
    memoryData data = mem->data;                 // retrieve data pointer
    for (int i = 0; i < 512; i++) data[ i ] = 0; // set block values

    data[ EXIT_CODE_INDEX ] = 1; // exit code is always one if not specified.

    return mem;
}

#define true  1
#define false 0

FILE *devNull;

#define quit goto exit;

bitList *readBitList(byte *memory, unsigned long *programCounter, string code, long size);

// #define DEBUG_LOG
#ifdef DEBUG_LOG
    #define debug(...)                                                                             \
        ({                                                                                         \
            printf(__VA_ARGS__);                                                                   \
            printf("\n");                                                                          \
        })
    #define idebug(...) ({ printf(__VA_ARGS__); })
#else
    #define debug(...)  ({ fprintf(devNull, __VA_ARGS__); })
    #define idebug(...) ({ fprintf(devNull, __VA_ARGS__); })
#endif

void printCode(string code, long size) {
    long i = 0;

    idebug("CODE: ");
    while (i < size) debug("%i", code[ i++ ]);
}

bit *readBit(byte *memory, unsigned long *programCounter, string code, long size) {
    debug("reading bit...");
    printCode(&code[ *programCounter ], size - *programCounter);
    bit *part = malloc(sizeof(bit));

    bool _type = code[ (*programCounter)++ ] - 1;
    part->type = _type;

    debug("type: %i", _type);
    if (_type == 0) { // variable
        debug("    bit is a variable");
        bool _vartype      = code[ (*programCounter)++ ] - 1;
        part->variableType = _vartype;

        if (_vartype == 1) { // 4 byte memory address
            debug("    bit is a memory address");
            part->variableValue.address
                = ((code[ *programCounter ] - 1) << 24) + ((code[ *programCounter + 1 ] - 1) << 16)
                  + ((code[ *programCounter + 2 ] - 1) << 8) + (code[ *programCounter + 3 ] - 1);
            *programCounter += 4;
        } else { // 2 byte constant
            debug("    bit is a constant");
            part->variableValue.constant
                = ((code[ *programCounter ] - 1) << 8) + (code[ *programCounter + 1 ] - 1);
            *programCounter += 2;
            debug("    bit value: %i", part->variableValue.constant);
        }
    } else { // 1 byte operator
        debug("    bit is an operator");
        OperatorType _operator = (code[ (*programCounter)++ ] - 1);

        bitList *_arguments = createbitList();
        bit     *arguments  = _arguments->data;

        part->opType = _operator;
        debug("    bit operator: %i", _operator);

        switch (_operator) {
            case NOP: break; // nop(0)
            case NAND: {     // nand(bit left, bit right)
                expandbitList(_arguments, 2);
                arguments[ 0 ] = *readBit(memory, programCounter, code, size); // bit left
                arguments[ 1 ] = *readBit(memory, programCounter, code, size); // bit right
                break;
            }
            case MEMGET: // memget(bit addr)
                expandbitList(_arguments, 1);
                arguments[ 0 ] = *readBit(memory, programCounter, code, size); // bit addr
                break;
            case MEMSET: { // memset(bit addr, bit<> data)
                expandbitList(_arguments, 2);
                arguments[ 0 ]   = *readBit(memory, programCounter, code, size);    // bit addr
                bitList *bitList = readBitList(memory, programCounter, code, size); // bit<> data
                for (byte i = 0; i < bitList->size; i++) { // write to arguments
                    arguments[ i + 1 ] = bitList->data[ i ];
                    expandbitList(_arguments, 1);
                }
                break;
            }
            case FUNCTION: { // function(bit addr, bit argc, bit<> data)
                expandbitList(_arguments, 2);
                arguments[ 0 ]   = *readBit(memory, programCounter, code, size);    // bit addr
                arguments[ 1 ]   = *readBit(memory, programCounter, code, size);    // bit argc
                bitList *bitList = readBitList(memory, programCounter, code, size); // bit<> data
                for (byte i = 0; i < bitList->size; i++)
                    arguments[ i + 1 ] = bitList->data[ i ]; // write to arguments
                break;
            }
            case CALL: { // call(bit addr, bit<> args)
                expandbitList(_arguments, 1);
                arguments[ 0 ]   = *readBit(memory, programCounter, code, size);    // bit addr
                bitList *bitList = readBitList(memory, programCounter, code, size); // bit<> args
                for (byte i = 0; i < bitList->size; i++)
                    arguments[ i + 1 ] = bitList->data[ i ]; // write to arguments
            }
            case EXIT: break; // exit(0)
            case JMT: {       // jmt(bit expression, bit addr)
                expandbitList(_arguments, 2);
                arguments[ 0 ] = *readBit(memory, programCounter, code, size); // bit expression
                arguments[ 1 ] = *readBit(memory, programCounter, code, size); // bit addr
                break;
            }
            default: // UNUSED operator
                break;
        }

        part->args = _arguments;
    }

    return part;
}

bitList *readBitList(byte *memory, unsigned long *programCounter, string code, long size) {
    bitList *args = createbitList();
    for (byte i = 0; code[ *programCounter ] != 0; i++) {
        expandbitList(args, 1);
        args->data[ i ] = *readBit(memory, programCounter, code, size);
        debug("TIPO: %i", args->data[ i ].opType);
        if (args->data[ i ].opType == NOP) return args;
    }

    return args;
}

char runProgram(string code, long size) {
    Memory              *_mem           = forgeMemory();
    byte                *memory         = _mem->data;
    static unsigned long programCounter = 0;

    bit      part;
    bitList *bits = readBitList(memory, &programCounter, code, size);
    printf("{\n");
    PRINT_BIT_LIST(bits, 1, NULL);

    printf("}\n");

    return memory[ EXIT_CODE_INDEX ];
}

int main(int argc, string *argv) {
    if (argc != 2) {
        printf("-- bit machine --\nruns (only parses for now) supplied bit file.\n");
        printf("Usage:\n  %s <file_name>", argv[ 0 ]);
        exit(0);
    }

    File *f = readFile(argv[ 1 ]);
    if (f->size == 0 || f->content == NULL) exit(1);

    string text = f->content;
    u8     size = f->size;

    devNull = fopen("/dev/null", "w");
    runProgram(text, size - 1);
}