//
//  QBWXDSettingView.h
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QBWXDSettingView : UIView <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *maintableView;

@property (nonatomic, strong) NSArray *defaultCellNameArray;
@end

NS_ASSUME_NONNULL_END
