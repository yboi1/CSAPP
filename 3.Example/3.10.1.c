#include <stdio.h>
int Add(int a, int b){
    return a + b;
}
int main()
{
    int (*p)(int, int);
    p = Add;
    int a = 10;
    int b = 12;
    int t = p(a, b);
    printf("%d\n", t);
    return 0;
}