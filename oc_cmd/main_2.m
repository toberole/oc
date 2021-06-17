#import <Foundation/Foundation.h>
#import "Demo2_Copy.h"
#import "Constant.h"
#import "Demo_Test4.h"

void test1_main2(){
    typedef struct DemoStruct{
        int n;
        int n1;
    } DemoS;
    
    DemoS d = {1,2};
    
    NSRange range = NSMakeRange(1, 2);
    NSString *ns = NSStringFromRange(range);

    NSLog(@"ns: %@",ns);
    
    NSRange nsrange = NSMakeRange(1,2);
    
    
}

void test2_main2(){
    char*chs = "hello";
   NSString *s  = [[NSString alloc]initWithUTF8String:chs];
    
    NSMutableString*s1 = [[NSMutableString alloc]initWithCapacity:10];
    [s1 appendString:@"123"];
    [s1 appendString:@"456"];
    NSLog(@"%@",s1);
}

void test3_main2(){
    // NSArray只能c存放oc对象
    // 当需要把非oc对象存储在NSArray中时 可以用NSValue包装
    struct Struct_Demo{
        int n;
    };
    struct Struct_Demo d = {1};
    NSValue*p = [NSValue valueWithPointer:&d];
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:p];
    p = [array lastObject];
    struct Struct_Demo*pd = [p pointerValue];
    NSLog(@"n = %i",pd->n);
}

void test4_main2(){
    Demo2_Copy * p = [Demo2_Copy new];
    Demo2_Copy*p1 = [p copy];
    Demo2_Copy*p2 = [p mutableCopy];
    
}

void test5_main2(){
    NSLog(@"test_url: %@",test_url);
    NSLog(@"i = %i",test_static_i);
    
    char*ch = NULL;
    printf("ch address: %ld\n",&ch);
}

/**
 Thread
 OC中多线程根据封装程度可以分为三个层次：NSThread、GCD和NSOperation，另外由于OC兼容C语言，因此仍然可以使用C语言的POSIX接口来实现多线程，只需引入相应的头文件：#include <pthread.h>。
 
 NSThread
 NSThread是封装程度最小最轻量级的，使用更灵活，但要手动管理线程的生命周期、线程同步和线程加锁等，开销较大；

 NSThread的基本使用比较简单，可以动态创建初始化NSThread对象，对其进行设置然后启动；也可以通过NSThread的静态方法快速创建并启动新线程；
 此外NSObject基类对象还提供了隐式快速创建NSThread线程的performSelector系列类别扩展工具方法；NSThread还提供了一些静态工具接口来控制当前线程以及获取当前线程的一些信息

 GCD大中央调度
 GCD(Grand Central Dispatch)，又叫大中央调度，对线程操作进行了封装，加入了很多新的特性，内部进行了效率优化，提供了简洁的C语言接口，使用更加简单高效，也是苹果推荐的方式。

 同步dispatch_sync与异步dispatch_async任务派发
 串行队列与并发队列dispatch_queue_t
 dispatch_once_t只执行一次
 dispatch_after延后执行

 
 
 */
