#ifndef ByteAligning_hpp
#define ByteAligning_hpp

#include <stdio.h>

/**
 字节对齐：
    1、结构体变量的首地址能够被其最宽基本类型成员的大小所整除；
    2、结构体每个成员相对于结构体首地址的偏移量都是成员大小的整数倍，如有需要编译器会在成员之间加上填充字节；
    3、结构体的总大小为结构体中最宽基本类型成员size大小的整数倍，如有需要编译器会在最末一个成员之后加上填充字节。比如成员中最大size为4，即使就算总大小7，那么参考此条要求那么总大小即为8.
 */


struct A_ByteAligning{
    char i;
    char j;
};
// sizeof(A_ByteAligning) = 2

struct B_ByteAligning{
    char i;
    char j;
    int k;
};
// sizeof(B_ByteAligning) = 8


struct C_ByteAligning{
    char i;
    int j;
    short k;
};
// sizeof(C_ByteAligning) = 12

/**
 可以通过编译指令#pragma pack(N)指定N字节对齐，此时每个数据项将会按照min(N, sizeof(TYPE))进行对齐。
 */
#pragma pack(4)/*指定按4字节对齐 对齐参数需要时2的N次方*/
struct D_ByteAligning{
    char i;
    short k;
};
#pragma pack()/*取消指定对齐，恢复缺省对齐*/
// sizeof(D_ByteAligning) = 4



#endif /* ByteAligning_hpp */
