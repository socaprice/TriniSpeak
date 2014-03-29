//
//  SMPSendSlangVC.m
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-28.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPSendSlangVC.h"

@interface SMPSendSlangVC ()

@end

@implementation SMPSendSlangVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSendSlang:(UIButton *)sender {
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc]init];
    [mailController setMailComposeDelegate:self];
    NSString *email = @"socaprice@hotmail.com";
    NSArray *emailArray = [[NSArray alloc]initWithObjects:email, nil];
    [mailController setToRecipients:emailArray];
    [mailController setSubject:@"Suggested Slang"];
    [self presentViewController:mailController animated:YES completion:nil];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnHome:(UIButton *)sender {
}
@end
