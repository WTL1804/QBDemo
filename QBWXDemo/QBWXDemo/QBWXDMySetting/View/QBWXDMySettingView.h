//
//  QBWXMySettingView.h
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/16.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@protocol ClickCell <NSObject>

- (void)didClickCell:(NSIndexPath *)indexPath;

@end

@interface QBWXDMySettingView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *maintableView;

@property (nonatomic, strong) NSArray *defaultCellNameArray;

@property (nonatomic, weak) id <ClickCell> cellClickedDelegate;
@end

NS_ASSUME_NONNULL_END
