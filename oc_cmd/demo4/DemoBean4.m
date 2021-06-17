#import "DemoBean4.h"

@implementation DemoBean4

+ (BOOL)supportsSecureCoding{
    return YES;
}
- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeInteger:self.age forKey:@"age"];
    [coder encodeObject:self.str forKey:@"str"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    if (self = [super init]) {
        _age = [coder decodeIntForKey:@"age"];
        _str = [coder decodeObjectForKey:@"str"];
    }
    
    return self;
}
@end


