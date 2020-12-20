#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Demo2_protocol_1 <NSObject>
@required// 该方法必须实现
-(void)test1_1;

@optional// 可实现可不实现
-(void)test1_2;
@end

NS_ASSUME_NONNULL_END
