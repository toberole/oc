#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 声明一个类文 Student
// oc中的类必须指定继承一个类[默认继承 NSObject]
@interface Student : NSObject {
    // 声明成员变量
    int age;
    int no;
}

/*
 声明类的方法
     成员方法 需要加一个“-”
     静态方法 需要记一个“+”
 */

-(int/* 返回值 */)age;
-(void)setAge:(int)_age/* 参数 */;
-(int)no;
-(void)setNo:(int)_no;

// 这个方法的名字是 setAge：andNo
-(void)setAge:(int)_age andNo:(int)_no;

@end

NS_ASSUME_NONNULL_END
