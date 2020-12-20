#import "Demo2_Test2.h"

@implementation Demo2_Test2

- (void)printInfo{
    NSLog(@"age: %d",_age);
}

- (void)setNo:(int)no andNo1:(int)no1{
    
}

- (void)setNo:(int)newno{
    no = newno;
}

- (id)initWithNo:(int)n andNo1:(int)n1{
//    self = [super init];
//    if(self!=nil){
//
//    }
//    if (self) {
//        no = n;
//        no1 = n1;
//    }
    
        if (self = [super init]) {
            no = n;
            no1 = n1;
        }
    
    return self;
}

// toString
- (NSString *)description
{
    return [NSString stringWithFormat:@"no = %d", no];
}


@end
