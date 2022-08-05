//
//  TableViewDelegate.m
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import "TableViewDelegate.h"
#import "User.h"
@implementation TableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    User *user = [_array objectAtIndex:indexPath.row];
    NSLog(@"%@",user.name);
}
@end
