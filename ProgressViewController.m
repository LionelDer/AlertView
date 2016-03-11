//
//  UIProgressViewController.m
//  AlertView
//
//  Created by user on 2015/11/15.
//  Copyright (c) 2015年 fu. All rights reserved.
//

#import "ProgressViewController.h"
@interface ProgressViewController()
{   UIProgressView *progressView;
    NSTimer *mytimer;
    NSInteger value;

}
@end
@implementation ProgressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    progressView =[[UIProgressView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-70, self.view.bounds.size.width, 20)];
    [self.view addSubview:progressView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) changeValue :(NSTimer *) t
{
    if (value++>=10) {
        [t invalidate];
    }
    else
    {
        [progressView setProgress:value/10.0f];
    }
}



- (IBAction)ProviewStartButton:(id)sender {
    [progressView setProgress:0];
    value  = 0;
    [mytimer invalidate];
    mytimer = [NSTimer scheduledTimerWithTimeInterval:0.2f target:self selector:@selector(changeValue:) userInfo:nil repeats:YES];
    
}

@end
