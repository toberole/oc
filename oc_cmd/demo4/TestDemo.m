#import "TestDemo.h"

@interface TestDemo ()

@end

@implementation TestDemo

- (void)test1{
    NSLog(@"test1 ......");
    NSHashTable *table = [[NSHashTable alloc]init];
    @try {
        int i = 0;
        int x  =1;
        int y = 0;
//        i = x/y;
        NSLog(@"i = %d",i);
    } @catch (NSException *exception) {
        NSLog(@"exception: %@",exception );
    } @finally {
        NSLog(@"finally exception" );
    }

}

@end
