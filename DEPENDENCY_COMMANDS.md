## anykey.c
compile this and put it in a $PATH-included folder
```c
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv) {
        if(argc >= 2) printf("%s\n", argv[1]);
        system("/bin/stty raw");
        char x = getchar();
        system("/bin/stty cooked");
        return x;
}
```

## endsuccess.c
compile this aswell and put it in optionally the same folder or another $PATH-included folder
```c
#include <stdlib.h>

int main(int argc, char **argv) {
    if(argc != 2) return 0;
    system(argv[1]);
    return 0;
}
```