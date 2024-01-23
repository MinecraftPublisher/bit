#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define auto __auto_type
typedef char *string;

void memoryfailure(char *__FILE, int __LINE) {
    printf("Memory allocation failure %s %i\n", __FILE, __LINE);
    exit(EXIT_FAILURE);
}

#define sanity(x)                                                                                  \
    if (x == NULL) memoryfailure(__FILE__, __LINE__)

#define PCAT(x, y)    x##y
#define CAT(x, y)     PCAT(x, y)
#define CAT3(x, y, z) CAT(CAT(x, y), z)

// -------------------------- DOOM CODE --------------------------
// ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
// TOUCHING THIS CODE WILL RESULT IN BRAIN CANCER & OTHER DISEASES
// ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
// -------------------------- DOOM CODE --------------------------
#define bh_create_sized(arr_type)                                                                  \
    typedef struct CAT(sized_, arr_type) {                                                         \
        unsigned long long size;                                                                   \
        arr_type          *array;                                                                  \
    } CAT(sized_, arr_type);                                                                       \
                                                                                                   \
    CAT(sized_, arr_type) * CAT(bh_init_, arr_type)() {                                            \
        CAT(sized_, arr_type) *__arr__ = malloc(sizeof(CAT(sized_, arr_type)));                    \
        sanity(__arr__);                                                                           \
        __arr__->size  = 0;                                                                        \
        __arr__->array = malloc(sizeof(arr_type));                                                 \
        sanity(__arr__->array);                                                                    \
        return __arr__;                                                                            \
    }                                                                                              \
                                                                                                   \
    CAT(sized_, arr_type)                                                                          \
    *CAT(bh_append_, arr_type)(CAT(sized_, arr_type) * arr, arr_type element) {                    \
        arr->size++;                                                                               \
        arr->array = realloc(arr->array, sizeof(arr_type) * arr->size);                            \
        sanity(arr->array);                                                                        \
        arr->array[ arr->size - 1 ] = element;                                                     \
        return arr;                                                                                \
    }                                                                                              \
                                                                                                   \
    CAT(sized_, arr_type) * CAT(bh_remove_, arr_type)(CAT(sized_, arr_type) * arr) {               \
        arr->size--;                                                                               \
        arr->array[ arr->size ] = 0;                                                               \
        arr->array              = realloc(arr->array, sizeof(arr_type) * arr->size);               \
        sanity(arr->array);                                                                        \
        return arr;                                                                                \
    }
// ---------------------- END OF DOOM CODE -----------------------
// ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
// TOUCHING THIS CODE WILL RESULT IN BRAIN CANCER & OTHER DISEASES
// ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
// ---------------------- END OF DOOM CODE -----------------------

typedef struct ht {
    struct ht_item {
        string key;
        void  *value;
    }     *keys;
    size_t size;
} ht;

ht *bh_ht_init() {
    ht *x = malloc(sizeof(ht));
    sanity(x);
    x->keys = malloc(sizeof(string));
    sanity(x->keys);

    x->size = 0;

    return x;
}

void *bh_ht_get(ht *table, string key);

ht *bh_ht_set(ht *table, string key, void *value) {
    for (size_t i = 0; i < table->size; i++)
        if (!strcmp(table->keys[ i ].key, key)) {
            table->keys[ i ].value = value;
            return table;
        }

    table->size++;
    table->keys = realloc(table->keys, sizeof(string) * table->size);
    sanity(table->keys);

    table->keys[ table->size - 1 ].key   = key;
    table->keys[ table->size - 1 ].value = value;

    return table;
}

void *bh_ht_get(ht *table, string key) {
    for (size_t i = 0; i < table->size; i++) {
        struct ht_item *item = &table->keys[ i ];
        if (!strcmp(item->key, key)) {
            string          key    = item->key;
            string          value  = item->value;
            struct ht_item *l      = &table->keys[ 0 ];
            string          lkey   = l->key;
            string          lvalue = l->value;

            l->key      = key;
            l->value    = value;
            item->key   = lkey;
            item->value = lvalue;

            return value;
        }
    }

    return NULL;
}

#define bh_ht_delete(table, key) set(table, key, NULL)

string replaceAll(string str, const string old, const string with) {
    if(!strcmp(old, "")) return str;

    size_t old_len = strlen(old);
    size_t new_len = strlen(with);
    size_t diff    = old_len >= new_len ? 0 : new_len - old_len;

    size_t len         = strlen(str);
    size_t num_matches = 0;

    // Count the number of matches
    for (size_t i = 0; i <= len - old_len; i++) {
        if (!strncmp(&str[ i ], old, old_len)) { num_matches++; }
    }

    // Allocate memory for the new string
    string new = malloc(sizeof(char) * (len + num_matches * diff + 1));
    sanity(new);

    // Copy characters from the old string to the new string
    size_t j = 0;
    size_t i = 0;
    for (; i <= len - old_len; i++) {
        if (!strncmp(&str[ i ], old, old_len)) {
            for (size_t k = 0; k < new_len; k++) { new[ j++ ] = with[ k ]; }
            i += old_len - 1;
        } else {
            new[ j++ ] = str[ i ];
        }
    }

    // Copy the remaining characters
    while (i < len) { new[ j++ ] = str[ i++ ]; }

    new[ j ] = '\0';

    return new;
}