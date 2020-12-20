#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN

// 类似improt 但是比使用 import时 编译要快
@class Property_Book;

@interface Property_Stu : NSObject

@property int age;

@property Property_Book *book;

@property Property_Book *book1;

@end



NS_ASSUME_NONNULL_END
