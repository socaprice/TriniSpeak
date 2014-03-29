//
//  SMPSendSlangVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-28.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SMPSendSlangVC : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)btnSendSlang:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;

@end
