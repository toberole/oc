#import "Animal.h"

@implementation Animal

- (instancetype)initWithName:(NSArray *)name andWeight:(int)weight{
    if (self = [super init]) {
        _name = name;
        _weight = weight;
    }
    
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    // 注意不能调用super
//    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    NSLog(@"observeValueForKeyPath keyPath: %@",keyPath);
}

- (void)eat{
    NSLog(@"Animal name: %@,weight: %i",self.name,self.weight);
}



@end
