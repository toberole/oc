#import "A.h"

//  匿名category[扩展] 可以添加属性 和 方法
@interface A ()
@property int age;
-(void)test;
@end

@implementation A
- (void)test {
    
}

- (id)copy{
    return self;
}
@end
