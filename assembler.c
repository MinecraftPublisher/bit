#include "datatype.h"
#include "file.h"
#include "list.h"
#include <string.h>

#define byte char

ListType(char);
#define skipWhiteSpace()                                                                           \
    while ((*pointer) < size                                                                       \
           && (branch == ' ' || branch == ',' || branch == '\n' || branch == '\t'))                \
        (*pointer)++;
#define fixList()                                                                                  \
    for (u8 i = 0; i < _asm->size - 1; i++) _asm->data[i] = _asm->data[i] + 1
#define startsWith(a, b) (strncmp(a, b, strlen(b)) == 0)
#define stub             (&text[ *pointer ])
#define branch           (&text[ *pointer ])[ 0 ]

#define command(name, index, argc, ...)                                                            \
    {                                                                                              \
        bool compdict[ argc ] = { __VA_ARGS__ };                                                   \
        *pointer += strlen(#name) + 1;                                                             \
        expandcharList(data, 2);                                                                   \
        data->data[ dataPointer++ ] = 1;                                                           \
        data->data[ dataPointer++ ] = index;                                                       \
                                                                                                   \
        for (long i = 0; i < argc; i++) {                                                          \
            skipWhiteSpace();                                                                      \
            charList *arg = assemble(text, size, pointer, compdict[ i ]);                          \
            expandcharList(data, arg->size - 1);                                                   \
            for (long i = 0; i < arg->size - 1; i++) data->data[ dataPointer++ ] = arg->data[ i ]; \
            skipWhiteSpace();                                                                      \
        }                                                                                          \
                                                                                                   \
        if (branch != ')') {                                                                       \
            printf(                                                                                \
                "Unexpected syntax error: Expected closing parenthesis but found '%c'\nWhile "     \
                "parsing instruction <%s>\nLocation: "                                             \
                "%lli\n",                                                                          \
                branch,                                                                            \
                #name,                                                                             \
                *pointer);                                                                         \
            exit(1);                                                                               \
        }                                                                                          \
                                                                                                   \
        *pointer += 1;                                                                             \
    }

charList *assemble(string text, u8 size, u8 *pointer, bool readOne) {
    charList *data        = createcharList();
    u8        dataPointer = 0;

    skipWhiteSpace();
    bool hasRead = false;
    while ((*pointer) < size && (readOne ? !hasRead : 1) && (readOne ? 1 : branch != ')')) {
        if (startsWith(stub, "nop")) { // nop
            if (startsWith(stub, "nop(")) {
                *pointer += 5;
            } else {
                *pointer += 3;
            }
            
            expandcharList(data, 2);
            data->data[ dataPointer++ ] = 1;    // OPERATOR
            data->data[ dataPointer++ ] = 0;    // 0 - nop
        } else if (startsWith(stub, "nand(")) { // nand
            command(nand, 1, 2, true, true)
        } else if (startsWith(stub, "get(")) { // get/memget
            command(get, 2, 1, true)
        } else if (startsWith(stub, "set(")) { // set/memset
            command(set, 3, 2, true, false)
        } else if (startsWith(stub, "function(")) { // function
            command(function, 4, 3, true, true, false)
        } else if (startsWith(stub, "call(")) { // call
            command(call, 5, 2, true, false)
        } else if (startsWith(stub, "exit(")) { // exit
            command(exit, 6, 0)
        } else if (startsWith(stub, "jmt(")) { // jmt
            command(jmt, 7, 2, true, true)
        } else if (startsWith(stub, "&")) {
            // memory address, 4 bytes - read 4 characters
            expandcharList(data, 6);
            *pointer += 1;
            data->data[ dataPointer++ ] = 0; // VARIABLE
            data->data[ dataPointer++ ] = 1; // ADDRESS
            
            long number = 0;
            while(branch >= '0' && branch <= '9' && number < 4294967296) {
                number = number * 10 + branch - '0';
                if(number >= 4294967296) {
                    printf("Unexpected syntax error: Memory value %li is bigger than the defined limit of 4294967296\nLocation: %lli\n", number, *pointer);
                }
                (*pointer)++;
            }

            data->data[ dataPointer++ ] = (byte)((number & 0b11111111000000000000000000000000) >> 24) - 1;
            data->data[ dataPointer++ ] = (byte)((number & 0b111111110000000000000000) >> 16) - 1;
            data->data[ dataPointer++ ] = (byte)((number & 0b1111111100000000) >> 8) - 1;
            data->data[ dataPointer++ ] = (byte)(number & 0b0000000011111111) - 1;
        } else if (startsWith(stub, "@")) {
            // constant, 2 bytes - read 2 characters
            expandcharList(data, 4);
            *pointer += 1;
            data->data[ dataPointer++ ] = 0; // VARIABLE
            data->data[ dataPointer++ ] = 0; // CONSTANT
            
            long number = 0;
            while(branch >= '0' && branch <= '9' && number < 65536) {
                number = number * 10 + branch - '0';
                if(number >= 65536) {
                    printf("Unexpected syntax error: Constant value %li is bigger than the defined limit of 65536\nLocation: %lli\n", number, *pointer);
                }
                (*pointer)++;
            }

            data->data[ dataPointer++ ] = (byte)((number & 0b1111111100000000) >> 8) - 1;
            data->data[ dataPointer++ ] = (byte)(number & 0b11111111) - 1;
        }

        // check for semicolon
        skipWhiteSpace();
        if (branch != ';' && branch != ',' && branch != ')' && readOne != true) {
            printf(
                "Unexpected syntax error: Expected semicolon at the end of statement but found "
                "'%c'\nLocation: %lli\n",
                branch,
                *pointer);
            exit(1);
        }

        if (!readOne && branch == ';') (*pointer)++;

        hasRead = true;
        skipWhiteSpace();
    }

    return data;
}

int main(int argc, string *argv) {
    if (argc != 2) {
        printf("-- bit assembler --\nassembles bit asm code into the executable format.\n");
        printf("Usage:\n  %s <file_name>", argv[ 0 ]);
        exit(0);
    }

    File *f = readFile(argv[ 1 ]);
    if (f->size == 0 || f->content == NULL) exit(1);

    string text = f->content;
    u8     size = f->size;

    static u8 pointer = 0;
    charList *_asm    = assemble(text, size, &pointer, false);
    fixList();
    writeFile("a.out", _asm->size, _asm->data);
}