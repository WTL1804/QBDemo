//
//  QBWXMySettingTableViewCell.h
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QBWXDMySettingTableViewCell : UITableViewCell

#pragma mark - topCellAttribute
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *editorLabel;
@property (nonatomic, strong) UIButton *headImageViewButton;

#pragma mark - defaultCellAttribute
@property (nonatomic, strong) UIImageView *leftImageView;
@property (nonatomic, strong) UILabel *titleLabel;



@end

NS_ASSUME_NONNULL_END
