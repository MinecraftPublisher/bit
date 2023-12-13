#include "datatype.h"
#include "list.h"
#include <stdio.h>

ListType(bit);

typedef char *string;
#define auto __auto_type

#define printWhitespace(d)                                                                         \
    ({                                                                                             \
        for (int i = 0; i < d; i++) {                                                              \
            /* auto n_pointer = append(&pointer, "    "); */                                       \
            /* pointer = n_pointer; */                                                             \
            printf("    ");                                                                        \
        }                                                                                          \
    })

void PRINT_BIT_LIST(struct bitList *input, int depth, string pointer);

// "clever" macros to append a string.
#define append_h(str1, str2)                                                                       \
    ({                                                                                             \
        string ___o;                                                                               \
        if (asprintf(&___o, "%s%s", *str1, *str2) <= 0) exit(69);                                  \
        ___o;                                                                                      \
    })
#define format(...)                                                                                \
    ({                                                                                             \
        string *____o;                                                                             \
        if (asprintf(____o, __VA_ARGS__) <= 0) exit(69);                                           \
        ____o;                                                                                     \
    })
#define append(str, ...) append_h(str, format(__VA_ARGS__))
#define printA(...)                                                                                \
    ({                                                                                             \
        /* auto n_pointer = append(&pointer, __VA_ARGS__); */ /* pointer        = n_pointer; */    \
        printf(__VA_ARGS__);                                                                       \
    })

void PRINT_BIT(bit *input, int depth, string pointer) {
    printWhitespace(depth);
    printA("{\n");
    printWhitespace(depth + 1);
    printA("type: bit,\n");
    printWhitespace(depth + 1);
    printA("type: %s,\n", input->type == 0 ? "variable" : "operator");
    if (input->type == 0) { // variable
        printWhitespace(depth + 1);
        printA("variable_type: %s,\n", input->variableType == 1 ? "address" : "constant");
        printWhitespace(depth + 1);
        printA(
            "variable_value: %lu\n",
            input->variableType == 1 ? input->variableValue.address
                                     : (unsigned long) input->variableValue.constant);
    } else { // operator
        printWhitespace(depth + 1);
        string names[ 9 ]
            = { "nop", "nand", "memget", "memset", "function", "call", "exit", "jmt", "syscall" };
        printA("operator_type: %s,\n", names[ input->opType ]);
        printWhitespace(depth + 1);
        printA("args_content: {\n");
        PRINT_BIT_LIST(input->args, depth + 2, pointer);
        printWhitespace(depth + 1);
        printA("}\n");
    }

    printWhitespace(depth);
    printA("}");
}

void PRINT_BIT_LIST(bitList *input, int depth, string pointer) {
    printWhitespace(depth);
    printA("{\n");
    // printWhitespace(depth);
    // printA("address: %p\n", input);
    printWhitespace(depth + 1);
    printA("type: bitList,\n");
    printWhitespace(depth + 1);
    printA("size: %li,\n", input->size - 1);
    printWhitespace(depth + 1);
    printA("data_content: {");
    if (input->size != 1) {
        printA("\n");
        for (int i = 0; i < input->size - 1; i++) {
            PRINT_BIT(&input->data[ i ], depth + 2, pointer);
            if (i + 2 < input->size) printA(",\n");
        }
        printA("\n");
        printWhitespace(depth + 1);
    }
    printA("}\n");
    printWhitespace(depth);
    printA("}\n");
}