#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DemoBean6 : NSObject

@property(nonatomic,assign)int i;

-(instancetype)init NS_UNAVAILABLE;

-(instancetype)initWithI:(int)i;

@end

NS_ASSUME_NONNULL_END
