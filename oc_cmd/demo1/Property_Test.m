#import "Property_Test.h"

@implementation Property_Test

// property int age2; 生成的set和get访问的是age2_x
@synthesize age2 = age2_x;


-(void)setAge3:(int)age3{
    // 错误写法 
    // self.age3 = age3;
    _age3 = age3;
}

@end





