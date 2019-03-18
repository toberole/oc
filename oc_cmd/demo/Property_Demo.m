
#import "Property_Demo.h"
#import <Foundation/Foundation.h>


@implementation Property_Demo

@synthesize age;


// 析构函数
- (void)dealloc
{
    NSLog(@"\n Property_Demo dealloc\n");
}
@end
