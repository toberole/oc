#import "Demo2_Copy.h"

@implementation Demo2_Copy
- (id)copyWithZone:(NSZone *)zone{
    NSLog(@"copy ......");
    return  [[Demo2_Copy allocWithZone:zone]init];
}

- (id)mutableCopy{
      NSLog(@"mutableCopy ......");
    return [[Demo2_Copy alloc]init];
}
@end
