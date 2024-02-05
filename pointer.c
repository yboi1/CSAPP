#include"stdio.h"
typedef unsigned char * pointer;

// void show_bytes(pointer start, size_t size_len){
//     for (int i = 0; i < size_len; i++){
//         printf("%p\t 0x%.2x\n", start+i, start[i]);
//         printf("\n");
//     }
// }

// #include <assert.h>

// int main(){
//     int a = 0x01234567;
//     show_bytes((pointer)&a, sizeof(int));
// }

// Demo_3
#include <assert.h>

int main(){
    assert(+0. == -0.);      // 断言成功
    assert(1.0/+0. == 1.0/-0.); // 断言失败
    return 0;
}

