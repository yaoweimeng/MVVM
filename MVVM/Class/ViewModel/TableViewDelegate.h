//
//  TableViewDelegate.h
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class User;
@interface TableViewDelegate : NSObject<UITableViewDelegate>
@property (nonatomic, strong)NSArray <User *>*array;
@end

NS_ASSUME_NONNULL_END
