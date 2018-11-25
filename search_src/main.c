#include <stdio.h>

char arr[10] = {};

int main() {
    printf("puts = %p\n", puts);
    getchar();

    int x = 100;
    printf("x is 0x%x, &x=%p\n", x, &x);
    getchar();

    x = 0x1337;
    printf("x is 0x%x, &x=%p\n", x, &x);
    getchar();

    x = 0x4122;
    printf("x is 0x%x, &x=%p\n", x, &x);
    getchar();
}
