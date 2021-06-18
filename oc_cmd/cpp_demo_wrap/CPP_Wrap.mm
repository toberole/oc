#import "CPP_Wrap.h"
#include "./../cpp_demo/MoveDemo.hpp"

@implementation CPP_Wrap

- (void)test1{
    MoveDemo demo1;
    MoveDemo demo2(demo1);
    demo1 = demo2;
    
    demo1 = std::move(demo2);
}

@end
