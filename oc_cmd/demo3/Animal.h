#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property (nonatomic)int weight;

@property (nonatomic,strong)NSString*name;

-(instancetype)initWithName:(NSArray*)name andWeight:(int)weight;

-(void)eat;

@end

NS_ASSUME_NONNULL_END
