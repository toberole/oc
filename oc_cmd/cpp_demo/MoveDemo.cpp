#include "MoveDemo.hpp"

MoveDemo::MoveDemo(){
    printf("1 ......\n");
}

MoveDemo::MoveDemo(const MoveDemo&demo){
    printf("2 ......\n");
}

MoveDemo&MoveDemo::operator=(const MoveDemo&demo){
    printf("3 ......\n");
    return *this;
}

MoveDemo::MoveDemo(MoveDemo&&demo){
    printf("4 ......\n");
}

MoveDemo&MoveDemo::operator=(MoveDemo&&demo){
    printf("5 ......\n");
    if(&demo!=this){
        this->p = nullptr;
        this->p = demo.p;
        demo.p = nullptr;
    }
    return *this;
}

MoveDemo::~MoveDemo(){
    printf("6 ......\n");
}
