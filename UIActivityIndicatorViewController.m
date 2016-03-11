//
//  UIActivityIndicatorViewController.m
//  AlertView
//
//  Created by user on 2015/11/14.
//  Copyright (c) 2015年 fu. All rights reserved.
//

#import "UIActivityIndicatorViewController.h"
@interface UIActivityIndicatorViewController()
{
    UIActivityIndicatorView *Indicator;
    
}
@end


@implementation UIActivityIndicatorViewController

-(void)creatIndicator{
    Indicator =[[UIActivityIndicatorView alloc]initWithFrame:CGRectZero];
    Indicator.center = self.view.center;
    Indicator.hidesWhenStopped = YES;
    Indicator.color =[UIColor redColor];
    [self.view addSubview:Indicator];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatIndicator];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showIdicator:(UIButton *)sender {
    if (Indicator.isAnimating)
    {
        [Indicator stopAnimating];
    }
    else
    {
        [Indicator startAnimating];
    }
}

@end
