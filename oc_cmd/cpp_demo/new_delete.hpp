#ifndef new_delete_hpp
#define new_delete_hpp

#include <stdio.h>

/**
 调用new的时候 会发生三步操作：
     1、new 表达式会调用一个名为operator new(或者operator new[])的标准函数，该函数会分配一块内存。
     2、运行对象的构造函数。
     3、返回对象的指针。
 调用delete 会发生两步：
    1、调用被删除对象的析构函数。
    2、调用operator delete的标准库函数释放内存空间。
 
 标准库定义了8个重载的operator new和operator delete
 void*operator new(size_t);
 void*operator new[](size_t);
 void*operator delete(void*)noexcept;
 void*operator delete[](void*)noexcept;
 
 void*operator new(size_t,nothrow_t&)noexcept;
 void*operator new[](size_t,nothrow_t&)noexcept;
 void*operator delete(void*,nothrow_t&)noexcept;
 void*operator delete[](void*,nothrow_t&)noexcept;
 
 类型nothrow_t是定义在new头文件中的一个struct，在这个类型中不包含任何成员。
 new头文件还定义了一个名为nothrow的const对象，用户可以通过这个对象请求new的非抛出版本。
 
 应用程序可以自定义上面函数版本中的任意一个，前提是自定义的版本必须位于全局作用域或者类作用域中。当我们将上述运算符函数定义成类的成员时，它们是隐式静态的我们无须显式地声明static，当然这么做也不会引发错误。因为operator new用在对象构造之前而operator delete用在对象销毁之后，所以这两个成员（new和delete）必须是静态的，而且它们不能操纵类的任何数据成员。
 
 */
class new_delete {
    typedef unsigned int Bit;
    
public:
    Bit mode1:2;// mode1占用 2个bit
    Bit mode2:1;// 占用 1个bit
    Bit mode3:5;// 占用 5个bit
    
public:
    new_delete();
    ~new_delete();
};

#endif /* new_delete_hpp */
