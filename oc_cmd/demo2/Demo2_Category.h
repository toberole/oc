#import <Foundation/Foundation.h>
#import "A.h"

NS_ASSUME_NONNULL_BEGIN


// A_Category是A的分类
// Category只能扩展方法 不能增加成员变量
@interface A(A_Category)
// 给A添加一个test方法
-(void)test;
@end

NS_ASSUME_NONNULL_END
