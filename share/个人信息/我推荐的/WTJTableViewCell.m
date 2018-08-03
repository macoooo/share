//
//  WTJTableViewCell.m
//  share
//
//  Created by 强淑婷 on 2018/7/31.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "WTJTableViewCell.h"

@implementation WTJTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        self.titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];
        
        self.detailLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_detailLabel];
        
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
        
        self.label2 = [[UILabel alloc] init];
        [self.contentView addSubview:_label2];
        
        self.btn1 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn1];
        
        self.btn2 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn2];
        
        self.btn3 = [[UIButton alloc] init];
        [self.contentView addSubview:_btn3];
        
        self.newsImage = [[UIImageView alloc] init];
        [self.contentView addSubview:_newsImage];
        
    }
    return self;
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    _titleLabel.frame = CGRectMake(210, 10, 150, 30);
    _titleLabel.font = [UIFont systemFontOfSize:20];
    _titleLabel.textColor = [UIColor blackColor];
    
    _detailLabel.textColor = [UIColor grayColor];
    _detailLabel.frame = CGRectMake(320, 10, 80, 30);
    
    _label1.frame = CGRectMake(210, 50, 150, 20);
    _label1.font = [UIFont systemFontOfSize: 15];
    _label1.textColor = [UIColor grayColor];
    
    _label2.frame = CGRectMake(210, 80, 100, 30);
    _label2.font = [UIFont systemFontOfSize: 15];
    _label2.textColor = [UIColor grayColor];
    
    _btn1.frame = CGRectMake(200, 110, 70, 30);
    [_btn1 setImage:[UIImage imageNamed:@"爱心"] forState:UIControlStateNormal];
    [_btn1 setImage:[UIImage imageNamed:@"真心"] forState:UIControlStateSelected];
    [_btn1 addTarget:self action:@selector(press12:) forControlEvents:UIControlEventTouchUpInside];
    
    _btn2.frame = CGRectMake(270, 110, 70, 30);
    [_btn2 setImage:[UIImage imageNamed:@"眼睛"] forState:UIControlStateNormal];
    [_btn2 setImage:[UIImage imageNamed:@"真眼睛"] forState:UIControlStateSelected];
    [_btn2 addTarget:self action:@selector(press12:) forControlEvents:UIControlEventTouchUpInside];
    
    _btn3.frame = CGRectMake(340, 110, 70, 30);
    [_btn3 setImage:[UIImage imageNamed:@"分享"] forState:UIControlStateNormal];
    [_btn3 setImage:[UIImage imageNamed:@"真分享"] forState:UIControlStateSelected];
    [_btn3 addTarget:self action:@selector(press12:) forControlEvents:UIControlEventTouchUpInside];
    
    [_btn1 setTitleColor:[UIColor colorWithRed:0.25f green:0.55f blue:0.82f alpha:1.00f] forState:UIControlStateNormal];
    [_btn2 setTitleColor:[UIColor colorWithRed:0.25f green:0.55f blue:0.82f alpha:1.00f] forState:UIControlStateNormal];
    [_btn3 setTitleColor:[UIColor colorWithRed:0.25f green:0.55f blue:0.82f alpha:1.00f] forState:UIControlStateNormal];
    
    [_btn1 setTitle:@"101" forState:UIControlStateNormal];
    [_btn2 setTitle:@"27" forState:UIControlStateNormal];
    [_btn3 setTitle:@"35" forState:UIControlStateNormal];
    [_btn1 setTitleColor:[UIColor colorWithRed:0.25f green:0.55f blue:0.82f alpha:1.00f] forState:UIControlStateNormal];
    [_btn2 setTitleColor:[UIColor colorWithRed:0.25f green:0.55f blue:0.82f alpha:1.00f] forState:UIControlStateNormal];
    [_btn3 setTitleColor:[UIColor colorWithRed:0.25f green:0.55f blue:0.82f alpha:1.00f] forState:UIControlStateNormal];
    
    _newsImage.frame = CGRectMake(10, 0, 170, 140);
}

- (void) press12:(UIButton *)button
{
    button.selected = !button.selected;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
