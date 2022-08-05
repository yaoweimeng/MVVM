//
//  TableViewDataSource.h
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class  User;
@interface TableViewDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, strong)NSArray <User *>*array;
@end

NS_ASSUME_NONNULL_END
