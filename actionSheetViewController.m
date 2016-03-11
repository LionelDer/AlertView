//
//  actionSheetViewController.m
//  AlertView
//
//  Created by user on 2015/11/14.
//  Copyright (c) 2015年 fu. All rights reserved.
//

#import "actionSheetViewController.h"
@interface actionSheetViewController()

@property (weak, nonatomic) IBOutlet UILabel *actionSheetButton;
    

@end

@implementation actionSheetViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)actionSheetButton:(id)sender {
    UIActionSheet *actionSheet1 = [[UIActionSheet alloc] initWithTitle:@"Hint"
                                                               delegate:self
                                                      cancelButtonTitle:@"cancel"
                                                 destructiveButtonTitle:@"delete file"
                                                      otherButtonTitles:@"more", nil];
    [actionSheet1 showInView:self.view];
}

-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:  //destructiveButtonTitle red
            self.actionSheetButton.text = @"delete file";
            break;
        case 1: //otherButtonTitles
            self.actionSheetButton.text = @"more";
            break;
        case 2: //cancelButtonTitle
            self.actionSheetButton.text = @"取消";
            break;
        default:
            break;
    }
};
@end
