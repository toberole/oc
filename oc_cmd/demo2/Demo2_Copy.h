#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 不可变对象调用copy时候是浅拷贝 其他的情况都是深拷贝
// copy实现NSCopying
@interface Demo2_Copy : NSObject<NSCopying,NSMutableCopying>

@property int n;

@end

NS_ASSUME_NONNULL_END
