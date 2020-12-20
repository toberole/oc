#import "Demo2_Copy.h"

@implementation Demo2_Copy
- (id)copy{
    NSLog(@"copy ......");
    return self;
}

- (id)mutableCopy{
      NSLog(@"mutableCopy ......");
    return [[Demo2_Copy alloc]init];
}
@end
