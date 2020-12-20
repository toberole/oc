#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 @property属性参数：
 读写属性：readwrite/readonly
 setter相关：assign[weak]/retain[strong]/copy
 原子性：atomic/nonatomic
 */

@class A;
@interface Demo2_Property : NSObject
@property A*a;
@end

NS_ASSUME_NONNULL_END
