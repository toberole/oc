#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OC_CALL_CPP_wrap : NSObject

-(id)init_OC_CALL_CPP:(NSString*)name andAge:(int)age;
-(void)printInfo;
-(NSString*)getInfo;
-(void)destroy;

-(void)test;

@end

NS_ASSUME_NONNULL_END
