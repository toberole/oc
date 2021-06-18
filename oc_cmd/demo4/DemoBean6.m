#import "DemoBean6.h"

@implementation DemoBean6

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//
//    }
//    return self;
//}

- (instancetype)initWithI:(int)i{
    if (self = [super init]) {
        _i = i;
    }
    
    return self;
}

@end
