#import "ThreadDemo.h"

@implementation ThreadDemo

- (void)start{
    NSLog(@"start ......");
}

- (void)test1{
    NSThread*thread = [[NSThread alloc]initWithTarget:self selector:@selector(start) object:nil];
    [thread start];
    
    // 创建并自动启动
    [NSThread detachNewThreadSelector:@selector(start) toTarget:self withObject:nil];
    
    // 使用 NSObject 的方法创建并自动启动
    [self performSelectorInBackground:@selector(start) withObject:nil];
}

/**
 
 串行队列:
     同步执行,当前线程，一个一个执行
     异步执行,其他线程，一个一个执行
 
 并行队列:
     同步执行,当前线程，一个一个执行
     异步执行,开很多线程，一起执行
 
 */
- (void)test2{
    // 串行队列
    dispatch_queue_t queue1 = dispatch_queue_create("test.queue1", DISPATCH_QUEUE_SERIAL);
    // 同步执行
    dispatch_sync(queue1, ^(){
        NSTimeInterval time=[[NSDate date] timeIntervalSince1970]*1000;
        double i = time;      //NSTimeInterval返回的是double类型
        NSLog(@"1 ...... 1970 timeInterval:%f",i);
    });
    // 同步执行
    dispatch_sync(queue1, ^(){
        NSTimeInterval time=[[NSDate date] timeIntervalSince1970]*1000;
        double i = time;      //NSTimeInterval返回的是double类型
        NSLog(@"2 ...... 1970 timeInterval:%f",i);
    });
    
    // 并行队列
    dispatch_queue_t queue2 = dispatch_queue_create("test.queue2", DISPATCH_QUEUE_CONCURRENT);
    // 异步执行
    dispatch_async(queue2, ^(){
        NSTimeInterval time=[[NSDate date] timeIntervalSince1970]*1000;
              double i = time;      //NSTimeInterval返回的是double类型
              NSLog(@"3 ...... 1970 timeInterval:%f",i);
    });
    // 异步执行
    dispatch_async(queue2, ^(){
        NSTimeInterval time=[[NSDate date] timeIntervalSince1970]*1000;
              double i = time;      //NSTimeInterval返回的是double类型
              NSLog(@"4 ...... 1970 timeInterval:%f",i);
    });
}

- (void)test3{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        NSLog(@"dispatch_get_global_queue 1 ......");
    });
    dispatch_async(queue, ^{
        NSLog(@"dispatch_get_global_queue 2 ......");
    });
}

/**
 同步执行 + 并发队列
 异步执行 + 并发队列
 
 同步执行 + 串行队列
 异步执行 + 串行队列
 
 同步执行 + 主队列
 异步执行 + 主队列
 
 */
- (void)test4{
    // https://www.jianshu.com/p/78d53876e4fb
    // https://www.jianshu.com/p/2d57c72016c6
}

@end
