#import <Foundation/Foundation.h>

#import "demo/Student.h"
#import "demo/Person.h"
#import "demo/Student+Category4Student.h"
#import "demo/Property_Demo.h"

#import "demo/Protocol_Demo_Impl.h"

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
//        test1();
//        test2();
//        test3();
        test4();
        test5();
        
    }
    return 0;
}
