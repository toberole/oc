xcode快捷键
    cmd+shift+y 关闭打开log面板
    cmd+a ctrl+i 代码格式化
    ctrl+k 删除本行

OC调用C++
需要通过一个“.mm文件桥接”，在“.mm”文件中即可以写C++代码 也可以写OC代码

OC中的关键字都是@开头

import 可以避免头文件重复包含的问题，最好不要使用c风格的include

类型都需要“()” 包起来

方法调用需要放在"[]"中，[x y]:调用x类的y方法

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

GCD：
    Grand Central Dispatch 翻译就是 宏大的中央调度，是苹果开发的一种支持并行操作的机制,基于C语言。
在 GCD 中有两种队列：串行队列和并发队列。两者都符合 FIFO（先进先出）的原则。两者的主要区别是：执行顺序不同，以及开启线程数不同。

串行队列（Serial Dispatch Queue）：

每次只有一个任务被执行。让任务一个接着一个地执行。（只开启一个线程，一个任务执行完毕后，再执行下一个任务）

并发队列（Concurrent Dispatch Queue）：

可以让多个任务并发（同时）执行。（可以开启多个线程，并且同时执行任务）

注意：并发队列的并发功能只有在异步（dispatch_async）函数下才有效

多线程
// 创建串行队列
dispatch_queue_t sq = dispatch_queue_create(NULL, DISPATCH_QUEUE_SERIAL);
    
// 创建并发队列
dispatch_queue_t cq = dispatch_queue_create(NULL, DISPATCH_QUEUE_CONCURRENT);
对于串行队列，GCD 提供了的一种特殊的串行队列：主队列（Main Dispatch Queue）。
- 所有放在主队列中的任务，都会放到主线程中执行。
- 可使用dispatch_get_main_queue()获得主队列。
// 主队列的获取方法
dispatch_queue_t queue = dispatch_get_main_queue();

对于并发队列，GCD 默认提供了全局并发队列（Global Dispatch Queue）。

可以使用dispatch_get_global_queue来获取。需要传入两个参数。第一个参数表示队列优先级，一般用DISPATCH_QUEUE_PRIORITY_DEFAULT。第二个参数暂时没用，用0即可。
// 全局并发队列的获取方法
dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);

创建任务：
GCD 提供了同步执行任务的创建方法dispatch_sync和异步执行任务创建方法dispatch_async。

两种队列（串行队列/并发队列+两种任务执行方式（同步执行/异步执行）
1、同步执行 + 并发队列
2、异步执行 + 并发队列
3、同步执行 + 串行队列
4、异步执行 + 串行队列
两种特殊队列：全局并发队列、主队列。
全局并发队列可以作为普通并发队列来使用。但是主队列因为有点特殊，所以我们就又多了两种组合方式。这样就有六种不同的组合方式了。
5、同步执行 + 主队列
6、异步执行 + 主队列

