//
//  UpChuanViewController.m
//  share
//
//  Created by 强淑婷 on 2018/8/1.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "UpChuanViewController.h"
#import "WTJTableViewCell.h"
#import "QSTTableViewCell.h"

@interface UpChuanViewController ()
<
UITableViewDelegate,
UITableViewDataSource,
UIScrollViewDelegate
>
@property(nonatomic ,strong) UITableView *tableView;
@property(nonatomic ,strong) UITableView *tableView2;
@property(nonatomic ,strong) UITableView *tableView3;
@property(nonatomic,strong) UIScrollView *sv;
@property (nonatomic,strong)UISegmentedControl *segment;
@end

@implementation UpChuanViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [self loadTableView];
    _tableView2 = [self loadTableView];
    _tableView3 = [self loadTableView];
    
    _tableView.tag = 1;
    _tableView2.tag = 2;
    _tableView3.tag = 3;
    
    self.navigationItem.title = @"文章";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor  whiteColor],NSForegroundColorAttributeName,[UIFont boldSystemFontOfSize:24.0],NSFontAttributeName,nil];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.21f green:0.53f blue:0.81f alpha:1.00f];
    
    NSArray *array = [NSArray arrayWithObjects:@"上传时间",@"推荐最多",@"分享最多", nil];
    _segment = [[UISegmentedControl alloc] initWithItems:array];
    _segment.frame = CGRectMake(0, 60, self.view.frame.size.width, 50);
    //NSDictionary *dics = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],UITextAttributeTextColor,nil];
    [_segment setBackgroundImage:[UIImage imageNamed:@"essay_background"]
                        forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    UIFont *font = [UIFont boldSystemFontOfSize:20.0f];
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    [_segment setTitleTextAttributes:attributes forState:UIControlStateNormal];
    
    UIColor *greenColor = [UIColor colorWithRed:0.47f green:0.47f blue:0.47f alpha:1.00f];
    NSDictionary *colorAttr = [NSDictionary dictionaryWithObject:greenColor forKey:NSForegroundColorAttributeName];
    [_segment setTitleTextAttributes:colorAttr forState:UIControlStateSelected];
    
    _segment.tintColor = [UIColor whiteColor];
    [self.view addSubview:_segment];
    
    
    _sv = [[UIScrollView alloc] init];
    _sv.frame = CGRectMake(0, 120, 400, [UIScreen mainScreen].bounds.size.height - 50);
    
    _sv.pagingEnabled = YES;
    _sv.scrollEnabled = YES;
    _sv.contentSize = CGSizeMake(400 * 3, 600);
    _sv.bounces = YES;
    _sv.delegate = self;
    
    
    [_sv addSubview:_tableView];
    [_sv addSubview:_tableView2];
    [_sv addSubview:_tableView3];
    
    _tableView.frame = CGRectMake(0, 0, 400, [UIScreen mainScreen].bounds.size.height - 50);
    _tableView2.frame = CGRectMake(400, 0, 400, [UIScreen mainScreen].bounds.size.height - 50);
    _tableView3.frame = CGRectMake(800, 0, 400, [UIScreen mainScreen].bounds.size.height - 50);
    
    [_segment addTarget:self action:@selector(didClicksegmentedControlAction:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_sv];
    
    
    // Do any additional setup after loading the view.
}
- (UITableView *)loadTableView
{
    UITableView  *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 400, [UIScreen mainScreen].bounds.size.height - 50) style:UITableViewStyleGrouped];
    tableView.backgroundColor = [UIColor whiteColor];
    tableView.showsVerticalScrollIndicator = NO;
    
    //    _tableView2 = [[UITableView alloc] initWithFrame:CGRectMake(400, 0, 400, 600) style:UITableViewStyleGrouped];
    //    _tableView2.backgroundColor = [UIColor whiteColor];
    //    _tableView2.showsVerticalScrollIndicator = NO;
    //
    //    _tableView3 = [[UITableView alloc] initWithFrame:CGRectMake(800, 0, 400, 600) style:UITableViewStyleGrouped];
    //    _tableView3.backgroundColor = [UIColor whiteColor];
    //    _tableView3.showsVerticalScrollIndicator = NO;
    
    [tableView registerClass:[WTJTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [tableView registerClass:[QSTTableViewCell class] forCellReuseIdentifier:@"cell3"];
    [tableView registerClass:[WTJTableViewCell class] forCellReuseIdentifier:@"cell2"];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    return tableView;
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
    if(tableView.tag == 1){
        if(indexPath.section == 0){
            WTJTableViewCell *cell1 = nil;
            cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1" ];
            cell1.titleLabel.text = @"匆匆那年";
            cell1.detailLabel.text = @"share小白";
            cell1.label1.text = @"原创-摄影-练习习作";
            cell1.label2.text = @"10分钟前";
            cell1.newsImage.image = [UIImage imageNamed:@"list_img1"];
            
            return cell1;
        }
        if(indexPath.section == 1){
            QSTTableViewCell *cell3 = nil;
            cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3" ];
            
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
            cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2" ];
            cell2.titleLabel.text = @"字体故事";
            cell2.detailLabel.text = @"share小律";
            cell2.label1.text = @"原创-摄影-练习习作";
            cell2.label2.text = @"45分钟前";
            cell2.newsImage.image = [UIImage imageNamed:@"list_img1"];
            
            return cell2;
        }
    }
    if(tableView.tag == 2){
        
        if(indexPath.section == 0){
            WTJTableViewCell *cell2 = nil;
            cell2 = [_tableView2 dequeueReusableCellWithIdentifier:@"cell2"];
            cell2.titleLabel.text = @"字体故事";
            cell2.detailLabel.text = @"share小律";
            cell2.label1.text = @"原创-摄影-练习习作";
            cell2.label2.text = @"45分钟前";
            cell2.newsImage.image = [UIImage imageNamed:@"list_img1"];
            
            return cell2;
        }
        if(indexPath.section == 1){
            QSTTableViewCell *cell3 = nil;
            cell3 = [_tableView2 dequeueReusableCellWithIdentifier:@"cell3" ];
            
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
            WTJTableViewCell *cell1 = nil;
            cell1 = [_tableView2 dequeueReusableCellWithIdentifier:@"cell1" ];
            cell1.titleLabel.text = @"匆匆那年";
            cell1.detailLabel.text = @"share小白";
            cell1.label1.text = @"原创-摄影-练习习作";
            cell1.label2.text = @"10分钟前";
            cell1.newsImage.image = [UIImage imageNamed:@"list_img1"];
            
            return cell1;
        }
    }
    
    else{
        if(indexPath.section == 0){
            WTJTableViewCell *cell1 = nil;
            cell1 = [_tableView3 dequeueReusableCellWithIdentifier:@"cell1" ];
            cell1.titleLabel.text = @"匆匆那年";
            cell1.detailLabel.text = @"share小白";
            cell1.label1.text = @"原创-摄影-练习习作";
            cell1.label2.text = @"10分钟前";
            cell1.newsImage.image = [UIImage imageNamed:@"list_img1"];
            
            return cell1;
        }
        if(indexPath.section == 1){
            QSTTableViewCell *cell3 = nil;
            cell3 = [_tableView3 dequeueReusableCellWithIdentifier:@"cell3" ];
            
            NSArray *array1 = [NSArray arrayWithObjects:@"版式整理术",@"collection扁平设计",@"国外画册欣赏", nil];
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
            cell2 = [_tableView3 dequeueReusableCellWithIdentifier:@"cell2" ];
            cell2.titleLabel.text = @"字体故事";
            cell2.detailLabel.text = @"share小律";
            cell2.label1.text = @"原创-摄影-练习习作";
            cell2.label2.text = @"45分钟前";
            cell2.newsImage.image = [UIImage imageNamed:@"list_img1"];
            
            return cell2;
        }
    }
}

-(void)didClicksegmentedControlAction:(UISegmentedControl *)Seg{
    NSInteger Index = Seg.selectedSegmentIndex;
    switch (Index) {
        case 0:
            [_sv setContentOffset:CGPointMake(_sv.bounds.size.width*0, 0) animated:YES];
            break;
        case 1:
            [_sv setContentOffset:CGPointMake(_sv.bounds.size.width*1, 0) animated:YES];
            break;
        case 2:
            [_sv setContentOffset:CGPointMake(_sv.bounds.size.width*2, 0) animated:YES];
            break;
        default:
            break;
    }
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    if(scrollView.contentOffset.x/400 == 0){
        [self.segment setSelectedSegmentIndex:0];
    }
    if(scrollView.contentOffset.x/400 == 1){
        [self.segment setSelectedSegmentIndex:1];
    }
    if(scrollView.contentOffset.x/400 == 2){
        [self.segment setSelectedSegmentIndex:2];
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
