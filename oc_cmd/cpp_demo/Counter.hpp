#ifndef Counter_hpp
#define Counter_hpp

#include <stdio.h>

class Counter
{
public:
    Counter() : s(0), w(0){};
    int s;    //share_ptr的引用计数
    int w;    //weak_ptr的引用计数
};


#endif /* Counter_hpp */
