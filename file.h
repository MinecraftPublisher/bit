#include <_stdio.h>
#include <_types/_uint8_t.h>
#include <stdio.h>
#include <stdlib.h>

typedef uint8_t u8;
typedef char   *string;
#define bool  char
#define false 0
#define true  1

typedef struct {
    u8     size;
    string content;
} File;

string DATA      = "";
u8     DATA_SIZE = -1;

File *createFile(u8 size, string content) {
    File *newFile    = malloc(sizeof(File));
    newFile->content = content;
    newFile->size    = size;

    return newFile;
}

bool SILENT_FILE = false;

File *readFile(string fname) {
    FILE *fp = fopen(fname, "rb");
    if (!fp) {
        if (!SILENT_FILE) (void) fprintf(stderr, "Error opening file: %s.\n", fname);
        return createFile(0, NULL);
    }

    (void) fseek(fp, 0, SEEK_END);
    const int fsize = ftell(fp);

    (void) fseek(fp, 0, SEEK_SET);
    string b = (string) malloc(fsize);

    (void) fread(b, fsize, 1, fp);
    (void) fclose(fp);

    return createFile(fsize, b);
}

File *writeFile(string fname, u8 fsize, string content) {
    FILE *fp = fopen(fname, "wb");

    if (fp == NULL) {
        if (!SILENT_FILE) (void) fprintf(stderr, "Error opening file: %s.\n", fname);
        return createFile(0, NULL);
    }

    for (int i = 0; i < fsize; i++) { (void) fprintf(fp, "%c", content[ i ]); }
    (void) fclose(fp);

    return createFile(-1, content);
}