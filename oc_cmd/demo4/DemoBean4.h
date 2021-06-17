#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
     归档-解归档
     相当于序列化和反序列化
 */
@interface DemoBean4 : NSObject<NSSecureCoding>
@property(nonatomic,strong,nullable)NSString*str;
@property(nonatomic,assign)int age;
@end

NS_ASSUME_NONNULL_END
