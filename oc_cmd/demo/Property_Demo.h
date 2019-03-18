#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Property_Demo : NSObject
{
    int age;
}

// 编译器会自动实现 setter和getter
@property int age;
@property int no;

// 编译器会自动的生成 _age1
@property int age1;

// 头文件没有声明 编译器会自动处理生成
@property int no1;

@end

NS_ASSUME_NONNULL_END
