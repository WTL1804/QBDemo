//
//  QBWXDSettingTableViewCell.h
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QBWXDSettingTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *titleLabel;

#pragma mark - switchCell
@property (nonatomic, strong) UISwitch *eyeCareSWitch;

#pragma mark - cacheCell
@property (nonatomic, strong) UILabel *cacheLabel;


@end

NS_ASSUME_NONNULL_END
