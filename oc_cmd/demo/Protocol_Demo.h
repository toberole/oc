//
//  Protocol_Demo.h
//  oc_cmd
//
//  Created by Apple on 2019/3/18.
//  Copyright © 2019年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
     @protocol  协议名  <父协议>
 
     定义方法
 
     @end
 
 */
@protocol Protocol_Demo <NSObject>
@required
-(void)test;

@optional
-(void)test1;
@end

NS_ASSUME_NONNULL_END
