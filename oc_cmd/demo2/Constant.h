#import <Foundation/Foundation.h>


#ifndef Constant_h
#define Constant_h

// extern表明 test_url在其他地方定义，此处只是声明，
// 注意全局变量是可以多次声明的，但是只能定义一次
extern NSString *test_url;

// 声明 static test_static_i
extern int test_static_i;

#endif /* Constant_h */
