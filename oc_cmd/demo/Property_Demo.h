//
//  Property_Demo.h
//  oc_cmd
//
//  Created by Apple on 2019/3/16.
//  Copyright © 2019年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Property_Demo : NSObject
{
    int age;
}

// 编译器会自动实现 setter和getter
@property int age;

@end

NS_ASSUME_NONNULL_END
