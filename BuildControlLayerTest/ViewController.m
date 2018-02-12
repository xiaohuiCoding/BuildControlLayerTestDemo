//
//  ViewController.m
//  BuildControlLayerTest
//
//  Created by xiaohui on 2018/2/7.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"
#import "BaseNavigationController.h"
#import "A.h"
#import "B.h"
#import "Safe.h"

#define kScreenSize [UIScreen mainScreen].bounds.size

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;//建议这么声明

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)loadView {
    [super loadView];//如果是代码布局就不用执行这一句了。。。
    
//    [self.view addSubview:self.tableView];
    self.view = self.tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setUpSubviews];
    
//    [self.view addSubview:self.tableView];

    
//    BaseViewController *baseVC = [[BaseViewController alloc] init];
//    [self addChildViewController:baseVC];
//    BaseNavigationController *baseNC = [[BaseNavigationController alloc] init];
//    [self addChildViewController:baseNC];
//    
//    [self.view addSubview:baseVC.view];
//    [self.view addSubview:baseNC.view];
    
//    B *b = [[B alloc] init];
//
//    A *a = [[A alloc] init];
    
//    Safe *safe = [[Safe alloc] init];
//    safe.prop1 = @"cba";
//    safe.prop2 = 111;
    
    self.dataSource = [NSArray array];
    self.dataSource = @[@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test"];
}

- (void)setUpSubviews {
    
}

#pragma mark - DataSource & Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return .1f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[UIView alloc] initWithFrame:CGRectZero];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return .1f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] initWithFrame:CGRectZero];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

#pragma mark - lazy loading

- (UITableView *)tableView {
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenSize.width,kScreenSize.height) style:UITableViewStyleGrouped];
        [self.view addSubview:tableView];
        _tableView = tableView;//此处是浅拷贝，指向同一地址
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

@end
