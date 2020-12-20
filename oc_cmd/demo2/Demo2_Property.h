#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 @property属性参数：
 读写属性：readwrite/readonly
 setter相关：assign[weak]/retain[strong]/copy
 原子性：atomic/nonatomic
 */

/**
 内存管理语义：strong，weak，assign，copy，unsafe_unretained
   这些关键字仅会影响属性的set方法，编译器根据不同的关键字生成不同的代码。当我们自定义set方法的时候，也应该符合属性所具备的特质。除了assign可以用来修饰基本数据类型外，其他的关键字都只能用来修饰对象。
    strong表示一种“拥有关系”。为属性设置新值的时候，设置方法会先保留新值（新值的引用计数加一），并释放旧值（旧值的引用计数减一），然后将新值赋值上去。相当于MRC下的retain。
    weak表示一种“非拥有关系”。用weak修饰属性的时候，为属性设置新值的时候，设置方法既不会保留新值（新值的引用计数加一），也不会释放旧值（旧值的引用计数减一）。当属性所指的对象释放的时候，属性也会被置为nil。用于修饰UI控件，代理(delegate)。
    assign可以同时用来修饰基本数据(NSInteger，CGFloat等)类型和对象。当assign用来修饰对象的时候，和weak类似。唯一的区别就是当属性所指的对象释放的时候，属性不会被置为nil，这就会产生野指针。
    copy修饰的属性设置新值的时候，当新值是不可变的，和strong是一模一样的。当新值是可变的(开头是NSMutable)，设置方法不会保留新值（新值的引用计数加一），而是对新值copy一份，不会影响新值的引用计数。copy常用来修饰NSString，因为当新值是可变的，防止属性在不知不觉中被修改。
   unsafe_unretained用来修饰属性的时候，和assing修饰对象的时候是一模一样的。为属性设置新值的时候，设置方法既不会保留新值（新值的引用计数加一），也不会释放旧值（旧值的引用计数减一）。唯一的区别就是当属性所指的对象释放的时候，属性不会被置为nil，这就会产生野指针，所以是不安全的。

 
 
 */

@class A;
@interface Demo2_Property : NSObject
@property A*a;
@end

NS_ASSUME_NONNULL_END
