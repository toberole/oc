#import <Foundation/Foundation.h>
#import "Demo3_Test1.h"
#import "Demo3_Test2.h"
#import "Dog.h"
#import "Cat.h"
#import "ThreadDemo.h"

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

void test3_demo3(){
    Demo3_Test2*p = [[Demo3_Test2 alloc]initWithName:@"Hello World!"];
    NSLog(@"name: %@",p.name);
}

void test4_demo3(){
    Animal*animal = nil;
    animal = [[Dog alloc]initWithName:@"dog" andWeight:11];
    [animal eat];
    
    animal = [[Cat alloc]initWithName:@"Hello Cat" andWeight:20];
    [animal eat];
}

void test5_demo3(){
    Animal*animal = [[Animal alloc]init];
    [animal addObserver:animal forKeyPath:@"name" options: NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
    [animal setValue:@"KVC Animal" forKey:@"name"];
    [animal eat];
    
    NSString*className = [Animal className];
    NSLog(@"className: %@",className);
}

void test6_demo3(){
    NSArray*arr = [[NSArray alloc]initWithObjects:@"hello1",@"hello2", nil];
    NSLog(@"arr len: %lu",(unsigned long)arr.count);
    
    NSString*s = [arr objectAtIndex:0];
    NSLog(@"str: %@",s);
}

void test7_demo3(){
    NSMutableDictionary*dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"v-Hello" forKey:@"k-obj"];
    NSString*v = [dict objectForKey:@"k-obj"];
    NSLog(@"value: %@",v);
    
    NSEnumerator*e = [dict keyEnumerator];
    id key = nil;
    while (key = [e nextObject]) {
        NSLog(@"key: %@",key);
    }
}

void *start(void*data){
    NSString*str = CFBridgingRelease(data);
    NSLog(@"currentThread name: %@,str: %@",[[NSThread currentThread] name],str);
    return NULL;
}

#pragma mark 多线程
void test8_demo3(){
    pthread_t thread;
    NSString*data = @"Hello thread ......";
    pthread_create(&thread,NULL,start,CFBridgingRetain(data));
}

void test9_demo3(){
    ThreadDemo*demo = [[ThreadDemo alloc]init];
    [demo test1];
    
    [demo test2];
    NSLog(@"test end ......");
    
    [demo test3];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        // test1_demo3();
        // test2_demo3();
        // test3_demo3();
        // test4_demo3();
        // test5_demo3();
        // test6_demo3();
        // test7_demo3();
        // test8_demo3();
        test9_demo3();
    }
    
    [NSThread sleepForTimeInterval:1];
    return 0;
}
