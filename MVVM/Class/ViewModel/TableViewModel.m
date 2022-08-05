//
//  TableViewModel.m
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import "TableViewModel.h"
#import "User.h"
@implementation TableViewModel
- (void)requestWithCallback:(callback)callback{
    //  后台执行：
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(2);
        dispatch_async(dispatch_get_main_queue(), ^{
            //               主线程刷新视图
            NSMutableArray *arr = [NSMutableArray array];
            for (int i = 0; i < 16; i++) {
                int x = arc4random() % 100;
                NSString *string = [NSString stringWithFormat:@"  姓名 + 分数   (random%d)",x];
                User *user = [[User alloc] init];
                user.name = string;
                [arr addObject:user];
            }
            callback(arr);
        });
    });
}

@end
