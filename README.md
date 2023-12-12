# bit
random machine code interpreter and parser i came up with....... right now!

supports operations and variables for now, and only parses code into a json-like structure that gets printed to stdout. more scaffolding is required. check `output.example` (or down below) for a sweet exmaple of `nand(0, 1)` parsed. it's all done in C!

in the future the executor will become super optimized to the point of running heavy programs. assmebler will be coming as well!

suppot for loading in custom operators at different slots is planned too (but not yet implemented). i will maybe add features to compile functions loaded into memory to actual machine code, to speed things up and to not need more evaluation. especially the custom operators which will most likely be the most used functions in the program.

in this process i also implemented a fun little list structure which can be called as a macro with any type to generate a list for that type. example:
```c
#include "list.h" // dont forget to actually put it in your code directory!!!
ListType(int)
// stuff below are now available:
// intList - struct with a `long size` and an `int *data`
// createintList() - creates an `intList` with size 1.
// expandintList(intList *list, long size) - expands the input intList by `sizeof(int) * size` bytes.
```

you can make quite a few of these types since their names don't interfere (i wrote ((stole from some stackoverflow post about c preprocessor macros being turing complete)) a join macro and now its useful as hell) and it really saves time when you dont want to rewrite code. it also doesn't cost any runtime speed due to it being a compile-time macro.

```c
#define P_CAT(a, b)   a##b
// apparently it doesnt work without an extra expansion in names and stuff.
#define CAT(a, b)     P_CAT(a, b)
// join three values...... revolutionary!!!!!!!!!!!!!!!!
#define CAT3(a, b, c) CAT(CAT(a, b), c)

void CAT3(my, Little, Function)() {}

// `myLittleFunction()` is now defined.
```

## example

```json
{
    {
        type: bitList,
        size: 2,
        data_content: {
            {
                type: bit,
                type: operator,
                operator_type: nand,
                args_content: {
                    {
                        type: bitList,
                        size: 2,
                        data_content: {
                            {
                                type: bit,
                                type: variable,
                                variable_type: constant,
                                variable_value: 1
                            },
                            {
                                type: bit,
                                type: variable,
                                variable_type: constant,
                                variable_value: 0
                            },

                        }
                    }
                }
            },
            {
                type: bit,
                type: operator,
                operator_type: nop,
                args_content: {
                    {
                        type: bitList,
                        size: 0,
                        data_content: {}
                    }
                }
            },

        }
    }
}
```