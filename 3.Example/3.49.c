#include <stdio.h>

long vframe(long n, long idx, long* q){
    long i;
    long *p[n];
    p[0] = &i;
    for (int i = 0; i < n; i++){
        p[i] = q;
    }
    return *p[idx];
}

int main()
{
    long n = 10;
    long idx = 3;

    long *q = &idx;
    vframe(n,idx,q);
    return 0;
}