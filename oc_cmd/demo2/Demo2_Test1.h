#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
    使用属性需要注意 不要在init 和 dealloc 中使用 accessor 即 self.XX
 */

@interface Demo2_Test1 : NSObject
{
    // default
    NSString*_name;
    
    @public
    NSString*_name1;
    
    @protected
    NSString*_name2;
    
    @private
    NSString*_name3;
    
    @package
    NSString*_name4;
}

@property(nonatomic)NSString*_name5;


@end

NS_ASSUME_NONNULL_END
