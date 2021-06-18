#ifndef MyNewDelete_1_hpp
#define MyNewDelete_1_hpp

#include <stdio.h>
#include <exception>
#include <new>

class MyNewDelete_1 {
    
public:
    static void*operator new(size_t size);
    static void*operator new[](size_t size);
//    static void operator delete(void*p)noexcept;
//    static void operator delete[](void*p)noexcept;
//
//    static void*operator new(size_t size,std::nothrow_t&e)noexcept;
//    static void*operator new[](size_t size,std::nothrow_t&e)noexcept;
//    static void operator delete(void*p,std::nothrow_t&e)noexcept;
//    static void operator delete[](void*p,std::nothrow_t&)noexcept;
//
};

#endif /* MyNewDelete_1_hpp */
