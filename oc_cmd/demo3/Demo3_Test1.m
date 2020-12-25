#import "Demo3_Test1.h"

@implementation Demo3_Test1

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

// 当调用setValuesForKeysWithDictionary 传入的kv 如果存在没有属性对应的key 那么会报错 重写该方法 处理此中情况
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"forUndefinedKey value: %@,key: %@",value,key);
}

// 实现懒加载
- (NSString *)lazy_load{
    NSLog(@"lazy_load ......");
    
    if (!_lazy_load /* 注意此处写法 */) {
        _lazy_load = @"_lazy_load ......";
    }
    
    return _lazy_load;
}

@end
