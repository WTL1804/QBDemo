//
//  QBWXDSettingViewController.m
//  QBWXDemo
//
//  Created by 王天亮 on 2021/1/17.
//

#import "QBWXDSettingViewController.h"
#import "QBWXDSettingView.h"
@interface QBWXDSettingViewController ()

@end

@implementation QBWXDSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = YES;
    _mainView = [[QBWXDSettingView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_mainView];
    
    UIButton *tempButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [tempButton addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [tempButton setImage:[UIImage imageNamed:@"ic_back_24.png"] forState:UIControlStateNormal];
    tempButton.frame = CGRectMake(0, 0, 25, 25);
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:tempButton];
    [self.navigationItem setLeftBarButtonItem:backButtonItem];
    self.navigationController.title = @"设置";
}
- (void)clickButton {
    [self.navigationController popViewControllerAnimated:YES];
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
