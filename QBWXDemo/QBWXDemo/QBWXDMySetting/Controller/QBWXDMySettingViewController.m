//
//  QBWXDMySettingViewController.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/14.
//

#import "QBWXDMySettingViewController.h"
#import "QBWXDMySettingView.h"
#import "QBWXDSettingViewController.h"
@interface QBWXDMySettingViewController () <ClickCell>

@end

@implementation QBWXDMySettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _mainView = [[QBWXDMySettingView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_mainView];
    _mainView.cellClickedDelegate = self;
}
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    self.navigationController.title = @"";
    self.title = @"";
}
- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBarHidden = NO;
}
- (void)didClickCell:(NSIndexPath *)indexPath {
    QBWXDSettingViewController *settingViewController = [[QBWXDSettingViewController alloc] init];
    
    [self.navigationController pushViewController:settingViewController animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
