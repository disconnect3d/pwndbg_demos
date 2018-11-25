#include <stdio.h>

char arr[10] = {};

void foo() {}

int main() {
    printf("puts = %p\n", puts);
    getchar();

    int x = 0;
    printf("x is 0");
    getchar();

    x = 1;
    printf("x is 1");
    getchar();

    x = 0;
    printf("x is 0");
    getchar();

    x = 2;
    printf("x is 2");
    getchar();

    x = 1;
    printf("x is 1");
    getchar();

    x = 0;
    printf("x is 0");
    getchar();

    foo();
}
