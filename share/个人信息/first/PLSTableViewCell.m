//
//  PLSTableViewCell.m
//  share
//
//  Created by 强淑婷 on 2018/7/29.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "PLSTableViewCell.h"

@implementation PLSTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.label = [[UILabel alloc] init];
        [self.contentView addSubview:_label];
        
        self.image1 = [[UIImageView alloc] init];
        [self.contentView addSubview:_image1];
        
        self.image2 = [[UIImageView alloc] init];
        [self.contentView addSubview:_image2];
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    _label.frame = CGRectMake(80, 20, 100, 20);
    _label.textColor = [UIColor blackColor];
    _label.font = [UIFont systemFontOfSize:20];
    
    _image1.frame = CGRectMake(30, 15, 30, 30);
    
    _image2.frame = CGRectMake(320, 20, 20, 20);
    _image2.image = [UIImage imageNamed:@"img3"];
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
