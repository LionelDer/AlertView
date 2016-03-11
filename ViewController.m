//
//  ViewController.m
//  AlertView
//
//  Created by user on 2015/11/14.
//  Copyright (c) 2015年 fu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *AlertViewLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Alertview:(id)sender {
    UIAlertView *alertview1 =[[UIAlertView alloc] initWithTitle:@"上傳資料中"
                                                       message:@"是否繼續上傳？"
                                                      delegate:self
                                             cancelButtonTitle:@"cancel"
                                             otherButtonTitles:@"OK", nil];
    [alertview1 show];
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    switch (buttonIndex) {
        case 0:
            self.AlertViewLabel.text = @"cancel！取消上傳";
            break;
        case 1:
            self.AlertViewLabel.text = @"OK！繼續上傳";
            break;
            
        default:
            break;
    }
}
@end
