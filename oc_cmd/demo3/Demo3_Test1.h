#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Demo3_Test1 : NSObject

@property NSArray* n;
@property NSString*str;

@property (nonatomic,strong) NSString*lazy_load;

-(instancetype)initWithDict:(NSDictionary*)dict;

@end

NS_ASSUME_NONNULL_END
