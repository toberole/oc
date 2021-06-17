#import <Foundation/Foundation.h>
#import <syslog.h>
#import "Demo2_Test1.h"
#import "Demo2_Test2.h"
#import "Demo2_Test3.h"
#import "A.h"
#import "Demo2_Copy.h"
#import "Demo2_protocol_1.h"
#import "Demo2_protocol_2.h"
#import "Demo2_protocol_1_2_Impl.h"

void test0_main1(){
    Demo2_Test1 *p = [[Demo2_Test1 alloc]init];
    // 直接访问public属性 注意不能使用“.”语法
    p->_name1 = @"ssss";
}

void test1_main1(){
    char*chs = "hhhh";
    NSLog(@"Hello test1_main1");
    NSString*str = @"hello";
}

void test2_main1(){
    Demo2_Test2*p = [[Demo2_Test2 alloc]init];
    // 注意OC中的“.”调用属性
    // “.”调用本质是调用setter和getter
    p.age = 0;// == [p setAge:0]
    [p printInfo];
    
    NSLog(@"%@",p);
}

void test3_main1(){
    Demo2_Test3*p = [[Demo2_Test3 alloc]initWithAge:10];
    p.age = 110;
    NSLog(@"%@",p);
    
    A *a = [[A alloc]init];
    // a.b = nil;
    
   
}

void test_block(){
    int i1 = 1;
    __block int i2 = 0;
    
    // 定义sum block
    int (^sum)(int a,int b) = ^(int a,int b){
        // i1 = 2; 不能修改
        i2 = 2;// 可以修改
        NSLog(@"i1: %d",i1);
        NSLog(@"i2: %d",i2);
        return a+b;
    };
    
    NSLog(@"sum: %d",sum(1,2));
}

void test_copy(){
    NSString*s = @"Hello world!";
    NSString*s1 = [s copy];
    NSLog(@"s: %p,s1: %p",s,s1);
    
    Demo2_Copy*cp1 = [[Demo2_Copy alloc]init];
    cp1.n = 11;
//    Demo2_Copy *cp2 = [cp1 mutableCopy];
//    NSLog(@"cp1: %p,cp2: %p",cp1,cp2);
    
}

void test4_main1(){
    Demo2_protocol_1_2_Impl *p = [[Demo2_protocol_1_2_Impl alloc]init];
    // 判断 p 是否实现了Demo2_protocol_1协议
    BOOL b = [p conformsToProtocol:@protocol(Demo2_protocol_1)];
    // 判断是否实现了test2方法
    b = [p respondsToSelector:@selector(test2)];
}

int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        printf("Hello, World! ...... printf \n");
        // test1_main1();
        // test2_main1();
        // test3_main1();
        // test_block();
        // test_copy();
    }
    return 0;
}
