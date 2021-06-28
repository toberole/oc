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



#endif /* ByteAligning_hpp */
