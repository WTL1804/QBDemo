//
//  QBWXDSettingTableViewCell.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/17.
//

#import "QBWXDSettingTableViewCell.h"

@implementation QBWXDSettingTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([reuseIdentifier isEqualToString:@"switchControlCell"]) {
        _eyeCareSWitch = [[UISwitch alloc] init];
        [self.contentView addSubview:_eyeCareSWitch];
    } else if ([reuseIdentifier isEqualToString:@"cacheCell"]) {
        _cacheLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_cacheLabel];
        _cacheLabel.textColor = [UIColor grayColor];
    }
    _titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_titleLabel];
    _titleLabel.font = [UIFont systemFontOfSize:20];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _titleLabel.frame = CGRectMake(17, 15, 150, 40);
    _eyeCareSWitch.frame = CGRectMake(320, 15, 50, 40);
    _cacheLabel.frame = CGRectMake(320, 15, 80, 40);
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
