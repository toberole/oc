#import <Foundation/Foundation.h>
#import "cpp_demo_wrap/OC_CALL_CPP_Wrap.h"
#import "demo4/DemoBean4.h"

void main5_test1(){
//    CPP_Demo1 *demo = [[CPP_Demo1 alloc]init];
//    OC_CALL_CPP_wrap*cc = [[OC_CALL_CPP_wrap alloc]init];
}

void main5_test2(){
    DemoBean4*demo = [[DemoBean4 alloc]init];
    demo.age = 11;
    demo.str = @"hello ";
    NSError*error = nil;
    // 序列化
    NSData*data = [NSKeyedArchiver archivedDataWithRootObject:demo requiringSecureCoding:YES error:&error];
    
    // 反序列化
    if (@available(macOS 11.0, *)) {
        NSArray*arr = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:NSClassFromString(@"DemoBean4") fromData:data error:&error];
        if (nil!=arr &&[arr count]>0) {
            demo = arr[0];
        }
    } else {
        // Fallback on earlier versions
    }
}

int main(int argc, const char * argv[]) {
    NSLog(@"test ......");
    return 0;
}
