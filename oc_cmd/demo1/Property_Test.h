#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Property_Test : NSObject
{
    int age;
    int age2_x;
}

// 编译器会自动生成set和get
@property int age;

// 编译器会自动生成set和get 和age1
@property int age1;

//synthesize 控制生成的set和get访问的变量
@property int age2;

// 重写set方法
@property int age3;


@end





NS_ASSUME_NONNULL_END
