#include <string>

#import "OC_CALL_CPP_Wrap.h"

#include "./../cpp_demo/OC_CALL_CPP.h"
#include "./../cpp_demo/Test_Demo.hpp"
#include "./../cpp_demo/MyNewDelete_1.hpp"

/**
 OC 调用C++代码需要用“.mm”文件桥接
 在“.mm”文件中可以写C++ OC代码
 */

@interface OC_CALL_CPP_wrap()

@property(nonatomic,assign) OC_CALL_CPP * p;
@property(nonatomic,assign) Test_Demo * p1;

@end

@implementation OC_CALL_CPP_wrap

- (id)init_OC_CALL_CPP:(NSString *)name andAge:(int)age{
    self = [super init];
    
    const char*p_name = [name UTF8String];
    self.p = new OC_CALL_CPP(p_name,age);
    
    // 调用重载的new
    MyNewDelete_1*p = new MyNewDelete_1;
    
    return self;
}

- (void)printInfo{
    self.p->printInfo();
}

- (NSString *)getInfo{
    return [NSString stringWithCString:self.p->getInfo().c_str() encoding:[NSString defaultCStringEncoding]];
}

- (void)destroy{
    if(self.p){
        delete self.p;
        self.p = nullptr;
    }
}

- (void)dealloc
{
    if (self.p!=nullptr) {
        delete self.p;
        self.p = nullptr;
    }
}

- (void)test {
    std::unique_ptr<std::string> p1(new std::string());
    // std::shared_ptr<std::string> p2 = p1;
}

@end





