#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// 只是声明一个类属性的时候
// 最好是使用@class 防止头文件循环导入 在实现文件再使用import
@class B;// 告诉编译器B是个类
@interface A : NSObject
@property B *b;
@end

NS_ASSUME_NONNULL_END
