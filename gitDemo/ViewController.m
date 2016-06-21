//
//  ViewController.m
//  gitDemo
//
//  Created by 朱慧平 on 16/6/21.
//  Copyright © 2016年 Crystal. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [[UIButton alloc] initWithFrame:self.view.bounds];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"Touch Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(alertViewShow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)alertViewShow{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tip" message:@"This is a test abou git " delegate:self cancelButtonTitle:@"I Know" otherButtonTitles:nil, nil];
    NSLog(@"hahahahahah");
    [alert show];
//    i am not okey
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    TwoViewController *TVC = [[TwoViewController alloc] init];
    [self presentModalViewController:TVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
