#import "Demo2_Test3.h"

@implementation Demo2_Test3

#pragma mark - 方法分组1注释
#pragma mark 构造方法 此种注释可以快速l索引到该方法
- (id)initWithAge:(int)age {
	if(self=[super init]) {
        _age =age;
	}
	return self;
}


#pragma mark - 方法分组2注释
// 类似java的finnal方法
- (void)dealloc
{
    //[super dealloc];
    NSLog(@"dealloc ......");
}

// 类似java的toString
- (NSString *)description{
	return [NSString stringWithFormat:@"age = %i", _age];
}
@end
