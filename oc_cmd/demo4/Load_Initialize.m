#import "Load_Initialize.h"

/**
 +load方法是在程序一启动的时候就会调用，并且在main函数之前，是根据Xcode中Compile Sources的顺序调用的。其内部本质是通过函数内存地址的方式实现的。所以在有继承关系的时候子类与父类没有任何关系，不会相互影响。
 
 +initialize方法是我们在第一次使用该类的时候即调用某个方法的时候系统开始调用 ，是一种懒加载的方式。其内部本质是通过objc_msgSend发送消息实现的,因此也拥有objc_msgSend带来的特性,也就是说子类会继承父类的方法实现,而分类的实现也会覆盖元类。

 */
@implementation Load_Initialize

/**
 结论
 +load方法是在程序一启动的时候就会调用，并且在main函数之前，是根据Xcode中Compile Sources的顺序调用的。其内部本质是通过函数内存地址的方式实现的。所以在有继承关系的时候子类与父类没有任何关系，不会相互影响。
 +initialize方法是我们在第一次使用该类的时候即调用某个方法的时候系统开始调用 ，是一种懒加载的方式。其内部本质是通过objc_msgSend发送消息实现的,因此也拥有objc_msgSend带来的特性,也就是说子类会继承父类的方法实现,而分类的实现也会覆盖元类。

 */

/**
     + load是应用一启动就调动，
     + initialize是我们调用该类方法的时候才会调用，而且这两个方法理论上只会调用一次。
 */

/**
    应用已启动该方法就会被系统调用执行
 */
+ (void)load{
    NSLog(@"Load_Initialize#load ......");
}

+ (void)initialize{
    NSLog(@"Load_Initialize#load initialize ......");
    if (self == [Load_Initialize class]) {
        NSLog(@"Load_Initialize#load initialize 'self == [Load_Initialize class]'......");
    }
}

@end
