#import "CPP_Wrap.h"
#include "./../cpp_demo/MoveDemo.hpp"
#include "./../cpp_demo/A1.hpp"
#include "./../cpp_demo/B1.hpp"
#import "./../cpp_demo/ByteAligning.hpp"

@implementation CPP_Wrap

- (void)test1{
    MoveDemo demo1;
    printf("address: %p\n",&demo1);
    MoveDemo demo2(demo1);
    printf("address: %p\n",&demo2);
    demo1 = demo2;
    printf("address: %p\n",&demo1);
    demo1 = std::move(demo2);
    printf("address: %p\n",&demo1);
    
    A1*a1 = new A1();
//    delete a1;
//    a1 = nullptr;
    
    a1 = new B1();
    delete a1;
    a1 = nullptr;
}

- (void)test2{
    NSLog(@"C_ByteAligning szie: %lu",sizeof(C_ByteAligning));
    
    NSLog(@"D_ByteAligning szie: %lu",sizeof(D_ByteAligning));
}

@end
