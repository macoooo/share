//
//  LoginViewController.m
//  share
//
//  Created by 强淑婷 on 2018/7/30.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageViewLogin= [[UIImageView alloc] initWithFrame:CGRectMake(160, 100, 100, 150)];
    imageViewLogin.image = [UIImage imageNamed:@"login_logo"];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(160, 260, 100, 50)];
    label.text = @"SHARE";
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:24];
    
    UITextField *firstTextField = [[UITextField alloc] init];
    firstTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"user_img"]];
    firstTextField.leftViewMode = UITextFieldViewModeAlways;
    
    [self.view addSubview:imageViewLogin];
    [self.view addSubview:label];
    [self.view addSubview:firstTextField];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
