#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    int _age;
    int _no;
}

-(void)setAge:(int)age;
-(int)age;

-(void)setNo:(int)no;
-(int)no;

// 构造方法 最好以init开头
-(id/* 代表任何类型 */)initAgeaWithNo:(int)age andNo:(int)no;

@end

NS_ASSUME_NONNULL_END
