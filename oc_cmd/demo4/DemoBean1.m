#import "DemoBean1.h"

@interface DemoBean1 ()

@end

@implementation DemoBean1

-(void)test{
    NSLog(@"DemoBean1 ......");
}

+ (BOOL)resolveClassMethod:(SEL)sel{
    NSLog(@"resolveClassMethod ......");
    return true;
}

@end