void test6_main2(){
    // 当前代码运行所在线程是否是子线程
    BOOL isMultiThreaded = [NSThread isMultiThreaded];
    NSLog(@"isMultiThreaded: %i",isMultiThreaded);
    
    // 获取当前线程
    NSThread *currentThread = [NSThread currentThread];
    NSLog(@"currentThread name: %@",[currentThread name]);
    
    // 线程睡眠5s钟
   //  [NSThread sleepForTimeInterval:5];
    
    // [NSThread exit];
    
    NSThread *newThread = [[NSThread alloc]initWithBlock:^{
        NSLog(@"newThread ......");
    }];
    /* 设置线程优先级threadPriority(0~1.0)，即将被抛弃，将使用qualityOfService代替
     */
    newThread.threadPriority = 1.0;
    newThread.qualityOfService = NSQualityOfServiceUserInteractive;
    /* 开启线程 */
    [newThread start];
    
    
    
    /** NSObejct基类隐式创建线程的一些静态工具方法 **/
    /* 1 在当前线程上执行方法，延迟2s */
//    [self performSelector:@selector(run) withObject:nil afterDelay:2.0];
//    /* 2 在指定线程上执行方法，不等待当前线程 */
//    [self performSelector:@selector(run) onThread:newThread withObject:nil waitUntilDone:NO];
//    /* 3 后台异步执行函数 */
//    [self performSelectorInBackground:@selector(run) withObject:nil];
//    /* 4 在主线程上执行函数 */
//    [self performSelectorOnMainThread:@selector(run) withObject:nil waitUntilDone:NO];
    
    /* 1. 提交异步任务 */
    NSLog(@"开始提交异步任务:");
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        /* 耗时任务... */
        [NSThread sleepForTimeInterval:10];
    });
    NSLog(@"异步任务提交成功！");
        
    /* 2. 提交同步任务 */
    NSLog(@"开始提交同步任务:");
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        /* 耗时任务... */
        [NSThread sleepForTimeInterval:10];
    });
    NSLog(@"同步任务提交成功！");
    
    // dispatch_queue_t 操作队列主要有两种，并发队列和串行队列
    /* 创建一个并发队列 */
    dispatch_queue_t concurrent_queue = dispatch_queue_create("demo.gcd.concurrent_queue", DISPATCH_QUEUE_CONCURRENT);
    /* 创建一个串行队列 */
    dispatch_queue_t serial_queue = dispatch_queue_create("demo.gcd.serial_queue", DISPATCH_QUEUE_SERIAL);
    
    // GCD还提供了几个常用的全局队列以及主队列
    // 获取主队列（在主线程上执行）
    dispatch_queue_t main_queue = dispatch_get_main_queue();
    // 获取不同优先级的全局队列(优先级从高到低)
    dispatch_queue_t queue_high = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_queue_t queue_default = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t queue_low = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    dispatch_queue_t queue_background = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);

       
}

void test7_main2(){
    short d[] = {1,2,3,4,5};
    NSData *data1 = [NSData dataWithBytes:d length:5 * sizeof(short)];
    short*bytes = (short*)[data1 bytes];
    NSLog(@"data: %lu",[data1 length]);
    for (int i = 0; i < [data1 length]/2; i++) {
        short n = bytes[i];
        NSLog(@"data: %i",n);
    }
}

/**
 __strong使用
 除了在Block外使用__weak对对象进行弱引用,我们偶尔还需要在Block内部对弱引用对象进行一次强引用,这是由于, 仅用__weak所修饰的对象,如果被释放,那么这个对象在Block执行的过程中就会变成nil,这就可能会带来一些问题,比如,数组,字典的插入.
 正确的做法是,在Block执行的开始,检验弱引用的对象是否还存在,如果还存在,使用__strong进行强引用,这样,在Block执行的过程中,这个对象就不会被置为nil,而在Block执行完毕后,对象的引用计数就会-1,这样就不会导致对象无法释放.

 */

/**
 __weak修饰的对象被Block引用,不会影响对象的释放,而__strong在Block内部修饰的对象,会保证,在使用这个对象在scope内,这个对象都不会被释放,出了scope,引用计数就会-1,且__strong主要是用在多线程运用中,若果只使用单线程,只需要使用__weak即可
 */
// 声明一个myblock变量
void(^myblock)(void);
void test8_main2(){
    Demo_Test4*obj = [[Demo_Test4 alloc]init];
    
}

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        printf("Hello, World! ...... printf \n");
        
        // test1_main2();
        // test2_main2();
        // test3_main2();
        // test4_main2();
        // test5_main2();
        // test6_main2();
        test7_main2();
    }
    
    [NSThread sleepForTimeInterval:1];
    return 0;
}
