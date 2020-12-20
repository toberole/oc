#import "Student.h"

@implementation Student
// 实现getAge方法
- (int)age{
    return age;
}

- (void)setAge:(int)_age{
    age = _age;
}

- (int)no{
    return no;
}

- (void)setNo:(int)_no{
    no = _no;
}

- (void)setAge:(int)_age andNo:(int)_no{
    age = _age;
    no = _no;
}

-(id)initWithAge:(int)_age andNO:(int)_no{
    //首先调用super
    self = [super init];
    
    if (self) {
        age = _age;
        no = _no;
    }
        
    return self;
}

+ (void)load{
    // 在main 方法之前执行
    [super load];
    NSLog(@"stu load");
}
@end
