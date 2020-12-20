/**
 
 注意：由@property声明的属性 在类方法中通过下划线是获取不到的 必须是通过 对象名.属性 才能获取到！～
 @property和@synthesize关键字是针对成员变量以及get/set方法而言的
 
 从Xcode4.4以后@property已经独揽了@synthesize的功能主要有三个作用：
 
 (1)生成了成员变量get/set方法的声明
 (2)生成了私有的带下划线的的成员变量因此子类不可以直接访问，但是可以通过get/set方法访问。那么如果想让定义的成员变量让子类直接访问那么只能在.h文件中定义成员　　　　变量了，因为它默认是@protected
 (3)生成了get/set方法的实现
 
 注意：
 如果已经手动实现了get和set方法的话Xcode不会再自动生成带有下划线的私有成员变量了
 因为xCode自动生成成员变量的目的就是为了根据成员变量而生成get/set方法的
 但是如果get和set方法缺一个的话都会生成带下划线的变量
 
 
 在Xcode4.4版本之前@property和@synthesize的功能是独立分工的：
 
 @property的作用是：自动的生成成员变量set/get方法的声明如代码：
 @property int age; 它的作用和下面两行代码的作用一致
 - (void)setAge:(int)age;
 - (int)age;
 注意：属性名称不要加前缀_ 否则生成的get/set方法中也会有下划线
 
 
 @synthesize的作用是实现@property定义的方法代码如：
 @synthesize age
 将@property中定义的属性自动生成get/set的实现方法而且默认访问成员变量age
 
 如果指定访问成员变量_age的话代码如：
 @synthesize age = _age；意思是：
 把@property中声明的age成员变量生成get/set实现方法，并且在实现方法内部
 访问_age这个成员变量，也就意味着给成员 _age 赋值
 
 注意：访问成员变量 _age 如果在.h文件中没有定义_age成员变量的话，就会在.m文件中自动生成@private类型的成员变量_age
 */


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person_Property : NSObject
{
    int _age;
    
}

@property int age;

// 成员变量 _age get/set方法的声明 (xCode 4.4之前)

//- (void)setAge:(int)age;
//- (int)age;

// 验证方法
- (void)test;
- (void)setWeight:(int)weight;
- (int)weight;

@property int _age;

// 属性中带有下划线 _ 那么生成的get/set也会有下划线 _
//- (void)set_age:(int)_age;
//- (int)_age;

@property NSString *name;
@end


NS_ASSUME_NONNULL_END
