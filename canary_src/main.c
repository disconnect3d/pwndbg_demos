// Compiled with -fstack-protector-all
#include <stdio.h>

void foo() {
    static int x = 3;
    --x;
    if (x == 0) {
        puts("Calling getchar() - see canary values");
        getchar();
    }

    foo();

}

int main() {
    foo();
}
