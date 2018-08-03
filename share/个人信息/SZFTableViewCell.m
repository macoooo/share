//
//  SZFTableViewCell.m
//  share
//
//  Created by 强淑婷 on 2018/7/30.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "SZFTableViewCell.h"

@implementation SZFTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.label = [[UILabel alloc] init];
        [self.contentView addSubview:_label];
        
        self.Imagebtn = [[UIButton alloc] init];
        [self.contentView addSubview:_Imagebtn];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _label.frame = CGRectMake(40, 15, 200, 40);
    _label.font = [UIFont systemFontOfSize:20];
    _label.textColor = [UIColor blackColor];
    
    _Imagebtn.frame = CGRectMake(300, 20, 80, 20);
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
