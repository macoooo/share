//
//  PersonalViewController.m
//  share
//
//  Created by 强淑婷 on 2018/7/27.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "PersonalViewController.h"
#import "PLFTableViewCell.h"
#import "PLSTableViewCell.h"
#import "SZZViewController.h"
#import "MessageViewController.h"
#import "WTJViewController.h"
#import "UpChuanViewController.h"
@interface PersonalViewController ()
@property(nonatomic ,strong) UITableView *tableView;
@end

@implementation PersonalViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
    self.navigationItem.title = @"个人信息";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor  whiteColor],NSForegroundColorAttributeName,[UIFont boldSystemFontOfSize:24.0],NSFontAttributeName,nil];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.21f green:0.53f blue:0.81f alpha:1.00f];
    [self creatTableView];
    // Do any additional setup after loading the view.
}

- (void) creatTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor whiteColor];
    
    [_tableView registerClass:[PLFTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [_tableView registerClass:[PLSTableViewCell class] forCellReuseIdentifier:@"cell2"];
    [_tableView registerClass:[PLSTableViewCell class] forCellReuseIdentifier:@"cell3"];
    [_tableView registerClass:[PLSTableViewCell class] forCellReuseIdentifier:@"cell4"];
    [_tableView registerClass:[PLSTableViewCell class] forCellReuseIdentifier:@"cell5"];
    [_tableView registerClass:[PLSTableViewCell class] forCellReuseIdentifier:@"cell6"];
    [_tableView registerClass:[PLSTableViewCell class] forCellReuseIdentifier:@"cell7"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        return 180;
    }
    return 50;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 7;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @" ";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @" ";
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 1){
        return 8;
    }
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return  3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        PLFTableViewCell *cell1 = nil;
        cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell1.titleLabel.text = @"share小白";
        cell1.detailLabel.text = @"数媒设计爱好者";
        cell1.label1.text = @"开心了就笑，不开心了就过会儿再笑";
        cell1.newsImage.image = [UIImage imageNamed:@"works_head"];
        
        [cell1.btn1 setTitle:@"101" forState:UIControlStateNormal];
        [cell1.btn2 setTitle:@"120" forState:UIControlStateNormal];
        [cell1.btn3 setTitle:@"89" forState:UIControlStateNormal];
        
        return cell1;
    }
    if(indexPath.section == 1){
        PLSTableViewCell *cell2= nil;
        cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell2.label.text = @"我上传的";
        cell2.image1.image = [UIImage imageNamed:@"上传"];
        return cell2;
    }
    if(indexPath.section == 2){
        PLSTableViewCell *cell3 = nil;
        cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
        cell3.label.text = @"我的信息";
        cell3.image1.image = [UIImage imageNamed:@"我的信息"];
        return cell3;
    }
    if(indexPath.section == 3){
        PLSTableViewCell *cell4 = nil;
        cell4 = [_tableView dequeueReusableCellWithIdentifier:@"cell4" forIndexPath:indexPath];
        cell4.label.text = @"我推荐的";
        cell4.image1.image = [UIImage imageNamed:@"我推荐的"];
        return cell4;
    }
    if(indexPath.section == 4){
        PLSTableViewCell *cell5 = nil;
        cell5 = [_tableView dequeueReusableCellWithIdentifier:@"cell5" forIndexPath:indexPath];
        cell5.label.text = @"院系通知";
        cell5.image1.image = [UIImage imageNamed:@"院系通知"];
        return cell5;
    }
    if(indexPath.section == 5){
        PLSTableViewCell *cell6 = nil;
        cell6 = [_tableView dequeueReusableCellWithIdentifier:@"cell6" forIndexPath:indexPath];
        cell6.label.text = @"设置";
        cell6.image1.image = [UIImage imageNamed:@"设置"];
        return cell6;
    }
    else{
        PLSTableViewCell *cell7 = nil;
        cell7 = [_tableView dequeueReusableCellWithIdentifier:@"cell7" forIndexPath:indexPath];
        cell7.label.text = @"退出";
        cell7.image1.image = [UIImage imageNamed:@"退出"];
        return cell7;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SZZViewController *new1 = [[SZZViewController alloc] init];
    MessageViewController *new2 = [[MessageViewController alloc] init];
    WTJViewController *new3 = [[WTJViewController alloc] init];
    UpChuanViewController *new4 = [[UpChuanViewController alloc] init];
    if(indexPath.section == 1){
        [self.navigationController pushViewController:new4 animated:YES];
    }
    if(indexPath.section == 5){
        [self.navigationController pushViewController:new1 animated:YES];
    }
    if(indexPath.section == 2){
        [self.navigationController pushViewController:new2 animated:YES];
    }
    if(indexPath.section == 3){
        [self.navigationController pushViewController:new3 animated:YES];
    }
    
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
