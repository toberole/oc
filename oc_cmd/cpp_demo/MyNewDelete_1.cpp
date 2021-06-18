#include "MyNewDelete_1.hpp"

void* MyNewDelete_1::operator new(size_t size){
    printf("new ......\n");
    return ::operator new(size);
}

void* MyNewDelete_1::operator new[](size_t size){
    printf("new[] ......\n");
    return ::operator new[](size);
}
