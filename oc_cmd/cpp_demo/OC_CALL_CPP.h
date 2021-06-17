#pragma once

#include <stdio.h>
#include <string>
#include <queue>

class OC_CALL_CPP{
public:
    int age;
    std::string name;
    std::queue<std::string> q;
    
public:
    OC_CALL_CPP(std::string name,int age);
    void printInfo();
    std::string getInfo();
};
