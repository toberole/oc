#include "OC_CALL_CPP.h"
#include <sstream>
#include <thread>

OC_CALL_CPP::OC_CALL_CPP(std::string name,int age):name(name),age(age){
    
}

void OC_CALL_CPP::printInfo(){
    std::thread th({
        
    });
    printf("name: %s,age: %d\n",name.c_str(),age);
}


std::string OC_CALL_CPP::getInfo(){
    char chs[100];
    sprintf(chs, "name: %s,age: %d",name.c_str(),age);
    return chs;
}
