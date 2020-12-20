
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Demo2_Test2 : NSObject
{
    // 私有的外部不能直接访问
    int no;
    int no1;
}

// 直接提供了标准setter getter的成员变量 才能通过“.”语法直接访问

// 标准setter
-(void)setNo:(int)newno;
// 标准getter
-(int)no;


// 此种方法age外部可以直接通过“.”访问 编译器会自动的生成setter和getter
// 编译器会自动的生成一个_age私有属性
@property (nonatomic)int age;

-(void)setNo:(int)no andNo1:(int)no1;

-(void)printInfo;

// 构造方法 一般以init开头
- (id)initWithNo:(int)no andNo1:(int)no1;


@end

NS_ASSUME_NONNULL_END
