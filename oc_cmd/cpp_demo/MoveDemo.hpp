#ifndef MoveDemo_hpp
#define MoveDemo_hpp

#include <stdio.h>

/**
 如果没有move拷贝构造函数 和 move赋值运算符
 会调用相应的拷贝构造函数 和 赋值运算符
 */
class MoveDemo {
private:
    u_int8_t*p;
public:
    MoveDemo();
    
    MoveDemo(const MoveDemo&demo);
    
    MoveDemo&operator=(const MoveDemo&demo);
    
    MoveDemo(MoveDemo&&demo);
    
    MoveDemo&operator=(MoveDemo&&demo);
    
    ~MoveDemo();
};

#endif /* MoveDemo_hpp */
