#import <Foundation/Foundation.h>

#import "demo/Student.h"
#import "demo/Person.h"
#import "demo/Student+Category4Student.h"
#import "demo/Property_Demo.h"
#import "demo1/Property_Test.h"

#import "demo/Protocol_Demo_Impl.h"

#include "cpp_demo_wrap/OC_CALL_CPP_wrap.h"

#pragma mark 注视
void test1(){
    // 第一种方法
    // 创建对象 分配原始内存
    Student *stu = [Student alloc/* 调用Stdent的static alloc方法 分配内存 */];
    // 初始化，第一步分配的内存必须经过初始化 才能使用
    stu = [stu init];
    // 释放对象
    // [stu release];
    
    // 第二种方法
    Student *stu1 = [[Student alloc]init];
    [stu1 setAge:11];
    int age = [stu1 age];
    NSLog(@"age = %i ",age);
    // 调用 setAge：andNo方法
    [stu1 setAge:22 andNo:33];
    NSLog(@"age = %i no = %i",[stu1 age],[stu1 no]);
    
    // 第三种方法 分配内存并且初始化
    Student *stu3 =[Student new];
    stu3.age = 33;
}

void test2(){
    Person * p =[[Person alloc]initAgeaWithNo:10 andNo:20];
    NSLog(@"age = %i no = %i",p.age,p.no);
    NSLog(@"p: %@",[p description]);
    p.no = 11;
    
}

void test3(){
    Property_Demo *pd = [Property_Demo new];
    pd.age = 11;
    NSLog(@"age = %i",pd.age);
}

void test4(){
    Student *stu = [[Student alloc]init];
    [stu test];
}

void test5(){
    Protocol_Demo_Impl * p = [[Protocol_Demo_Impl alloc]init];
    [p test1];
    [p test];
}

void test6(){
    // 创建串行队列
    dispatch_queue_t sq = dispatch_queue_create(NULL, DISPATCH_QUEUE_SERIAL);
    
    dispatch_async(sq, ^(){
        NSLog(@"dispatch _async");
    });
    
    // 创建并发队列
    dispatch_queue_t cq = dispatch_queue_create(NULL, DISPATCH_QUEUE_CONCURRENT);
    
    // 获取全局并发队列

}

void test7(){
    printf("hello printf");
    NSLog(@"Hello main");
}

void test8(){
    Student*stu =[[Student alloc] initWithAge:20 andNO:20];
    
    NSLog(@"age = %i",stu.age);
}

void test9(){
    Student*stu = [Student alloc];
    stu.age = 11;
}

void test10(){
    Property_Test *p = [Property_Test alloc];
    p.age = 100;
    p.age1 = 200;
    p.age2 = 300;
    
    
}

// 可以动态的为已经存在的类添加新的行为。这样可以保证类的原始设计规模较小，功能增加时再逐步扩展。
// 使用Category对类进行扩展时，不需要访问其源代码，也不需要创建子类。Category使用简单的方式，实现了类的相关方法的模块化，把不同的类方法分配到不同的分类文件中。
void test11(){
    Student*stu = [[Student alloc]init];
    [stu test];
}


void test12(){
    
}

void test14(){
    Student * stu = [[Student alloc]init];
    [stu test];
}


/// block 类似函数指针
// 类似一个全局的
/*
typedef int(^Block_test)(int a,int b);

void test13(){
    
    int n = 10;
    
    // 定义一个block
    int(^Sum)(int a,int b)  = ^(int a,int b){
        // 使用变量 n 只能读 不能写
        NSLog(@"sum n = %i",n);
        return a+b;
    };
    
    NSLog(@"sum = %i",Sum(1,2));
    
    // __block z表明后面的变量可以被block修改
    __block int k = 10;
    int(^Sum1)(int a,int b)  = ^(int a,int b){
        // 使用变量 k 能读写
        k++;
        NSLog(@"sum1 k = %i",k);
        return a+b;
    };
}
*/

void test15(){
   OC_CALL_CPP_wrap*p =  [[OC_CALL_CPP_wrap alloc]init_OC_CALL_CPP:@"Hello World" andAge:110];
    [p printInfo];
    NSLog(@"info: %@",[p getInfo]);
    [p destroy];
}

int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        NSString *str = [NSString stringWithString:@"hello"];
        
        test15();
    }
    return 0;
}
