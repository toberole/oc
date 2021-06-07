#import <Foundation/Foundation.h>
#import "DemoBean1.h"

void main4_task1(NSString*str){
    NSLog(@"main4_task1 str: %@",str);
}

void main4_test(){
    DemoBean1*demo1 = [[DemoBean1 alloc]init];
    [demo1 test];
//    [demo1 performSelector:@selector(test) withObject:@"Hello"];
//
}

void main4_test1(){
    void(^block)(void) = ^(){
        NSLog(@"main4_test1 b ......");
    };
    
    NSLog(@"%@", [block class]);
    NSLog(@"%@", [block superclass]);
    NSLog(@"%@", [[block superclass] superclass]);
    NSLog(@"%@", [[[block superclass] superclass] superclass]);

}

int main(int argc, const char * argv[]) {
    NSLog(@"main_4 ......");
//    main4_test();
    main4_test1();
}
