#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
    归档-解归档利用runtime优化
    
    首先runtime有一个api<class_copyIvarList(Class _Nullable cls, unsigned int * _Nullable outCount)>可以让我们获取到类对应的所有属性，
    获取到了类的所有属性后我们可以通过KVC获取到属性对应的值。

 */
@interface DemoBean5 : NSObject<NSSecureCoding>
@property(nonatomic,strong,nullable)NSString*str;
@property(nonatomic,assign)int age;
@end

NS_ASSUME_NONNULL_END
