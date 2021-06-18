#pragma once

#include <stdio.h>
#include <string>

class Test_Demo {
public:
    std::string str;
public:
    // default 关键字 编译器会默认生成一个构造函数 不需要手动实现
    Test_Demo() = default;
    
    // delete 不可用
    Test_Demo(std::string s) = delete;
    
    virtual void test1();
};
