//
//  QBWXDSettingView.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/17.
//

#import "QBWXDSettingView.h"
#import "QBWXDSettingTableViewCell.h"
@implementation QBWXDSettingView

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
        [_maintableView registerClass:[QBWXDSettingTableViewCell class] forCellReuseIdentifier:@"switchControlCell"];
        [_maintableView registerClass:[QBWXDSettingTableViewCell class] forCellReuseIdentifier:@"cacheCell"];
        [_maintableView registerClass:[QBWXDSettingTableViewCell class] forCellReuseIdentifier:@"defaultCell"];
        _maintableView.backgroundColor = [UIColor whiteColor];
        _maintableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _defaultCellNameArray = @[  @[@"账号安全", @"地址管理"],
                                @[@"护眼模式", @"清理缓存",@"网络诊断"],
                                    @[@"常见问题",@"意见反馈"]
        ];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_defaultCellNameArray[section] count];
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
    return _defaultCellNameArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    QBWXDSettingTableViewCell *cell;
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            cell = [_maintableView dequeueReusableCellWithIdentifier:@"switchControlCell" forIndexPath:indexPath];
            
        } else if (indexPath.row == 1) {
            cell = [_maintableView dequeueReusableCellWithIdentifier:@"cacheCell" forIndexPath:indexPath];
            cell.cacheLabel.text = @"900KB";
        } else {
            cell = [_maintableView dequeueReusableCellWithIdentifier:@"defaultCell" forIndexPath:indexPath];
            //右边小箭头
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    } else {
        cell = [_maintableView dequeueReusableCellWithIdentifier:@"defaultCell" forIndexPath:indexPath];
        //右边小箭头
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    //取消选中变灰
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.titleLabel.text = _defaultCellNameArray[indexPath.section][indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}
@end
