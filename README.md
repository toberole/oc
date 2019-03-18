OC中的关键字都是@开头

import 可以避免头文件重复包含的问题，最好不要使用c风格的include

类型都需要“()” 包起来

方法调用需要放在"[]"中，[X y]调用x类的y方法

"."调用 代表get和set方法

"%@" 打印对象

类的成员变量默认是protectd
类的私有方法写在 “.m”文件中，没有在“.h”文件中声明，就是私有的

@property、@synthesize: 
编译器会自动实现 setter和getter
@property 用于声明
使用@synthesize，编译器会在类中自动生成一个变量
eg:
    @synthesize xxx 代表访问成员变量xxx
    @synthesize xxx=yyy 当访问xxx的时候访问的是yyy

@dynamic 编译器不要自动生成 

内存管理：
assign：
    该方法只会针对“纯量类型”(CGFloat或NSInteger等)的简单赋值操作，id类型也要用assign。
strong: 
    使用该特性实例变量在赋值时，会释放旧值同时设置新值，对对象产生一个强引用，用MRC来说就是引用计数+1。
weak: 
    属性表明了一种”非拥有关系“，既不释放旧值，也不保留新值。用MRC就是引用计数不变，当指向的对象被释放时，该属性自动被设置为nil。这里多说一点，weak的runtime实现是通过hash表完成的，用变量名做键，一旦发现属性所指的对象被释放了，立刻设置为nil。
unsafe_unretained：
    和weak一样，唯一的区别就是当对象被释放后，该属性不会被设置为nil。
copy：
    和strong类似，不过该属性会被复制一个新的副本。很多时使用copy是为了方式Mutable（可变类型）在我们不知道的情况下修改了属性值，而用copy可以生成一个不可变的副本防止被修改。如果我们自己实现setter方法的话，需要手动copy。

#pragma mark 注释

类别与扩展(匿名类别)
类别：
①为现有的类添加新方法；
②将类的实现分散到多个不同文件或多个不同框架中(把一个大的类按功能划分成几块,便于维护)
③通过替换现有类中的方法，修正现有类(没有源码文件的情况下)的功能或错误
扩展：
可以在类扩展中声明属性和实例变量。
类扩展声明必须在 @implementation在实现。
所以类扩展的成员变量，方法，都不能被外部方法访问。

Selector:
1）编译时，通过编译器指令 @selector 来获取.
SEL aSelector = @selector(methodName);
2）运行时，通过字符串来获取一个方法名 NSSelectorFromString
SEL aSelector = NSSelectorFromString(@”methodName”);

使用Selector:
使用已经创建好的Selector。你可以通过 performSelector : 来调用某个方法。
// 创建一个run方法选择器 
SEL aSelector = @selector(run);
// 通过 performSelector: 来调用对象的 run 方法 
[aDog performSelector:aSelector]; 
[anStudent performSelector:aSelector];




block:代码块
returnType (^blockName)(parameterTypes) = ^(parameters) {
        statements;
};

xcode快捷键
cmd+shift+y 关闭打开log面板
cmd+a ctrl+i 代码格式化
ctrl+k 删除本行
