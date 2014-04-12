//
//  SMPParablesDetailsVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-23.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMPParablesVC.h"

@interface SMPParablesDetailsVC : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *txtViewParableDetail;
- (IBAction)btnBack:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;

@property (strong, nonatomic) id detailItem;

- (void)configureView;

@end
