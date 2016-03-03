//
//  ViewController.m
//  KeyWindowDemo
//
//  Created by ranwenjie on 16/2/25.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property(nonatomic,strong) UIWindow *adWindow;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // add a textfield
    UITextField *filed = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
    filed.placeholder = @"Input something here";
    filed.clearsOnBeginEditing = YES;
    filed.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:filed];
    
    

    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIWindow *window1 = [[UIWindow alloc] initWithFrame:CGRectMake(0, 80, 320, 320)];
    window1.backgroundColor = [UIColor redColor];
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    window1.rootViewController = vc;
    [window1 makeKeyAndVisible];
    window1.windowLevel = UIWindowLevelNormal;
    self.adWindow = window1;// window1 没有被强应用就释放了
    
    NSLog(@"%@",[UIApplication sharedApplication].windows);
    NSLog(@"%@",[UIApplication sharedApplication].keyWindow);
    NSLog(@"%@",((AppDelegate *)[UIApplication sharedApplication].delegate).window);
    
    
    //[UIApplication sharedApplication].delegate.window.alpha = 0;
//    [UIView animateWithDuration:5 animations:^{
//        self.adWindow.alpha = 0.f;
//    } completion:^(BOOL finished) {
//        [((AppDelegate *)[UIApplication sharedApplication].delegate).window makeKeyWindow];
//        self.adWindow.hidden = YES;
//        [self.adWindow resignKeyWindow];
//    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
