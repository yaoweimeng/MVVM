//
//  TableViewController.m
//  MVVM
//
//  Created by teyuntong on 2022/8/5.
//

#import "TableViewController.h"
#import "TableViewModel.h"
#import "TableViewDelegate.h"
#import "TableViewDataSource.h"
#define Screen_Width [UIScreen mainScreen].bounds.size.width
#define Screen_Height [UIScreen mainScreen].bounds.size.height
@interface TableViewController ()
{
    NSMutableArray *sourceArr;
    TableViewModel *tableViewModel;
    UITableView *tableView;
    TableViewDataSource *tableViewDataSource;
    TableViewDelegate *tableViewDelegate;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100,Screen_Width , Screen_Height-64) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    tableViewDataSource = [[TableViewDataSource alloc] init];
    tableViewDelegate = [[TableViewDelegate alloc] init];
    tableView.dataSource = tableViewDataSource;
    tableView.delegate = tableViewDelegate;
    tableViewModel = [[TableViewModel alloc] init];
    
    UIButton  *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, Screen_Width, 50)];
    [button setTitle:@"获取数据" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(loadData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
-(void)loadData{
    [tableViewModel requestWithCallback:^(NSArray * _Nonnull array) {
        self->sourceArr = (NSMutableArray *)array;
        self->tableViewDataSource.array = array;
        self->tableViewDelegate.array = array;
        [self->tableView reloadData];
    }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
