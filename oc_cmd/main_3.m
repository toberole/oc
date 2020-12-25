#import <Foundation/Foundation.h>
#import "Demo3_Test1.h"

void test1_demo3(){
    NSDictionary*dict = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"n",@"Hello World",@"str1",
                         @"A",@"ABC",
                         nil];
    
    Demo3_Test1*p = [[Demo3_Test1 alloc]initWithDict:dict];
    NSLog(@"n: %@,str: %@",p.n,p.str);
}

void test2_demo3(){
    Demo3_Test1*p = [[Demo3_Test1 alloc]init];
    // 懒加载是访问 注意写法 不建议p.lazy_load此种写法
    [p lazy_load];
    NSLog(@"test2_demo3 lazy_load: %@",p.lazy_load);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        // test1_demo3();
        test2_demo3();
    }
    
    [NSThread sleepForTimeInterval:1];
    return 0;
}
