//
//  WTJViewController.m
//  share
//
//  Created by 强淑婷 on 2018/7/31.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "WTJViewController.h"
#import "WTJTableViewCell.h"
#import "QSTTableViewCell.h"

@interface WTJViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>
@property(nonatomic ,strong) UITableView *tableView;
@end

@implementation WTJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =  [UIColor whiteColor];
    [self creatTableView];
    // Do any additional setup after loading the view.
}
- (void) creatTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor whiteColor];
    
    [_tableView registerClass:[WTJTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [_tableView registerClass:[QSTTableViewCell class] forCellReuseIdentifier:@"cell3"];
    [_tableView registerClass:[WTJTableViewCell class] forCellReuseIdentifier:@"cell2"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *array = [NSArray arrayWithObjects:@1,@3,@1, nil];
    return [array[section] integerValue];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 8;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 8;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @" ";
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @" ";
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        WTJTableViewCell *cell1 = nil;
        cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell1.titleLabel.text = @"匆匆那年";
        cell1.detailLabel.text = @"share小白";
        cell1.label1.text = @"原创-摄影-练习习作";
        cell1.label2.text = @"10分钟前";
        cell1.newsImage.image = [UIImage imageNamed:@"list_img1"];
        
        return cell1;
    }
    if(indexPath.section == 1){
        QSTTableViewCell *cell3 = nil;
        cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
        
        NSArray *array1 = [NSArray arrayWithObjects:@"国外画册欣赏",@"collection扁平设计",@"版式整理术", nil];
        NSArray *array2 = [NSArray arrayWithObjects:@"share小王",@"share小吕",@"share小王",nil];
        NSArray *array3 = [NSArray arrayWithObjects:@"平面设计-画册设计",@"平面设计-海报设计",@"平面设计", nil];
        NSArray *array4 = [NSArray arrayWithObjects:@"15分钟前",@"16分钟前",@"17分钟前",nil];
        NSArray *array5 = [NSArray arrayWithObjects:@"102",@"26",@"20",nil];
        NSArray *array6 = [NSArray arrayWithObjects:@"100",@"15",@"10",nil];
        NSArray *array7 = [NSArray arrayWithObjects:@"103",@"28",@"50",nil];
        
        cell3.titleLabel.text = array1[indexPath.row];
        cell3.detailLabel.text = array2[indexPath.row];
        cell3.label1.text = array3[indexPath.row];
        cell3.label2.text = array4[indexPath.row];
        
        [cell3.btn1 setTitle:array5[indexPath.row] forState:UIControlStateNormal];
        [cell3.btn2 setTitle:array6[indexPath.row] forState:UIControlStateNormal];
        [cell3.btn3 setTitle:array7[indexPath.row] forState:UIControlStateNormal];
        
        NSArray *array8 = [NSArray arrayWithObjects:@"list_img2",@"list_img3",@"list_img4",nil];
        cell3.newsImage.frame = CGRectMake(10, 0, 170, 140);
        cell3.newsImage.image = [UIImage imageNamed:array8[indexPath.row]];
        cell3.spaceImage.image = [UIImage imageNamed:@" "];
        return cell3;
    }
    else{
        WTJTableViewCell *cell2 = nil;
        cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell2.titleLabel.text = @"字体故事";
        cell2.detailLabel.text = @"share小律";
        cell2.label1.text = @"原创-摄影-练习习作";
        cell2.label2.text = @"45分钟前";
        cell2.newsImage.image = [UIImage imageNamed:@"list_img1"];
        
        return cell2;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
