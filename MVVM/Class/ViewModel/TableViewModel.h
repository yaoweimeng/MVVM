//
//  TableViewModel.h
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^callback) (NSArray *array);

@interface TableViewModel : NSObject

///网络请求
- (void)requestWithCallback:(callback)callback;

@end
NS_ASSUME_NONNULL_END
