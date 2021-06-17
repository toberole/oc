#import "DemoBean5.h"
#import <objc/runtime.h>

@implementation DemoBean5

+ (BOOL)supportsSecureCoding{
    return YES;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    unsigned int count = 0;
    Ivar *list = class_copyIvarList(objc_getClass("KGPerson"), &count);
    if (count > 0) {
        for (int i = 0; i < count; i++) {
            Ivar ivar = list[i];
            const char *name = ivar_getName(ivar);
            NSString *key = [NSString stringWithUTF8String:name];
            id value = [self valueForKey:key];
            [coder encodeObject:value forKey:key];
        }
    }
    free(list);
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    if (self  =[super init]) {
        // 利用runtime获取类对应的所有属性
        unsigned int count = 0;
        Ivar*list = class_copyIvarList(objc_getClass("DemoBean5"), &count);
        if (count > 0) {
            for (int i = 0; i < count; i++) {
                Ivar ivar = list[i];
                const char *name = ivar_getName(ivar);
                NSString *key = [NSString stringWithUTF8String:name];
                id value = [coder decodeObjectForKey:key];
                [self setValue:value forKey:key];
            }
        }
        
        free(list);
    }
    
    return self;
}

@end
