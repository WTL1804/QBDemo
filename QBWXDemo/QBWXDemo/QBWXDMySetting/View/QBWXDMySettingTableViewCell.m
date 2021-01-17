//
//  QBWXMySettingTableViewCell.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/16.
//

#import "QBWXDMySettingTableViewCell.h"

@implementation QBWXDMySettingTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([reuseIdentifier isEqualToString:@"topCell"]) {
        
        _nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_nameLabel];
        self.nameLabel.text = @"谢大帅";
        self.nameLabel.font = [UIFont systemFontOfSize:22 weight:0.5];
        
        _editorLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_editorLabel];
        self.editorLabel.text = @"编辑个人资料";
        
        _headImageViewButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.contentView addSubview:_headImageViewButton];
        [self.headImageViewButton setImage:[[UIImage imageNamed:@"dl_entrance_tab_myclass_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        self.headImageViewButton.layer.masksToBounds = YES;
        
    } else if ([reuseIdentifier isEqualToString:@"defaultCell"]){
        
        _titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];
        
        _leftImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_leftImageView];
        _leftImageView.image = [[UIImage imageNamed:@"dl_entrance_tab_myclass_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.nameLabel.frame = CGRectMake(95, 20, 150, 50);
    
    self.editorLabel.frame = CGRectMake(95, 50, 150, 40);
    
    self.headImageViewButton.frame = CGRectMake(10, 10, 80, 80);
    _headImageViewButton.layer.cornerRadius = _headImageViewButton.frame.size.width / 2;
    
    self.titleLabel.frame = CGRectMake(70, 15, 150, 40);
    self.leftImageView.frame = CGRectMake(10, 15, 40, 40);
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
