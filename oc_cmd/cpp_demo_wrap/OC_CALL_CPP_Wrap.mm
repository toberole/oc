#include "./../cpp_demo/OC_CALL_CPP.h"
#include <string>
#include "./../cpp_demo/Test_Demo.hpp"

#import "OC_CALL_CPP_Wrap.h"

/**
 OC 调用C++代码需要用“.mm”文件桥接
 在“.mm”文件中可以写C++ OC代码
 */
 
@implementation OC_CALL_CPP_wrap

OC_CALL_CPP * p = nullptr;
Test_Demo*p1 = nullptr;

- (id)init_OC_CALL_CPP:(NSString *)name andAge:(int)age{
    self = [super init];
    
    const char*p_name = [name UTF8String];
    p = new OC_CALL_CPP(p_name,age);
    
    return self;
}

- (void)printInfo{
    p->printInfo();
}

- (NSString *)getInfo{
    return [NSString stringWithCString:p->getInfo().c_str() encoding:[NSString defaultCStringEncoding]];
}

- (void)destroy{
    if(p){
        delete p;
        p = nullptr;
    }
}

- (void)dealloc
{
    if (p!=nullptr) {
        delete p;
        p = nullptr;
    }
}

@end





