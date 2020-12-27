#import "Demo3_Test2.h"

@implementation Demo3_Test2

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        if (!self.name) {
            self.name = name;
        }
    }
    return self;
}

@end
