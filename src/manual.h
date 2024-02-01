#define QUOTE(...) #__VA_ARGS__

typedef unsigned long long uint64_t;
typedef long long int64_t;

typedef int64_t i64;
typedef uint64_t u64;

#define reg u64

typedef unsigned char byte;
typedef byte bool;
typedef byte bit;
typedef char *string;

extern int printf(const char *, ...);

const string err_list = QUOTE(\n\n\n\n

List of error codes:\n
0 = No errors\n
1 = Exit success/Halt\n
2 = Memory write OOB\n
3 = Write to constant\n
4 = What the fuck even happened\n
5 = Register write OOB\n

\n\n\n\n
);
