#import <Foundation/Foundation.h>
#import "Demo2_Copy.h"


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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        printf("Hello, World! ...... printf \n");
        
        // test1_main2();
        // test2_main2();
        // test3_main2();
        test4_main2();
    }
    return 0;
}
