#import "Dog.h"

@implementation Dog

- (void)eat{
    [super eat];
    NSLog(@"Dog name: %@,weight: %i",self.name,self.weight);
}

@end
