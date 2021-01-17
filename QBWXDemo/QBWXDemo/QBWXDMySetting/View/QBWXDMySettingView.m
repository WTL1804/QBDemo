//
//  QBWXMySettingView.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/16.
//

#import "QBWXDMySettingView.h"
#import "QBWXDMySettingTableViewCell.h"
@implementation QBWXDMySettingView 

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _maintableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStyleGrouped];
        [self addSubview:_maintableView];
        _maintableView.delegate = self;
        _maintableView.dataSource = self;
        [_maintableView registerClass:[QBWXDMySettingTableViewCell class] forCellReuseIdentifier:@"topCell"];
        [_maintableView registerClass:[QBWXDMySettingTableViewCell class] forCellReuseIdentifier:@"defaultCell"];
        _maintableView.backgroundColor = [UIColor whiteColor];
        _maintableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _defaultCellNameArray = @[@"我的订单",@"金币商城",@"优惠券",@"入学测试记录",@"客服电话",@"设置"];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section > 0 ? 6 : 1;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return indexPath.section == 0 ? 100 : 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    QBWXDMySettingTableViewCell *cell;
    if (indexPath.section == 0) {
        cell = [_maintableView dequeueReusableCellWithIdentifier:@"topCell" forIndexPath:indexPath];
    } else {
        cell = [_maintableView dequeueReusableCellWithIdentifier:@"defaultCell" forIndexPath:indexPath];
        cell.titleLabel.text = _defaultCellNameArray[indexPath.row];
    }
    //右边小箭头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //取消选中变灰
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.cellClickedDelegate didClickCell:indexPath];
}
@end
