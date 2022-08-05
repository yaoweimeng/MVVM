//
//  TableViewDataSource.m
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import "TableViewDataSource.h"
#import "TableViewCell.h"
#import "User.h"
@implementation TableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    User *ser = [_array objectAtIndex:indexPath.row];
    cell.nameLabel.text = ser.name;
    return cell;
}
@end
