#pragma once
#define bool char

typedef enum VariableType { VARIABLE_TYPE_ADDRESS, VARIABLE_TYPE_CONSTANT } VariableType;

typedef enum BitType { BIT_TYPE_VARIABLE, BIT_TYPE_OPERATOR } BitType;

typedef enum OperatorType {
    NOP      = 0,
    NAND     = 1,
    MEMGET   = 2,
    MEMSET   = 3,
    FUNCTION = 4,
    CALL     = 5,
    EXIT     = 6,
    JMT      = 7,
    SYSCALL  = 8,
    // LABEL is an extension to the language by the compiler
} OperatorType;

struct bitList;

union VariableValue {
    unsigned short constant;
    unsigned long  address;
};

typedef struct bit {
    BitType      type;
    VariableType variableType;
    OperatorType opType;

    union VariableValue variableValue;
    struct bitList     *args;
} bit;