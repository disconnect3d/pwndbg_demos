#include <stdio.h>
#include <stdlib.h>

typedef int (*func_t)(const char*);

// use no padding
#pragma pack(1)
typedef struct Data {
    char flag;
    func_t func;
} Data;
#pragma pop

void foo() {}

int main() {
    Data* d = (Data*)malloc(sizeof(Data));

    printf("d = %p\n", d);

    d->flag = 0;
    d->func = puts+10;

    foo();
}
