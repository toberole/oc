#import "Person.h"

@implementation Person
- (int)age{
    return _age;
}

- (void)setAge:(int)age{
    _age = age;
}

- (int)no{
    return _no;
}

-(void)setNo:(int)no{
    _no = no;
}

- (id/* id可以代表任何类型 */)initAgeaWithNo:(int)age andNo:(int)no{
    self = [super init];
    
    if (self) {
        _age = age;
        _no = no;
    }
    
    return self;
}

// 重写toString方法
- (NSString *)description{
    return [NSString stringWithFormat:@"age = %i no = %i",_age,_no];
}
@end
