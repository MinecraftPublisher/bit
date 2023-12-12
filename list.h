#pragma once
#include <stdlib.h>

#define P_CAT(a, b)   a##b
#define CAT(a, b)     P_CAT(a, b)
#define CAT3(a, b, c) CAT(CAT(a, b), c)

#define ListType(LIST_TYPE)                                                                        \
    typedef struct CAT(LIST_TYPE, List) {                                                          \
        long       size;                                                                           \
        LIST_TYPE *data;                                                                           \
    } CAT(LIST_TYPE, List);                                                                        \
                                                                                                   \
    CAT(LIST_TYPE, List)                                                                           \
    *CAT3(expand, LIST_TYPE, List) /*name*/ (CAT(LIST_TYPE, List) * l, long size) {                \
        LIST_TYPE *newPtr = realloc(l->data, (l->size + size) * sizeof(LIST_TYPE));                \
        if (newPtr == NULL) exit(69);                                                              \
        l->data = newPtr;                                                                          \
        l->size += size;                                                                           \
        return l;                                                                                  \
    }                                                                                              \
                                                                                                   \
    CAT(LIST_TYPE, List) * CAT3(create, LIST_TYPE, List) /*name*/ () {                             \
        CAT(LIST_TYPE, List) *newList = malloc(sizeof(CAT(LIST_TYPE, List)));                      \
        if (newList == NULL) exit(69);                                                             \
        newList->size = 1;                                                                         \
        newList->data = malloc(sizeof(LIST_TYPE));                                                 \
        if (newList->data == NULL) exit(69);                                                       \
        return newList;                                                                            \
    }