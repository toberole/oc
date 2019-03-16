//
//  main.m
//  oc_cmd
//
//  Created by Apple on 2019/3/16.
//  Copyright © 2019年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "demo/Student.h"

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
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        test1();
    }
    return 0;
}
