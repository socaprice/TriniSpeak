//
//  SMPOpeningVC.h
//  Trini Speak
//
//  Created by Sylvan Price on 2014-03-23.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMPLetterVC.h"
#import "SMPParablesVC.h"

@interface SMPOpeningVC : UIViewController

@property (strong, nonatomic) NSString *textForLabelCategory;//carries forward name of category chosen
- (IBAction)btnWords:(UIButton *)sender;
- (IBAction)btnPhrases:(UIButton *)sender;
- (IBAction)btnCarnival:(UIButton *)sender;
- (IBAction)btnParables:(UIButton *)sender;

@end