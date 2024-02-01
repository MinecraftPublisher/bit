#include "basm_helper.h"
#include <stdio.h>
#include <stdlib.h>

string current_path;

#define byte   "00000000"
#define byte2  byte byte
#define byte4  byte2 byte2
#define byte8  byte4 byte4
#define byte16 byte8 byte8
#define byte32 byte16 byte16
#define byte64 byte32 byte32

#define fix(i)                                                                                     \
    ({                                                                                             \
        int *__I__ = i;                                                                            \
        *__I__;                                                                                    \
    })

typedef struct bit_asm_context_tag bit_asm_context_t;

bit_asm_context_t *bit_asm_create(void *auxil);
int                bit_asm_parse(bit_asm_context_t *ctx, void **ret);
void               bit_asm_destroy(bit_asm_context_t *ctx);

void run_code(string code) {
    if (code != NULL) {
        string cmd = malloc(strlen(current_path) + strlen(code) + 200);
        sanity(cmd);
        sprintf(cmd, "echo '%s' | %s nostart", code, current_path);

        FILE *pipe = popen(cmd, "r");
        if (!pipe) {
            printf("Couldn't open pipe\n");
            exit(EXIT_FAILURE);
        }

        char ch;
        while ((ch = fgetc(pipe)) != EOF) { putchar(ch); }

        pclose(pipe);
        free(cmd);
    } else {
        bit_asm_context_t *ctx = bit_asm_create(NULL);
        bit_asm_parse(ctx, NULL); // parse stdin
        bit_asm_destroy(ctx);     // destroy context
    }
}

void run_expr(string code) {
    if (code != NULL) {
        string cmd = malloc(strlen(current_path) + strlen(code) + 200);
        sanity(cmd);
        sprintf(cmd, "echo '##EXPRONLY\n%s' | %s nostart", code, current_path);

        FILE *pipe = popen(cmd, "r");
        if (!pipe) {
            printf("Couldn't open pipe\n");
            exit(EXIT_FAILURE);
        }

        char ch;
        while ((ch = fgetc(pipe)) != EOF) { putchar(ch); }

        pclose(pipe);
        free(cmd);
    } else {
        bit_asm_context_t *ctx = bit_asm_create(NULL);
        bit_asm_parse(ctx, NULL); // parse stdin
        bit_asm_destroy(ctx);     // destroy context
    }
}

const char  registers[ 16 ] = "ABCEDFGHIJKLMNOP";
const char *mathops[ 2 ]    = { "ADD", "NAND" };

void print_bin(uint32_t number, int istwentynine) {
    if (istwentynine) printf("%c", (((number & (1 << 14)) >> 14) + '0'));

    for (int j = 0; j < 28; j++) {
        printf("%c", ((number & (1 << (27 - j))) >> (27 - j)) + '0');
        // if ((j % 4 == 0 && j != 0) || j == (1 - istwentynine)) printf(" ");
    }

    printf("\n");
}

void print_reg(uint32_t i) {
    printf("    VALUE IN REG r%c\n    01 ", registers[ i ]);
    print_bin(i, 0);
    printf("\n");
}

#define START_RULE()

bh_create_sized(string);

string trim(string input) {
    if (input == NULL) return NULL;

    size_t length = strlen(input);
    // # count spaces at start
    size_t spaces_start = -1;
    while (input[ ++spaces_start ] == ' ' || input[ spaces_start ] == '\n'
           || input[ spaces_start ] == '\t')
        ;

    // # count spaces at the end
    size_t spaces_end = -1;
    while (input[ length - ++spaces_end - 1 ] == ' ' || input[ length - spaces_end - 1 ] == '\n'
           || input[ length - spaces_end - 1 ] == '\t')
        ;

    if (spaces_start == 0 && spaces_end == 0) return input;
    string new_trim = malloc(sizeof(char) * (length - spaces_start - spaces_end));
    sanity(new_trim);

    size_t j = 0;
    for (size_t i = spaces_start; i < length - spaces_end; i++) { new_trim[ j++ ] = input[ i ]; }

    return new_trim;
}

sized_string *split(string text, char delimeter) {
    sized_string *output = bh_init_string();

    size_t last_ti = 0;
    size_t ti      = 0;
    string _start  = text;
    for (; ti < strlen(text); ti++)
        if (text[ ti ] == delimeter) {
            // # copy the string

            if (ti - last_ti == 0) {
                bh_append_string(output, "");
                continue;
            }

            string new = malloc(sizeof(char) * (ti - last_ti));
            sanity(new);
            for (size_t ni = 0; ni < (ti - last_ti); ni++) { new[ ni ] = _start[ ni ]; }

            bh_append_string(output, trim(new));
            _start  = &text[ ti + 1 ];
            last_ti = ti + 1;
        }

    string new = malloc(sizeof(char) * (ti - last_ti));
    sanity(new);
    for (size_t ni = 0; ni < (ti - last_ti); ni++) { new[ ni ] = _start[ ni ]; }

    bh_append_string(output, new);
    _start  = &text[ ti + 1 ];
    last_ti = ti + 1;
    return output;
}

ht *macro_functions;
ht *constants;

struct macro_define {
    string        name;
    string        text;
    sized_string *args;
};

void create_macro_function(string name, string text, string args) {
    struct macro_define *m = malloc(sizeof(struct macro_define));
    sanity(m);

    m->name = name;
    m->text = text;
    m->args = split(args, ',');

    bh_ht_set(macro_functions, name, m);
}

void run_macro(struct macro_define macro, string raw_inputs) {
    sized_string *sane_inputs = split(raw_inputs, ',');
    if (sane_inputs->size != macro.args->size) {
        printf("CRITICAL ERROR: Invalid argument count provided for macro %s!", macro.name);
        exit(EXIT_FAILURE);
    }

    string final = malloc(sizeof(char) * strlen(macro.text));
    sanity(final);
    strcpy(final, macro.text);

    for (size_t i = 0; i < macro.args->size; i++)
        final = replaceAll(final, macro.args->array[ i ], sane_inputs->array[ i ]);

    run_code(final);
}